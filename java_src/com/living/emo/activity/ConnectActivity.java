package com.living.emo.activity;

import android.app.AlertDialog;
import android.bluetooth.BluetoothGatt;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.drawable.AnimationDrawable;
import android.location.LocationManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
import com.clj.fastble.BleManager;
import com.clj.fastble.callback.BleGattCallback;
import com.clj.fastble.callback.BleScanCallback;
import com.clj.fastble.data.BleDevice;
import com.clj.fastble.exception.BleException;
import com.clj.fastble.scan.BleScanRuleConfig;
import com.living.emo.MainActivity;
import com.living.emo.bean.BleBean;
import com.living.emo.bean.EmoUpdate;
import com.living.emo.blebean.parse.BleCityResponseParse;
import com.living.emo.blebean.parse.BleNetworkResponseParse;
import com.living.emo.blebean.parse.BleTimezoneResponseParse;
import com.living.emo.blebean.parse.BleVersionResponseParse;
import com.living.emo.blebean.response.CityResponse;
import com.living.emo.blebean.response.NetworkResponse;
import com.living.emo.blebean.response.TimeZoneResponse;
import com.living.emo.blebean.response.VersionResponse;
import com.living.emo.blebean.util.BleRequestUtil;
import com.living.emo.event.JsonEvent;
import com.living.emo.model.Constants;
import com.living.emo.util.ActivityCollector;
import com.living.emo.util.ByteUtil;
import com.living.emo.util.LogUtil;
import com.living.emo.util.MusicPlayerUtil;
import com.living.emo.view.BleDeviceWindow;
import com.livingai.emopet.R;
import com.youth.banner.util.BannerUtils;
import java.util.ArrayList;
import java.util.List;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
/* loaded from: classes.dex */
public class ConnectActivity extends BaseActivity {
    private static final int DEVICE_DEFAULT_INDEX = 0;
    private static final int REQUEST_CODE_OPEN_GPS = 1;
    private static final int REQUEST_CODE_PERMISSION_LOCATION = 12;
    private static final String TAG = "zxl::" + ConnectActivity.class.getSimpleName();
    private AnimationDrawable mAnim;
    private RelativeLayout mAnimBox;
    private BleDevice mBleDevice;
    private BleDeviceWindow mBleDeviceWindow;
    private BleManager mBleManger;
    private TextView mBleName;
    private ImageButton mCancelBtn;
    private ImageButton mConnectBtn;
    private SharedPreferences.Editor mEdit;
    private RelativeLayout mEmoBox;
    private TextView mFindEmo;
    private ImageView mFindOrFound;
    private Handler mHandler;
    private ImageView mListBtn;
    private View mListShade;
    private String[] mScanName;
    private ImageView mScanTips;
    private SharedPreferences mSharedPreferences;
    private RelativeLayout mTxtBox;
    private ImageView mTxtIv;
    private ArrayList<BleDevice> mBleDeviceList = new ArrayList<>();
    private boolean isConnected = false;
    private boolean isOpenNotify = false;

    @Override // com.living.emo.activity.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_connect);
        ActivityCollector.removeActivity(this);
        ActivityCollector.finishAll();
        this.mHandler = new Handler();
        initBle();
        initPreferences();
        initWindow();
        initViews();
        initEvents();
        EventBus.getDefault().register(this);
    }

    private void initWindow() {
        BleDeviceWindow bleDeviceWindow = new BleDeviceWindow();
        this.mBleDeviceWindow = bleDeviceWindow;
        bleDeviceWindow.setOnWindowListener(new BleDeviceWindow.OnWindowListener() { // from class: com.living.emo.activity.ConnectActivity.1
            @Override // com.living.emo.view.BleDeviceWindow.OnWindowListener
            public void click(BleDevice bleDevice) {
                ConnectActivity.this.mBleDevice = bleDevice;
                ConnectActivity.this.mBleName.setText(bleDevice.getName());
                ConnectActivity.this.mBleDeviceWindow.dismiss();
            }

            @Override // com.living.emo.view.BleDeviceWindow.OnWindowListener
            public void refresh() {
                if (ConnectActivity.this.isOpenNotify) {
                    ConnectActivity.this.mBleManger.stopNotify(ConnectActivity.this.mBleDevice, Constants.SERVICE_UUID, "0000ffe1-0000-1000-8000-00805f9b34fb");
                    ConnectActivity.this.isOpenNotify = false;
                }
                ConnectActivity.this.mEdit.putString(Constants.SHARE_BLE_KEY, "");
                ConnectActivity.this.mEdit.apply();
                ConnectActivity.this.mBleManger.disconnectAllDevice();
                ConnectActivity.this.mBleManger.destroy();
                ConnectActivity.this.mTxtBox.setBackgroundResource(R.drawable.connect_pic_txt_bg1);
                ConnectActivity.this.mTxtIv.setBackgroundResource(R.drawable.connect_txt_find);
                ConnectActivity.this.mEmoBox.setVisibility(8);
                ConnectActivity.this.mListBtn.setVisibility(8);
                ConnectActivity.this.updateFindingUi();
                ConnectActivity.this.searchEmo();
                ConnectActivity.this.mBleDeviceWindow.dismiss();
                ConnectActivity.this.isConnected = false;
            }
        });
    }

    private void initPreferences() {
        SharedPreferences sharedPreferences = getSharedPreferences(Constants.SHARE_BLUE_DEVICE, 0);
        this.mSharedPreferences = sharedPreferences;
        this.mEdit = sharedPreferences.edit();
    }

    private void initEvents() {
        this.mListShade.setOnClickListener(new View.OnClickListener() { // from class: com.living.emo.activity.-$$Lambda$ConnectActivity$e9y9sUQbCqIXTkdq_3U3aCGi4Vc
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ConnectActivity.this.lambda$initEvents$0$ConnectActivity(view);
            }
        });
        this.mConnectBtn.setOnClickListener(new View.OnClickListener() { // from class: com.living.emo.activity.-$$Lambda$ConnectActivity$ZpQJEo1lSrKadYS6FQvkl-4ZjI8
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ConnectActivity.this.lambda$initEvents$1$ConnectActivity(view);
            }
        });
        this.mCancelBtn.setOnClickListener(new View.OnClickListener() { // from class: com.living.emo.activity.-$$Lambda$ConnectActivity$2Jlm3mqs_0DmyfNwGqobisjd8XQ
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ConnectActivity.this.lambda$initEvents$2$ConnectActivity(view);
            }
        });
    }

    public /* synthetic */ void lambda$initEvents$0$ConnectActivity(View view) {
        LogUtil.m65d(TAG, "initEvents: ");
        this.mBleDeviceWindow.showAtLocation(view, 5, (int) BannerUtils.dp2px(5.0f), 0);
    }

    public /* synthetic */ void lambda$initEvents$1$ConnectActivity(View view) {
        if (this.mBleDevice != null) {
            this.mTxtIv.setBackgroundResource(R.drawable.connect_txt_connect);
            this.mAnimBox.setVisibility(0);
            this.mEmoBox.setVisibility(8);
            connect(this.mBleDevice);
        }
    }

    public /* synthetic */ void lambda$initEvents$2$ConnectActivity(View view) {
        this.mEdit.putString(Constants.SHARE_BLE_KEY, "");
        this.mEdit.apply();
        BleManager bleManager = this.mBleManger;
        if (bleManager != null) {
            bleManager.destroy();
            this.mBleManger.cancelScan();
        }
        updateFindingUi();
        searchEmo();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        if (this.mBleManger.isBlueEnable()) {
            checkPermission();
        }
    }

    private void initViews() {
        this.mFindOrFound = (ImageView) findViewById(R.id.connect_find_found_anim);
        this.mListBtn = (ImageView) findViewById(R.id.connect_ble_list_btn);
        this.mListShade = findViewById(R.id.connect_ble_list_btn_shade);
        this.mTxtBox = (RelativeLayout) findViewById(R.id.connect_txt_bg);
        this.mEmoBox = (RelativeLayout) findViewById(R.id.connect_found_emo_container);
        this.mAnimBox = (RelativeLayout) findViewById(R.id.connect_link_anim_container);
        this.mTxtIv = (ImageView) findViewById(R.id.connect_txt_iv);
        this.mScanTips = (ImageView) findViewById(R.id.connect_scan_tips);
        this.mBleName = (TextView) findViewById(R.id.connect_ble_name_tv);
        this.mFindEmo = (TextView) findViewById(R.id.connect_txt_tv);
        this.mConnectBtn = (ImageButton) findViewById(R.id.connect_btn_connect_ib);
        this.mCancelBtn = (ImageButton) findViewById(R.id.connect_cancel_btn);
        AnimationDrawable animationDrawable = (AnimationDrawable) this.mFindOrFound.getBackground();
        this.mAnim = animationDrawable;
        animationDrawable.start();
        updateFindingUi();
    }

    public void updateFindingUi() {
        String string = this.mSharedPreferences.getString(Constants.SHARE_BLE_KEY, "");
        if (TextUtils.isEmpty(string)) {
            this.mTxtIv.setVisibility(0);
            this.mAnimBox.setVisibility(0);
            this.mScanTips.setVisibility(0);
            this.mFindEmo.setVisibility(8);
            this.mCancelBtn.setVisibility(8);
            return;
        }
        LogUtil.m65d(TAG, "updateFindingUi: ");
        this.mTxtIv.setVisibility(8);
        this.mScanTips.setVisibility(8);
        this.mAnimBox.setVisibility(0);
        this.mFindEmo.setVisibility(0);
        TextView textView = this.mFindEmo;
        textView.setText("Finding  " + string);
        this.mCancelBtn.setVisibility(0);
    }

    private void initBle() {
        BleManager instance = BleManager.getInstance();
        this.mBleManger = instance;
        instance.init(getApplication());
        if (!this.mBleManger.isSupportBle()) {
            new AlertDialog.Builder(this).setTitle(R.string.notifyTitle).setMessage(R.string.is_suppot_ble).setPositiveButton(R.string.ok, new DialogInterface.OnClickListener() { // from class: com.living.emo.activity.ConnectActivity.2
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    ConnectActivity.this.finish();
                }
            }).show();
        }
        this.mBleManger.enableLog(false).setSplitWriteNum(20).setReConnectCount(3, 2000L).setConnectOverTime(10000L).setOperateTimeout(5000);
        if (!this.mBleManger.isBlueEnable()) {
            this.mBleManger.enableBluetooth();
        }
    }

    private void setScanRule() {
        String string = this.mSharedPreferences.getString(Constants.SHARE_BLE_KEY, "");
        if (TextUtils.isEmpty(string)) {
            this.mScanName = Constants.BLE_NAME;
        } else {
            this.mScanName = new String[]{string};
        }
        this.mBleManger.initScanRule(new BleScanRuleConfig.Builder().setDeviceName(true, this.mScanName).setScanTimeOut(5000L).build());
    }

    public void searchEmo() {
        setScanRule();
        startScan();
    }

    public void foundUpdateUi() {
        if (TextUtils.isEmpty(this.mSharedPreferences.getString(Constants.SHARE_BLE_KEY, ""))) {
            this.mAnimBox.setVisibility(8);
            this.mScanTips.setVisibility(8);
        } else {
            this.mAnimBox.setVisibility(8);
            this.mCancelBtn.setVisibility(8);
            this.mFindEmo.setVisibility(8);
            this.mCancelBtn.setVisibility(8);
        }
        this.mListBtn.setVisibility(0);
        this.mTxtIv.setVisibility(0);
        this.mTxtIv.setBackgroundResource(R.drawable.connect_txt_found);
        this.mTxtBox.setBackgroundResource(R.drawable.connect_pic_txt_bg);
        this.mEmoBox.setVisibility(0);
        this.mBleName.setText(this.mBleDevice.getName());
    }

    private void startScan() {
        this.mBleManger.scan(new BleScanCallback() { // from class: com.living.emo.activity.ConnectActivity.3
            @Override // com.clj.fastble.callback.BleScanPresenterImp
            public void onScanStarted(boolean z) {
            }

            @Override // com.clj.fastble.callback.BleScanCallback
            public void onScanFinished(List<BleDevice> list) {
                LogUtil.m64e(ConnectActivity.TAG, "onScanFinished: ");
                if (list.isEmpty()) {
                    ConnectActivity.this.searchEmo();
                    return;
                }
                ConnectActivity.this.mBleDevice = list.get(0);
                ConnectActivity.this.mBleDeviceList.clear();
                ConnectActivity.this.mBleDeviceList.addAll(list);
                ConnectActivity.this.mBleDeviceWindow.setData(ConnectActivity.this.mBleDeviceList);
                ConnectActivity.this.foundUpdateUi();
            }

            @Override // com.clj.fastble.callback.BleScanPresenterImp
            public void onScanning(BleDevice bleDevice) {
                String str = ConnectActivity.TAG;
                LogUtil.m64e(str, "onScanning: " + bleDevice.getName() + "mac" + bleDevice.getMac());
                String string = ConnectActivity.this.mSharedPreferences.getString(Constants.SHARE_BLE_KEY, "");
                if (!TextUtils.isEmpty(string) && string.equals(bleDevice.getName())) {
                    ConnectActivity.this.mBleDevice = bleDevice;
                    ConnectActivity.this.foundUpdateUi();
                    ConnectActivity.this.mBleManger.cancelScan();
                    LogUtil.m64e(ConnectActivity.TAG, "onScanning: ");
                }
            }
        });
    }

    public void connect(BleDevice bleDevice) {
        this.mBleManger.connect(bleDevice, new BleGattCallback() { // from class: com.living.emo.activity.ConnectActivity.4
            @Override // com.clj.fastble.callback.BleGattCallback
            public void onStartConnect() {
                LogUtil.m65d(ConnectActivity.TAG, "onStartConnect: ");
            }

            @Override // com.clj.fastble.callback.BleGattCallback
            public void onConnectFail(BleDevice bleDevice2, BleException bleException) {
                LogUtil.m64e(ConnectActivity.TAG, "onConnectFail: ");
                LogUtil.m64e(ConnectActivity.TAG, bleException.getDescription());
                String str = ConnectActivity.TAG;
                LogUtil.m64e(str, bleException.getCode() + "");
                BleManager.getInstance().destroy();
                ConnectActivity.this.connect(bleDevice2);
            }

            @Override // com.clj.fastble.callback.BleGattCallback
            public void onConnectSuccess(BleDevice bleDevice2, BluetoothGatt bluetoothGatt, int i) {
                LogUtil.m64e("ble_mac", "ble_mac:" + bleDevice2.getMac());
                ConnectActivity.this.mBleDevice = bleDevice2;
                BleBean.getInstance().setBleDevice(bleDevice2);
                if (!ConnectActivity.this.isConnected) {
                    ConnectActivity.this.sendConfig();
                    return;
                }
                ConnectActivity connectActivity = ConnectActivity.this;
                connectActivity.showToast(ConnectActivity.this.mBleDevice.getName() + "Reconnection successful");
            }

            @Override // com.clj.fastble.callback.BleGattCallback
            public void onDisConnected(boolean z, BleDevice bleDevice2, BluetoothGatt bluetoothGatt, int i) {
                LogUtil.m64e("onDisConnected", "emo is DisConnected");
                MusicPlayerUtil.getInstance(ConnectActivity.this).end();
                ConnectActivity.this.dropOut();
                ConnectActivity.this.startActivity(new Intent(ConnectActivity.this, ConnectActivity.class));
            }
        });
    }

    public void sendConfig() {
        if (!this.isOpenNotify) {
            initNotify(this.mBleDevice);
            this.isOpenNotify = true;
        }
        this.mHandler.postDelayed(new Runnable() { // from class: com.living.emo.activity.-$$Lambda$ConnectActivity$bYTB08qXAdWAWigf_tPJZ5TkNgA
            @Override // java.lang.Runnable
            public final void run() {
                ConnectActivity.this.lambda$sendConfig$3$ConnectActivity();
            }
        }, 1000L);
    }

    public /* synthetic */ void lambda$sendConfig$3$ConnectActivity() {
        write(this.mBleDevice, ByteUtil.strToByteArray(BleRequestUtil.request(1, 7)));
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onMessageEvent(JsonEvent jsonEvent) {
        String json = jsonEvent.getJson();
        LogUtil.m63i("JsonEvent:connect", "emo->app ble data:" + json);
        BleVersionResponseParse.version(json, new BleVersionResponseParse.Callback() { // from class: com.living.emo.activity.ConnectActivity.5
            @Override // com.living.emo.blebean.parse.BleVersionResponseParse.Callback
            public void response(VersionResponse.DataBean.VersionBean versionBean) {
                EmoUpdate.getInstance().setEmoVersion(versionBean.getNumber());
                EmoUpdate.getInstance().setEmoVersionName(versionBean.getName());
            }
        });
        BleCityResponseParse.city(json, new BleCityResponseParse.Callback() { // from class: com.living.emo.activity.ConnectActivity.6
            @Override // com.living.emo.blebean.parse.BleCityResponseParse.Callback
            public void response(CityResponse.DataBean.CityBean cityBean) {
                ConnectActivity.this.mEdit.putString(Constants.SHARE_BLE_KEY, ConnectActivity.this.mBleDevice.getName());
                ConnectActivity.this.mEdit.apply();
                ConnectActivity.this.showToast("Bluetooth connection is successful");
                ConnectActivity.this.isConnected = true;
                if (cityBean.getName().equals("")) {
                    ConnectActivity.this.goToActivity(CityActivity.class);
                    return;
                }
                byte[] timezone = BleRequestUtil.timezone();
                ConnectActivity connectActivity = ConnectActivity.this;
                connectActivity.write(connectActivity.mBleDevice, timezone);
            }
        });
        BleTimezoneResponseParse.timezone(json, new BleTimezoneResponseParse.Callback() { // from class: com.living.emo.activity.ConnectActivity.7
            @Override // com.living.emo.blebean.parse.BleTimezoneResponseParse.Callback
            public void response(TimeZoneResponse.DataBean.TimezoneBean timezoneBean) {
                if (timezoneBean.getName().equals("")) {
                    ConnectActivity.this.goToActivity(TimezoneActivity.class);
                    return;
                }
                byte[] network = BleRequestUtil.network();
                ConnectActivity connectActivity = ConnectActivity.this;
                connectActivity.write(connectActivity.mBleDevice, network);
            }
        });
        BleNetworkResponseParse.network(json, new BleNetworkResponseParse.Callback() { // from class: com.living.emo.activity.ConnectActivity.8
            @Override // com.living.emo.blebean.parse.BleNetworkResponseParse.Callback
            public void response(NetworkResponse.DataBean.NetworkBean networkBean) {
                if (networkBean.getConnected() == 1) {
                    ConnectActivity.this.goToActivity(MainActivity.class);
                } else {
                    ConnectActivity.this.goToActivity(WifiActivity.class);
                }
            }
        });
    }

    public void goToActivity(Class cls) {
        startActivity(new Intent(this, cls));
        finish();
    }

    private void checkPermission() {
        String[] strArr = {"android.permission.ACCESS_FINE_LOCATION"};
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < 1; i++) {
            String str = strArr[i];
            if (ContextCompat.checkSelfPermission(this, str) == 0) {
                onPermissionGranted(str);
            } else {
                arrayList.add(str);
            }
        }
        if (!arrayList.isEmpty()) {
            ActivityCompat.requestPermissions(this, (String[]) arrayList.toArray(new String[arrayList.size()]), 12);
        }
    }

    private void onPermissionGranted(String str) {
        if (!str.equals("android.permission.ACCESS_FINE_LOCATION")) {
            return;
        }
        if (Build.VERSION.SDK_INT < 23 || checkGPSIsopen()) {
            searchEmo();
        } else {
            new AlertDialog.Builder(this).setCancelable(false).setTitle(R.string.notifyTitle).setMessage(R.string.gpsNotifyMsg).setNegativeButton(R.string.cancel, new DialogInterface.OnClickListener() { // from class: com.living.emo.activity.ConnectActivity.10
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    ConnectActivity.this.finish();
                }
            }).setPositiveButton(R.string.setting, new DialogInterface.OnClickListener() { // from class: com.living.emo.activity.ConnectActivity.9
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    ConnectActivity.this.startActivityForResult(new Intent("android.settings.LOCATION_SOURCE_SETTINGS"), 1);
                }
            }).show();
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity, androidx.core.app.ActivityCompat.OnRequestPermissionsResultCallback
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        super.onRequestPermissionsResult(i, strArr, iArr);
        if (i == 12 && iArr.length > 0) {
            for (int i2 = 0; i2 < iArr.length; i2++) {
                if (iArr[i2] == -1) {
                    onPermissionGranted(strArr[i2]);
                }
            }
        }
    }

    private boolean checkGPSIsopen() {
        LocationManager locationManager = (LocationManager) getSystemService("location");
        if (locationManager == null) {
            return false;
        }
        return locationManager.isProviderEnabled("gps");
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 1 && checkGPSIsopen()) {
            searchEmo();
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
    }

    @Override // com.living.emo.activity.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        BleDeviceWindow bleDeviceWindow = this.mBleDeviceWindow;
        if (bleDeviceWindow != null) {
            bleDeviceWindow.dismiss();
        }
        EventBus.getDefault().unregister(this);
    }
}
