package com.living.emo.activity;

import android.bluetooth.BluetoothGattCharacteristic;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.Toast;
import androidx.fragment.app.FragmentActivity;
import com.clj.fastble.BleManager;
import com.clj.fastble.callback.BleNotifyCallback;
import com.clj.fastble.callback.BleWriteCallback;
import com.clj.fastble.data.BleDevice;
import com.clj.fastble.exception.BleException;
import com.living.emo.MyApplication;
import com.living.emo.event.JsonEvent;
import com.living.emo.event.MessageEvent;
import com.living.emo.model.Constants;
import com.living.emo.util.ActivityCollector;
import com.living.emo.util.ByteUtil;
import com.living.emo.util.LogUtil;
import com.living.emo.util.MusicPlayerUtil;
import kotlin.UByte;
import org.greenrobot.eventbus.EventBus;
/* loaded from: classes.dex */
public class BaseActivity extends FragmentActivity {
    private static final String TAG = "zxl::" + BaseActivity.class.getName();
    private static int sessionDepth = 0;
    private BluetoothGattCharacteristic characteristic;
    private long firstTime = 0;
    private byte[] res;

    /* renamed from: t */
    private Toast f949t;
    private int total;

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        requestWindowFeature(1);
        getWindow().setFlags(1024, 1024);
        getWindow().getDecorView().setSystemUiVisibility(1280);
        setRequestedOrientation(0);
        getWindow().addFlags(128);
        super.onCreate(bundle);
        ActivityCollector.addActivity(this);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStart() {
        super.onStart();
        if (sessionDepth == 0 && !(this instanceof ConnectActivity) && !(this instanceof CityActivity) && !(this instanceof TimezoneActivity)) {
            LogUtil.m64e("------------------------", "jjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjj  sessionDepth:" + sessionDepth);
            MusicPlayerUtil.getInstance(this).play();
        }
        LogUtil.m64e("------------------------", "onResume  sessionDepth:" + sessionDepth);
        sessionDepth = sessionDepth + 1;
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        int i = sessionDepth;
        if (i > 0) {
            sessionDepth = i - 1;
        }
        if (sessionDepth == 0) {
            MusicPlayerUtil.getInstance(this).pause();
            LogUtil.m65d("-", "------------------------------------------------------------------------------------");
            LogUtil.m64e(TAG, "进入后台");
            LogUtil.m65d("-", "------------------------------------------------------------------------------------");
        }
        LogUtil.m64e("------------------------", "onStop  sessionDepth:" + sessionDepth);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        ActivityCollector.removeActivity(this);
    }

    public void showToast(String str) {
        Toast toast = this.f949t;
        if (toast == null) {
            this.f949t = Toast.makeText(this, str, 0);
        } else {
            toast.setText(str);
        }
        this.f949t.show();
    }

    protected void initNotify(BleDevice bleDevice) {
        BleManager.getInstance().notify(bleDevice, Constants.SERVICE_UUID, "0000ffe1-0000-1000-8000-00805f9b34fb", new BleNotifyCallback() { // from class: com.living.emo.activity.BaseActivity.1
            @Override // com.clj.fastble.callback.BleNotifyCallback
            public void onNotifySuccess() {
            }

            @Override // com.clj.fastble.callback.BleNotifyCallback
            public void onNotifyFailure(BleException bleException) {
                LogUtil.m63i("tag", "------------------>" + bleException.getDescription());
            }

            @Override // com.clj.fastble.callback.BleNotifyCallback
            public void onCharacteristicChanged(byte[] bArr) {
                LogUtil.m64e(BaseActivity.TAG + " emo=> app ble data:", BaseActivity.this.bytesToHexString(bArr));
                if (bArr[0] == -35 && bArr[1] == -52) {
                    EventBus.getDefault().post(new MessageEvent(bArr));
                    return;
                }
                if (bArr[0] == -69 && bArr[1] == -86) {
                    BaseActivity.this.res = new byte[0];
                    BaseActivity.this.total = ByteUtil.byteTotal(bArr[2], bArr[3]);
                    BaseActivity baseActivity = BaseActivity.this;
                    baseActivity.res = ByteUtil.byteMerger(baseActivity.res, bArr, 4);
                } else if (BaseActivity.this.res != null) {
                    BaseActivity baseActivity2 = BaseActivity.this;
                    baseActivity2.res = ByteUtil.byteMerger(baseActivity2.res, bArr, 0);
                }
                if (BaseActivity.this.res != null && BaseActivity.this.res.length == BaseActivity.this.total) {
                    String str = new String(BaseActivity.this.res);
                    LogUtil.m65d(BaseActivity.TAG, str);
                    EventBus.getDefault().post(new JsonEvent(str));
                }
            }
        });
    }

    public void playBackgroundMusicEvent(View view) {
        view.setOnClickListener(new View.OnClickListener() { // from class: com.living.emo.activity.BaseActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                MusicPlayerUtil.getInstance(MyApplication.getContext()).onClick(view2);
            }
        });
    }

    public String bytesToHexString(byte[] bArr) {
        StringBuilder sb = new StringBuilder("");
        if (bArr == null || bArr.length <= 0) {
            return null;
        }
        for (byte b : bArr) {
            String hexString = Integer.toHexString(b & UByte.MAX_VALUE);
            if (hexString.length() < 2) {
                sb.append(0);
            }
            sb.append(hexString);
        }
        return sb.toString();
    }

    public synchronized void write(BleDevice bleDevice, byte[] bArr) {
        if (bleDevice != null) {
            BleManager.getInstance().write(bleDevice, Constants.SERVICE_UUID, "0000ffe1-0000-1000-8000-00805f9b34fb", bArr, true, true, 20L, new BleWriteCallback() { // from class: com.living.emo.activity.BaseActivity.3
                @Override // com.clj.fastble.callback.BleWriteCallback
                public void onWriteFailure(BleException bleException) {
                }

                @Override // com.clj.fastble.callback.BleWriteCallback
                public void onWriteSuccess(int i, int i2, byte[] bArr2) {
                    String str = BaseActivity.TAG;
                    LogUtil.m64e(str, "app=>emo : " + BaseActivity.this.bytesToHexString(bArr2));
                }
            });
        }
    }

    public void dropOut() {
        BleManager.getInstance().destroy();
        MusicPlayerUtil.getInstance(this).end();
        ActivityCollector.finishAll();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        long currentTimeMillis = System.currentTimeMillis();
        if (i != 4) {
            return super.onKeyDown(i, keyEvent);
        }
        if (currentTimeMillis - this.firstTime < 2000) {
            dropOut();
            super.onBackPressed();
            return true;
        }
        Toast.makeText(getApplicationContext(), "Press the return key again to exit", 0).show();
        this.firstTime = System.currentTimeMillis();
        return true;
    }

    private PackageInfo getPackageInfo() throws PackageManager.NameNotFoundException {
        return getPackageManager().getPackageInfo(getPackageName(), 0);
    }

    public String getVersionName() throws PackageManager.NameNotFoundException {
        return getPackageInfo().versionName;
    }

    public long getVersionCode() throws PackageManager.NameNotFoundException {
        if (Build.VERSION.SDK_INT >= 28) {
            return getPackageInfo().getLongVersionCode();
        }
        return getPackageInfo().versionCode;
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        InputMethodManager inputMethodManager;
        if (motionEvent.getAction() == 0) {
            LogUtil.m64e("TAG", "dispatchTouchEvent: dowm");
            View currentFocus = getCurrentFocus();
            if (isShouldHideInput(currentFocus, motionEvent) && (inputMethodManager = (InputMethodManager) getSystemService("input_method")) != null) {
                inputMethodManager.hideSoftInputFromWindow(currentFocus.getWindowToken(), 0);
            }
            return super.dispatchTouchEvent(motionEvent);
        } else if (getWindow().superDispatchTouchEvent(motionEvent)) {
            return true;
        } else {
            return onTouchEvent(motionEvent);
        }
    }

    public boolean isShouldHideInput(View view, MotionEvent motionEvent) {
        if (view == null || !(view instanceof EditText)) {
            return false;
        }
        int[] iArr = {0, 0};
        view.getLocationInWindow(iArr);
        int i = iArr[0];
        int i2 = iArr[1];
        return motionEvent.getX() <= ((float) i) || motionEvent.getX() >= ((float) (view.getWidth() + i)) || motionEvent.getY() <= ((float) i2) || motionEvent.getY() <= ((float) (view.getHeight() + i2));
    }
}
