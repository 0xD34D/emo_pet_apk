package com.living.emo.fragment;

import android.location.Address;
import android.location.Geocoder;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import android.os.Handler;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.RelativeLayout;
import android.widget.Toast;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
import butterknife.BindView;
import com.clj.fastble.data.BleDevice;
import com.google.gson.Gson;
import com.living.emo.activity.SettingActivity;
import com.living.emo.bean.BleBean;
import com.living.emo.blebean.config.CityConfig;
import com.living.emo.blebean.parse.BleCityResponseParse;
import com.living.emo.blebean.parse.BleResultParse;
import com.living.emo.blebean.response.CityResponse;
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
public class CitySettingFragment extends AbstractBaseFragment {
    public static final int LOCATION_CODE = 301;
    private static final String TAG = "zxl::" + CitySettingFragment.class.getSimpleName();
    private LocationManager locationManager;
    private BleDevice mBleDevice;
    private String mCity;
    @BindView(R.id.setting_city_container)
    RelativeLayout mCityContainer;
    EditText mCityName;
    private Handler mHandler;
    private View mLoadCityEditView;
    private View mLoadCityLoadingView;
    private ImageButton mLocation;
    private ImageButton mSetSetting;
    private SettingActivity mSettingActivity;
    private String locationProvider = null;
    private Runnable timeout = new Runnable() { // from class: com.living.emo.fragment.-$$Lambda$CitySettingFragment$nkpANU6IpvouIpzYL_i0oNLeJmM
        @Override // java.lang.Runnable
        public final void run() {
            CitySettingFragment.this.lambda$new$0$CitySettingFragment();
        }
    };
    private State currState = State.LOADING;
    public LocationListener locationListener = new LocationListener() { // from class: com.living.emo.fragment.CitySettingFragment.4
        @Override // android.location.LocationListener
        public void onProviderDisabled(String str) {
        }

        @Override // android.location.LocationListener
        public void onProviderEnabled(String str) {
        }

        @Override // android.location.LocationListener
        public void onStatusChanged(String str, int i, Bundle bundle) {
        }

        @Override // android.location.LocationListener
        public void onLocationChanged(Location location) {
            LogUtil.m64e(CitySettingFragment.TAG, "onLocationChanged: lofffffffffffff");
            if (location != null) {
                LogUtil.m62v("TAG", "监视地理位置变化-经纬度：" + location.getLongitude() + "   " + location.getLatitude());
                CitySettingFragment.this.getAddress(location);
            }
        }
    };

    /* loaded from: classes.dex */
    public enum State {
        LOADING,
        EDIT
    }

    @Override // com.living.emo.fragment.AbstractBaseFragment
    protected int loadRootViewResId() {
        return R.layout.fragment_city_setting;
    }

    public /* synthetic */ void lambda$new$0$CitySettingFragment() {
        this.mLocation.setEnabled(true);
        ((SettingActivity) requireActivity()).showToast(getString(R.string.Location_failed));
    }

    @Override // com.living.emo.fragment.AbstractBaseFragment
    protected void loadStateView(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        View loadCityLoadingView = loadCityLoadingView(layoutInflater, viewGroup);
        this.mLoadCityLoadingView = loadCityLoadingView;
        this.mCityContainer.addView(loadCityLoadingView);
        View loadCityEditView = loadCityEditView(layoutInflater, viewGroup);
        this.mLoadCityEditView = loadCityEditView;
        this.mCityContainer.addView(loadCityEditView);
    }

    private View loadCityEditView(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        return layoutInflater.inflate(R.layout.fragment_edit_city_setting, viewGroup, false);
    }

    private View loadCityLoadingView(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        return layoutInflater.inflate(R.layout.fragment_loading_setting, viewGroup, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void changeStateView(State state) {
        this.currState = state;
        int i = 0;
        this.mLoadCityLoadingView.setVisibility(state == State.LOADING ? 0 : 8);
        View view = this.mLoadCityEditView;
        if (this.currState != State.EDIT) {
            i = 8;
        }
        view.setVisibility(i);
    }

    @Override // com.living.emo.fragment.AbstractBaseFragment
    void initView() {
        EventBus.getDefault().register(this);
        this.mCityName = (EditText) this.mLoadCityEditView.findViewById(R.id.city_name_setting);
        this.mSetSetting = (ImageButton) this.mLoadCityEditView.findViewById(R.id.city_set_setting);
        this.mLocation = (ImageButton) this.mLoadCityEditView.findViewById(R.id.city_add_location);
        changeStateView(State.LOADING);
    }

    @Override // com.living.emo.fragment.AbstractBaseFragment
    protected void initEvent() {
        this.mSetSetting.setOnClickListener(new View.OnClickListener() { // from class: com.living.emo.fragment.-$$Lambda$CitySettingFragment$gc_bO8WRtn3xSMV1AEu-mZokxt4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CitySettingFragment.this.lambda$initEvent$1$CitySettingFragment(view);
            }
        });
        this.mCityName.addTextChangedListener(new TextWatcher() { // from class: com.living.emo.fragment.CitySettingFragment.1
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                String obj = CitySettingFragment.this.mCityName.getText().toString();
                String replaceAll = Pattern.compile("[^a-zA-Z ]").matcher(obj).replaceAll("");
                PrintStream printStream = System.out;
                printStream.println("str::" + replaceAll.length());
                if (!obj.equals(replaceAll)) {
                    Toast.makeText(CitySettingFragment.this.requireContext(), CitySettingFragment.this.getString(R.string.enter_english), 0).show();
                    CitySettingFragment.this.mCityName.setText(replaceAll);
                    CitySettingFragment.this.mCityName.setSelection(replaceAll.length());
                }
            }
        });
        this.mLocation.setOnClickListener(new View.OnClickListener() { // from class: com.living.emo.fragment.-$$Lambda$CitySettingFragment$FdaaHzW4-JsR4HD-QdUFKqLHPDA
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CitySettingFragment.this.lambda$initEvent$2$CitySettingFragment(view);
            }
        });
    }

    public /* synthetic */ void lambda$initEvent$1$CitySettingFragment(View view) {
        this.mSetSetting.setEnabled(false);
        String obj = this.mCityName.getText().toString();
        String str = TAG;
        LogUtil.m64e(str, "initEvent: " + obj);
        if (TextUtils.isEmpty(obj)) {
            Toast.makeText(getContext(), "city is required", 0).show();
            this.mSetSetting.setEnabled(true);
        } else if (this.mCity != null) {
            CityConfig cityConfig = (CityConfig) new Gson().fromJson(this.mCity, (Class<Object>) CityConfig.class);
            if (cityConfig.getData() != null) {
                cityConfig.getData().setName(obj);
            }
            String json = new Gson().toJson(cityConfig);
            LogUtil.m65d("cityActivity", "app->emo ble data json :" + json);
            this.mSettingActivity.write(this.mBleDevice, ByteUtil.strToByteArray(json));
            changeStateView(State.LOADING);
        } else {
            this.mSettingActivity.write(this.mBleDevice, ByteUtil.strToByteArray(BleJsonUtil.setCityName(obj)));
        }
    }

    public /* synthetic */ void lambda$initEvent$2$CitySettingFragment(View view) {
        this.mLocation.setEnabled(false);
        getLocation();
    }

    @Override // com.living.emo.fragment.AbstractBaseFragment
    void initData() {
        this.mSettingActivity = (SettingActivity) requireActivity();
        this.mBleDevice = BleBean.getInstance().getBleDevice();
        this.mSettingActivity.write(this.mBleDevice, BleRequestUtil.city());
    }

    private void checkPermission() {
        if (ContextCompat.checkSelfPermission(this.mSettingActivity, "android.permission.ACCESS_FINE_LOCATION") != 0 || ActivityCompat.checkSelfPermission(this.mSettingActivity, "android.permission.ACCESS_COARSE_LOCATION") != 0) {
            ActivityCompat.requestPermissions(this.mSettingActivity, new String[]{"android.permission.ACCESS_FINE_LOCATION", "android.permission.ACCESS_COARSE_LOCATION"}, 301);
        }
    }

    private void changeJvmLanguage() {
        Locale.setDefault(Locale.US);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onMessageEvent(JsonEvent jsonEvent) {
        String json = jsonEvent.getJson();
        LogUtil.m63i("JsonEvent:CitySettingFragment", "emo->app ble json data:" + json);
        BleCityResponseParse.city(json, new BleCityResponseParse.Callback() { // from class: com.living.emo.fragment.CitySettingFragment.2
            @Override // com.living.emo.blebean.parse.BleCityResponseParse.Callback
            public void response(CityResponse.DataBean.CityBean cityBean) {
                CitySettingFragment.this.mCityName.setText(cityBean.getName());
                CitySettingFragment.this.changeStateView(State.EDIT);
            }
        });
        BleResultParse.city(json, new BleResultParse.Callback() { // from class: com.living.emo.fragment.CitySettingFragment.3
            @Override // com.living.emo.blebean.parse.BleResultParse.Callback
            public void success() {
                CitySettingFragment.this.changeStateView(State.EDIT);
                CitySettingFragment.this.mSetSetting.setEnabled(true);
                Toast.makeText(CitySettingFragment.this.mSettingActivity, "City set up successfully", 0).show();
            }

            @Override // com.living.emo.blebean.parse.BleResultParse.Callback
            public void fail() {
                CitySettingFragment.this.changeStateView(State.EDIT);
                CitySettingFragment.this.mSetSetting.setEnabled(true);
                Toast.makeText(CitySettingFragment.this.mSettingActivity, "City setting failed, please reset", 0).show();
            }
        });
    }

    private void getLocation() {
        checkPermission();
        changeJvmLanguage();
        LocationManager locationManager = (LocationManager) this.mSettingActivity.getSystemService("location");
        this.locationManager = locationManager;
        List<String> providers = locationManager.getProviders(true);
        if (providers.contains("gps")) {
            this.locationProvider = "gps";
            LogUtil.m62v("TAG", "定位方式GPS_PROVIDER");
        } else if (providers.contains("network")) {
            this.locationProvider = "network";
            LogUtil.m62v("TAG", "定位方式Network");
        } else {
            Toast.makeText(this.mSettingActivity, "No location providers are available", 0).show();
            this.mSettingActivity.finish();
            return;
        }
        Location lastKnownLocation = this.locationManager.getLastKnownLocation(this.locationProvider);
        if (lastKnownLocation != null) {
            LogUtil.m62v("TAG", "获取上次的位置-经纬度：" + lastKnownLocation.getLongitude() + "   " + lastKnownLocation.getLatitude());
            getAddress(lastKnownLocation);
        } else {
            this.locationManager.requestLocationUpdates(this.locationProvider, 3000L, 1.0f, this.locationListener);
        }
        Handler handler = new Handler();
        this.mHandler = handler;
        handler.postDelayed(this.timeout, 3000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void getAddress(final Location location) {
        this.mLocation.setEnabled(true);
        new Thread(new Runnable() { // from class: com.living.emo.fragment.-$$Lambda$CitySettingFragment$tnk515kzLsUW-bl4coe4xhmsyE8
            @Override // java.lang.Runnable
            public final void run() {
                CitySettingFragment.this.lambda$getAddress$5$CitySettingFragment(location);
            }
        }).start();
    }

    public /* synthetic */ void lambda$getAddress$5$CitySettingFragment(Location location) {
        if (location != null) {
            try {
                List<Address> fromLocation = new Geocoder(this.mSettingActivity, Locale.getDefault()).getFromLocation(location.getLatitude(), location.getLongitude(), 1);
                Address address = fromLocation.get(0);
                LogUtil.m63i("city", "getAddress" + fromLocation.toString());
                LogUtil.m63i("city", "getAddress" + address.toString());
                final String locality = address.getLocality();
                if (Pattern.matches("[a-zA-Z ]+", locality)) {
                    this.mCity = BleJsonUtil.city(fromLocation);
                    requireActivity().runOnUiThread(new Runnable() { // from class: com.living.emo.fragment.-$$Lambda$CitySettingFragment$ETYQy1HAOYcUhYiImkJ7g7ElBoU
                        @Override // java.lang.Runnable
                        public final void run() {
                            CitySettingFragment.this.lambda$null$3$CitySettingFragment(locality);
                        }
                    });
                }
            } catch (Exception e) {
                e.printStackTrace();
                requireActivity().runOnUiThread(new Runnable() { // from class: com.living.emo.fragment.-$$Lambda$CitySettingFragment$TALw6oi4gUMCOYA3QyFXeE5SXlc
                    @Override // java.lang.Runnable
                    public final void run() {
                        CitySettingFragment.this.lambda$null$4$CitySettingFragment();
                    }
                });
            }
        }
    }

    public /* synthetic */ void lambda$null$3$CitySettingFragment(String str) {
        this.locationManager.removeUpdates(this.locationListener);
        this.mHandler.removeCallbacks(this.timeout);
        this.mCityName.setText(str);
        changeStateView(State.EDIT);
    }

    public /* synthetic */ void lambda$null$4$CitySettingFragment() {
        changeStateView(State.EDIT);
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        EventBus.getDefault().unregister(this);
    }
}
