package com.living.emo.activity;

import android.content.Intent;
import android.location.Address;
import android.location.Geocoder;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import android.os.Handler;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.Toast;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
import com.clj.fastble.data.BleDevice;
import com.google.gson.Gson;
import com.living.emo.MainActivity;
import com.living.emo.bean.BleBean;
import com.living.emo.blebean.config.CityConfig;
import com.living.emo.blebean.parse.BleNetworkResponseParse;
import com.living.emo.blebean.parse.BleResultParse;
import com.living.emo.blebean.parse.BleTimezoneResponseParse;
import com.living.emo.blebean.response.NetworkResponse;
import com.living.emo.blebean.response.TimeZoneResponse;
import com.living.emo.blebean.util.BleJsonUtil;
import com.living.emo.blebean.util.BleRequestUtil;
import com.living.emo.event.JsonEvent;
import com.living.emo.util.ByteUtil;
import com.living.emo.util.LogUtil;
import com.livingai.emopet.R;
import java.io.PrintStream;
import java.util.List;
import java.util.Locale;
import java.util.regex.Pattern;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
/* loaded from: classes.dex */
public class CityActivity extends BaseActivity {
    public static final int LOCATION_CODE = 301;
    private LocationManager locationManager;
    private BleDevice mBleDevice;
    private String mCity;
    private CityConfig mCityConfig;
    EditText mCityName;
    ImageButton mCitySet;
    private Handler mHandler;
    private ImageButton mLocation;
    ImageButton mNotNow;
    private String locationProvider = null;
    private Runnable timeout = new Runnable() { // from class: com.living.emo.activity.-$$Lambda$CityActivity$THPquHmH3XpdzBKLTXsLdkshNYA
        @Override // java.lang.Runnable
        public final void run() {
            CityActivity.this.lambda$new$3$CityActivity();
        }
    };
    public LocationListener locationListener = new LocationListener() { // from class: com.living.emo.activity.CityActivity.5
        @Override // android.location.LocationListener
        public void onStatusChanged(String str, int i, Bundle bundle) {
            LogUtil.m64e("TAG", "onStatusChanged: " + str + " status:" + i);
        }

        @Override // android.location.LocationListener
        public void onProviderEnabled(String str) {
            LogUtil.m64e("TAG", "onProviderEnabled: " + str);
        }

        @Override // android.location.LocationListener
        public void onProviderDisabled(String str) {
            LogUtil.m64e("TAG", "onProviderDisabled: " + str);
        }

        @Override // android.location.LocationListener
        public void onLocationChanged(Location location) {
            if (location != null) {
                LogUtil.m62v("TAG", "监视地理位置变化-经纬度：" + location.getLongitude() + "   " + location.getLatitude());
                CityActivity.this.getAddress(location);
                return;
            }
            LogUtil.m64e("TAG", "onLocationChanged: null");
        }
    };

    @Override // com.living.emo.activity.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_city);
        EventBus.getDefault().register(this);
        initView();
        initData();
        initEvent();
    }

    private void initEvent() {
        this.mNotNow.setOnClickListener(new View.OnClickListener() { // from class: com.living.emo.activity.-$$Lambda$CityActivity$1_kCa0BTuMzWJhibcDznxXNL42E
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CityActivity.this.lambda$initEvent$0$CityActivity(view);
            }
        });
        this.mLocation.setOnClickListener(new View.OnClickListener() { // from class: com.living.emo.activity.-$$Lambda$CityActivity$TNOTH0G66OW4cq8UZgb-frbnDzE
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CityActivity.this.lambda$initEvent$1$CityActivity(view);
            }
        });
        this.mCitySet.setOnClickListener(new View.OnClickListener() { // from class: com.living.emo.activity.-$$Lambda$CityActivity$DHd_wus1-_RAHXP6joCeR5FVNiE
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CityActivity.this.lambda$initEvent$2$CityActivity(view);
            }
        });
        this.mCityName.addTextChangedListener(new TextWatcher() { // from class: com.living.emo.activity.CityActivity.1
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                String obj = CityActivity.this.mCityName.getText().toString();
                String replaceAll = Pattern.compile("[^a-zA-Z ]").matcher(obj).replaceAll("");
                PrintStream printStream = System.out;
                printStream.println("str::" + replaceAll.length());
                if (!obj.equals(replaceAll)) {
                    CityActivity cityActivity = CityActivity.this;
                    cityActivity.showToast(cityActivity.getString(R.string.enter_english));
                    CityActivity.this.mCityName.setText(replaceAll);
                    CityActivity.this.mCityName.setSelection(replaceAll.length());
                }
            }
        });
    }

    public /* synthetic */ void lambda$initEvent$0$CityActivity(View view) {
        goToActivity(MainActivity.class);
    }

    public /* synthetic */ void lambda$initEvent$1$CityActivity(View view) {
        this.mLocation.setEnabled(false);
        getLocation();
    }

    public /* synthetic */ void lambda$initEvent$2$CityActivity(View view) {
        this.mCitySet.setEnabled(false);
        String obj = this.mCityName.getText().toString();
        if (obj.equals("")) {
            Toast.makeText(this, "city is require", 0).show();
            this.mCitySet.setEnabled(true);
        } else if (this.mCity != null) {
            CityConfig cityConfig = (CityConfig) new Gson().fromJson(this.mCity, (Class<Object>) CityConfig.class);
            if (cityConfig.getData() != null) {
                cityConfig.getData().setName(obj);
            }
            String json = new Gson().toJson(cityConfig);
            LogUtil.m65d("cityActivity", "app->emo ble data json :" + json);
            write(this.mBleDevice, ByteUtil.strToByteArray(json));
        } else {
            write(this.mBleDevice, ByteUtil.strToByteArray(BleJsonUtil.setCityName(obj)));
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onMessageEvent(JsonEvent jsonEvent) {
        String json = jsonEvent.getJson();
        LogUtil.m63i("JsonEvent:city", "emo->app ble data:" + json);
        BleResultParse.city(json, new BleResultParse.Callback() { // from class: com.living.emo.activity.CityActivity.2
            @Override // com.living.emo.blebean.parse.BleResultParse.Callback
            public void success() {
                byte[] timezone = BleRequestUtil.timezone();
                CityActivity cityActivity = CityActivity.this;
                cityActivity.write(cityActivity.mBleDevice, timezone);
                CityActivity.this.showToast("City set up successfully");
            }

            @Override // com.living.emo.blebean.parse.BleResultParse.Callback
            public void fail() {
                CityActivity.this.mCitySet.setEnabled(true);
                CityActivity.this.showToast("City setting failed, please reset");
            }
        });
        BleTimezoneResponseParse.timezone(json, new BleTimezoneResponseParse.Callback() { // from class: com.living.emo.activity.CityActivity.3
            @Override // com.living.emo.blebean.parse.BleTimezoneResponseParse.Callback
            public void response(TimeZoneResponse.DataBean.TimezoneBean timezoneBean) {
                if (timezoneBean.getName().equals("")) {
                    CityActivity.this.goToActivity(TimezoneActivity.class);
                    return;
                }
                byte[] network = BleRequestUtil.network();
                CityActivity cityActivity = CityActivity.this;
                cityActivity.write(cityActivity.mBleDevice, network);
            }
        });
        BleNetworkResponseParse.network(json, new BleNetworkResponseParse.Callback() { // from class: com.living.emo.activity.CityActivity.4
            @Override // com.living.emo.blebean.parse.BleNetworkResponseParse.Callback
            public void response(NetworkResponse.DataBean.NetworkBean networkBean) {
                if (networkBean.getConnected() == 1) {
                    CityActivity.this.goToActivity(MainActivity.class);
                } else {
                    CityActivity.this.goToActivity(WifiActivity.class);
                }
            }
        });
    }

    public void goToActivity(Class cls) {
        startActivity(new Intent(this, cls));
        finish();
    }

    private void initData() {
        this.mBleDevice = BleBean.getInstance().getBleDevice();
    }

    private void checkPermission() {
        if (ContextCompat.checkSelfPermission(this, "android.permission.ACCESS_FINE_LOCATION") != 0 || ActivityCompat.checkSelfPermission(this, "android.permission.ACCESS_COARSE_LOCATION") != 0) {
            ActivityCompat.requestPermissions(this, new String[]{"android.permission.ACCESS_FINE_LOCATION", "android.permission.ACCESS_COARSE_LOCATION"}, 301);
        }
    }

    private void getLocation() {
        checkPermission();
        changeJvmLanguage();
        LocationManager locationManager = (LocationManager) getSystemService("location");
        this.locationManager = locationManager;
        List<String> providers = locationManager.getProviders(true);
        if (providers.contains("network")) {
            this.locationProvider = "network";
            LogUtil.m62v("TAG", "定位方式Network");
        } else if (providers.contains("gps")) {
            this.locationProvider = "gps";
            LogUtil.m62v("TAG", "定位方式GPS_PROVIDER");
        } else {
            Toast.makeText(this, "No location providers are available", 0).show();
            finish();
            return;
        }
        Location lastKnownLocation = this.locationManager.getLastKnownLocation(this.locationProvider);
        if (lastKnownLocation != null) {
            LogUtil.m62v("TAG", "获取上次的位置-经纬度：" + lastKnownLocation.getLongitude() + "   " + lastKnownLocation.getLatitude());
            getAddress(lastKnownLocation);
        } else {
            LogUtil.m62v("TAG", "getLocation: ");
            this.locationManager.requestLocationUpdates(this.locationProvider, 3000L, 1.0f, this.locationListener);
        }
        Handler handler = new Handler();
        this.mHandler = handler;
        handler.postDelayed(this.timeout, 3000L);
    }

    public /* synthetic */ void lambda$new$3$CityActivity() {
        this.mLocation.setEnabled(true);
        showToast(getString(R.string.Location_failed));
    }

    private void changeJvmLanguage() {
        Locale.setDefault(Locale.US);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity, androidx.core.app.ActivityCompat.OnRequestPermissionsResultCallback
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        if (i == 301) {
            if (iArr.length > 0 && iArr[0] == 0 && iArr[1] == 0) {
                getLocation();
                return;
            }
            Toast.makeText(this, "No permission", 1).show();
            finish();
        }
    }

    private void initView() {
        this.mCityName = (EditText) findViewById(R.id.city_name_set);
        this.mNotNow = (ImageButton) findViewById(R.id.city_not_now);
        this.mCitySet = (ImageButton) findViewById(R.id.city_set);
        this.mLocation = (ImageButton) findViewById(R.id.city_add_location);
    }

    public void getAddress(final Location location) {
        new Thread(new Runnable() { // from class: com.living.emo.activity.-$$Lambda$CityActivity$ROkpiyaSwnvQcWFNy4fAvc3LIec
            @Override // java.lang.Runnable
            public final void run() {
                CityActivity.this.lambda$getAddress$6$CityActivity(location);
            }
        }).start();
    }

    public /* synthetic */ void lambda$getAddress$6$CityActivity(Location location) {
        if (location != null) {
            try {
                List<Address> fromLocation = new Geocoder(this, Locale.getDefault()).getFromLocation(location.getLatitude(), location.getLongitude(), 1);
                LogUtil.m63i("city", "getAddress" + fromLocation.toString());
                final String locality = fromLocation.get(0).getLocality();
                if (Pattern.matches("[a-zA-Z ]+", locality)) {
                    this.mCity = BleJsonUtil.city(fromLocation);
                    runOnUiThread(new Runnable() { // from class: com.living.emo.activity.-$$Lambda$CityActivity$bOKcUwBfSE4ZB0dzXFnpTQBoW0M
                        @Override // java.lang.Runnable
                        public final void run() {
                            CityActivity.this.lambda$null$4$CityActivity(locality);
                        }
                    });
                }
            } catch (Exception e) {
                e.printStackTrace();
                runOnUiThread(new Runnable() { // from class: com.living.emo.activity.-$$Lambda$CityActivity$qa1GayK9OywN_naZQgDmLKubkao
                    @Override // java.lang.Runnable
                    public final void run() {
                        CityActivity.this.lambda$null$5$CityActivity();
                    }
                });
            }
        }
    }

    public /* synthetic */ void lambda$null$4$CityActivity(String str) {
        this.locationManager.removeUpdates(this.locationListener);
        this.mHandler.removeCallbacks(this.timeout);
        this.mLocation.setEnabled(true);
        this.mCityName.setText(str);
    }

    public /* synthetic */ void lambda$null$5$CityActivity() {
        this.mLocation.setEnabled(true);
    }

    @Override // com.living.emo.activity.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        EventBus.getDefault().unregister(this);
    }
}
