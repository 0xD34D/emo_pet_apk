package com.living.emo.activity;

import android.app.AlertDialog;
import android.bluetooth.BluetoothGatt;
import android.content.DialogInterface;
import android.content.Intent;
import android.location.LocationManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
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
import com.living.emo.adapter.DeviceAdapter;
import com.living.emo.animation.SearchAnimation;
import com.living.emo.bean.BleBean;
import com.living.emo.model.Constants;
import com.living.emo.util.LogUtil;
import com.livingai.emopet.R;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class SplashActivity extends BaseActivity {
    private static final int REQUEST_CODE_OPEN_GPS = 1;
    private static final int REQUEST_CODE_PERMISSION_LOCATION = 12;
    private static final String TAG = "zxl::SplashActivity";
    private BleManager bleManager;
    private ImageButton bt_refresh;
    private TextView centerTextLink;
    private ImageButton connectIconClose;
    private ImageButton connectIconSearch;
    private boolean connection_status = false;
    private DeviceAdapter deviceAdapter;
    private BleDevice firstDevice;
    private RelativeLayout linkContainer;
    private TextView linkNow;
    private RelativeLayout mask;
    private RelativeLayout mask_select;
    private FrameLayout searchAnimContainer;
    private SearchAnimation searchAnimation;
    private ImageView searchSpin;
    private TextView searchingEmo;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.living.emo.activity.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_splash);
        initView();
        this.searchAnimation = new SearchAnimation();
        clickEvent();
        this.bleManager.init(getApplication());
        this.bleManager.enableLog(false).setReConnectCount(3, 5000L).setOperateTimeout(5000);
        if (!this.bleManager.isBlueEnable()) {
            this.bleManager.enableBluetooth();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.living.emo.activity.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStart() {
        super.onStart();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.living.emo.activity.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        if (!this.connection_status) {
            this.bleManager.destroy();
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        if (this.bleManager.isBlueEnable()) {
            checkPermissions();
            startAnim();
        }
    }

    private void clickEvent() {
        this.bt_refresh.setOnClickListener(new View.OnClickListener() { // from class: com.living.emo.activity.SplashActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (SplashActivity.this.bleManager.isBlueEnable()) {
                    SplashActivity.this.searchAnimation.stop(SplashActivity.this.bt_refresh);
                    SplashActivity.this.searchAnimation.searchAnim(SplashActivity.this.bt_refresh);
                    SplashActivity.this.bleManager.cancelScan();
                    SplashActivity.this.deviceAdapter.clearScanDevice();
                    SplashActivity.this.deviceAdapter.notifyDataSetChanged();
                    SplashActivity.this.checkPermissions();
                }
            }
        });
        this.connectIconSearch.setOnClickListener(new View.OnClickListener() { // from class: com.living.emo.activity.SplashActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                SplashActivity.this.mask_select.setVisibility(0);
            }
        });
        this.linkNow.setOnClickListener(new View.OnClickListener() { // from class: com.living.emo.activity.SplashActivity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (!SplashActivity.this.bleManager.isConnected(SplashActivity.this.firstDevice)) {
                    SplashActivity splashActivity = SplashActivity.this;
                    splashActivity.connect(splashActivity.firstDevice);
                }
            }
        });
        this.connectIconClose.setOnClickListener(new View.OnClickListener() { // from class: com.living.emo.activity.SplashActivity.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                SplashActivity.this.finish();
            }
        });
        this.mask.setOnClickListener(new View.OnClickListener() { // from class: com.living.emo.activity.SplashActivity.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                SplashActivity.this.mask_select.setVisibility(8);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void connect(BleDevice bleDevice) {
        this.bleManager.connect(this.firstDevice, new BleGattCallback() { // from class: com.living.emo.activity.SplashActivity.6
            @Override // com.clj.fastble.callback.BleGattCallback
            public void onStartConnect() {
                SplashActivity.this.showToast("开始连接...");
            }

            @Override // com.clj.fastble.callback.BleGattCallback
            public void onConnectFail(BleDevice bleDevice2, BleException bleException) {
                LogUtil.m64e(SplashActivity.TAG, "onConnectFail" + bleException.getDescription());
                SplashActivity.this.showToast(bleException.getDescription());
            }

            @Override // com.clj.fastble.callback.BleGattCallback
            public void onConnectSuccess(BleDevice bleDevice2, BluetoothGatt bluetoothGatt, int i) {
                SplashActivity splashActivity = SplashActivity.this;
                splashActivity.showToast(bleDevice2.getName() + "连接成功");
                Intent intent = new Intent(SplashActivity.this, MainActivity.class);
                BleBean.getInstance().setBleDevice(bleDevice2);
                SplashActivity.this.startActivity(intent);
                SplashActivity.this.connection_status = true;
            }

            @Override // com.clj.fastble.callback.BleGattCallback
            public void onDisConnected(boolean z, final BleDevice bleDevice2, BluetoothGatt bluetoothGatt, int i) {
                if (z) {
                    SplashActivity.this.showToast("断开了");
                    return;
                }
                SplashActivity.this.showToast("连接断开了");
                new Handler().postDelayed(new Runnable() { // from class: com.living.emo.activity.SplashActivity.6.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (bleDevice2 != null) {
                            SplashActivity.this.connect(bleDevice2);
                        }
                    }
                }, 3000L);
            }
        });
    }

    private void startAnim() {
        this.searchAnimation.searchAnim(this.searchSpin);
    }

    private void initView() {
        this.bleManager = BleManager.getInstance();
        this.linkContainer = (RelativeLayout) findViewById(R.id.link_container);
        this.searchAnimContainer = (FrameLayout) findViewById(R.id.search_anim);
        this.searchingEmo = (TextView) findViewById(R.id.searching_emo);
        this.connectIconSearch = (ImageButton) findViewById(R.id.connect_icon_search);
        this.connectIconClose = (ImageButton) findViewById(R.id.connect_icon_close);
        this.searchSpin = (ImageView) findViewById(R.id.search_spin);
        this.centerTextLink = (TextView) findViewById(R.id.center_text_link);
        this.mask_select = (RelativeLayout) findViewById(R.id.mask_select);
        this.bt_refresh = (ImageButton) findViewById(R.id.bt_refresh);
        this.linkNow = (TextView) findViewById(R.id.link_now);
        this.mask = (RelativeLayout) findViewById(R.id.mask);
        this.linkContainer.setVisibility(8);
        this.mask_select.setVisibility(8);
        this.searchAnimContainer.setVisibility(0);
        this.searchingEmo.setText(R.string.searching_emo);
        DeviceAdapter deviceAdapter = new DeviceAdapter(this);
        this.deviceAdapter = deviceAdapter;
        deviceAdapter.setOnDeviceClickListener(new DeviceAdapter.OnDeviceClickListener() { // from class: com.living.emo.activity.SplashActivity.7
            @Override // com.living.emo.adapter.DeviceAdapter.OnDeviceClickListener
            public void selectDevice(BleDevice bleDevice) {
                if (SplashActivity.this.searchAnimContainer.getVisibility() == 0) {
                    SplashActivity.this.searchAnimContainer.setVisibility(8);
                    SplashActivity.this.linkContainer.setVisibility(0);
                }
                if (!SplashActivity.this.bleManager.isConnected(SplashActivity.this.firstDevice)) {
                    if (SplashActivity.this.firstDevice != null) {
                        SplashActivity.this.firstDevice = null;
                        SplashActivity.this.firstDevice = bleDevice;
                    } else {
                        SplashActivity.this.firstDevice = bleDevice;
                    }
                    SplashActivity.this.centerTextLink.setText(SplashActivity.this.firstDevice.getName());
                    return;
                }
                SplashActivity.this.showToast("EMO已连接");
            }
        });
        ((ListView) findViewById(R.id.device_name_id)).setAdapter((ListAdapter) this.deviceAdapter);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkPermissions() {
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

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity, androidx.core.app.ActivityCompat.OnRequestPermissionsResultCallback
    public final void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        super.onRequestPermissionsResult(i, strArr, iArr);
        if (i == 12 && iArr.length > 0) {
            for (int i2 = 0; i2 < iArr.length; i2++) {
                if (iArr[i2] == 0) {
                    onPermissionGranted(strArr[i2]);
                }
            }
        }
    }

    private void onPermissionGranted(String str) {
        str.hashCode();
        if (str.equals("android.permission.ACCESS_FINE_LOCATION")) {
            if (Build.VERSION.SDK_INT < 23 || checkGPSIsOpen()) {
                setScanRule();
                startScan();
                return;
            }
            new AlertDialog.Builder(this).setTitle(R.string.notifyTitle).setMessage(R.string.gpsNotifyMsg).setNegativeButton(R.string.cancel, new DialogInterface.OnClickListener() { // from class: com.living.emo.activity.SplashActivity.9
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    SplashActivity.this.finish();
                }
            }).setPositiveButton(R.string.setting, new DialogInterface.OnClickListener() { // from class: com.living.emo.activity.SplashActivity.8
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    SplashActivity.this.startActivityForResult(new Intent("android.settings.LOCATION_SOURCE_SETTINGS"), 1);
                }
            }).setCancelable(false).show();
        }
    }

    private void setScanRule() {
        BleManager.getInstance().initScanRule(new BleScanRuleConfig.Builder().setDeviceName(true, Constants.BLE_NAME).setScanTimeOut(5000L).build());
    }

    private void startScan() {
        BleManager.getInstance().scan(new BleScanCallback() { // from class: com.living.emo.activity.SplashActivity.10
            @Override // com.clj.fastble.callback.BleScanPresenterImp
            public void onScanStarted(boolean z) {
                SplashActivity.this.deviceAdapter.clearScanDevice();
                SplashActivity.this.deviceAdapter.notifyDataSetChanged();
            }

            @Override // com.clj.fastble.callback.BleScanCallback
            public void onLeScan(BleDevice bleDevice) {
                super.onLeScan(bleDevice);
            }

            @Override // com.clj.fastble.callback.BleScanPresenterImp
            public void onScanning(BleDevice bleDevice) {
                SplashActivity.this.deviceAdapter.addDevice(bleDevice);
                SplashActivity.this.deviceAdapter.notifyDataSetChanged();
            }

            @Override // com.clj.fastble.callback.BleScanCallback
            public void onScanFinished(List<BleDevice> list) {
                SplashActivity.this.searchAnimContainer.setVisibility(8);
                SplashActivity.this.searchAnimation.stop(SplashActivity.this.bt_refresh);
                SplashActivity.this.searchAnimation.stop(SplashActivity.this.searchSpin);
                if (list == null || list.isEmpty()) {
                    LogUtil.m63i("tag", "-----onScanFinished----");
                    return;
                }
                SplashActivity.this.firstDevice = null;
                SplashActivity.this.firstDevice = list.get(0);
                SplashActivity.this.centerTextLink.setText(SplashActivity.this.firstDevice.getName());
                LogUtil.m63i("tag", list.get(0).getName());
                SplashActivity.this.searchAnimContainer.setVisibility(8);
                SplashActivity.this.searchingEmo.setText(R.string.find_emo);
                SplashActivity.this.linkContainer.setVisibility(0);
            }
        });
    }

    private boolean checkGPSIsOpen() {
        LocationManager locationManager = (LocationManager) getSystemService("location");
        if (locationManager == null) {
            return false;
        }
        return locationManager.isProviderEnabled("gps");
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 1 && checkGPSIsOpen()) {
            setScanRule();
            startScan();
        }
    }
}
