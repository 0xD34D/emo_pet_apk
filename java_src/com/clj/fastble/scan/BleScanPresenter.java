package com.clj.fastble.scan;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.clj.fastble.callback.BleScanPresenterImp;
import com.clj.fastble.data.BleDevice;
import com.clj.fastble.utils.BleLog;
import com.clj.fastble.utils.HexUtil;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes.dex */
public abstract class BleScanPresenter implements BluetoothAdapter.LeScanCallback {
    private BleScanPresenterImp mBleScanPresenterImp;
    private String mDeviceMac;
    private String[] mDeviceNames;
    private boolean mFuzzy;
    private Handler mHandler;
    private HandlerThread mHandlerThread;
    private boolean mHandling;
    private boolean mNeedConnect;
    private long mScanTimeout;
    private List<BleDevice> mBleDeviceList = new ArrayList();
    private Handler mMainHandler = new Handler(Looper.getMainLooper());

    public abstract void onLeScan(BleDevice bleDevice);

    public abstract void onScanFinished(List<BleDevice> list);

    public abstract void onScanStarted(boolean z);

    public abstract void onScanning(BleDevice bleDevice);

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class ScanHandler extends Handler {
        private final WeakReference<BleScanPresenter> mBleScanPresenter;

        ScanHandler(Looper looper, BleScanPresenter bleScanPresenter) {
            super(looper);
            this.mBleScanPresenter = new WeakReference<>(bleScanPresenter);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            BleDevice bleDevice;
            BleScanPresenter bleScanPresenter = this.mBleScanPresenter.get();
            if (bleScanPresenter != null && message.what == 0 && (bleDevice = (BleDevice) message.obj) != null) {
                bleScanPresenter.handleResult(bleDevice);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleResult(final BleDevice bleDevice) {
        this.mMainHandler.post(new Runnable() { // from class: com.clj.fastble.scan.BleScanPresenter.1
            @Override // java.lang.Runnable
            public void run() {
                BleScanPresenter.this.onLeScan(bleDevice);
            }
        });
        checkDevice(bleDevice);
    }

    public void prepare(String[] strArr, String str, boolean z, boolean z2, long j, BleScanPresenterImp bleScanPresenterImp) {
        this.mDeviceNames = strArr;
        this.mDeviceMac = str;
        this.mFuzzy = z;
        this.mNeedConnect = z2;
        this.mScanTimeout = j;
        this.mBleScanPresenterImp = bleScanPresenterImp;
        HandlerThread handlerThread = new HandlerThread(BleScanPresenter.class.getSimpleName());
        this.mHandlerThread = handlerThread;
        handlerThread.start();
        this.mHandler = new ScanHandler(this.mHandlerThread.getLooper(), this);
        this.mHandling = true;
    }

    public boolean ismNeedConnect() {
        return this.mNeedConnect;
    }

    public BleScanPresenterImp getBleScanPresenterImp() {
        return this.mBleScanPresenterImp;
    }

    @Override // android.bluetooth.BluetoothAdapter.LeScanCallback
    public void onLeScan(BluetoothDevice bluetoothDevice, int i, byte[] bArr) {
        if (bluetoothDevice != null && this.mHandling) {
            Message obtainMessage = this.mHandler.obtainMessage();
            obtainMessage.what = 0;
            obtainMessage.obj = new BleDevice(bluetoothDevice, i, bArr, System.currentTimeMillis());
            this.mHandler.sendMessage(obtainMessage);
        }
    }

    private void checkDevice(BleDevice bleDevice) {
        String[] strArr;
        if (TextUtils.isEmpty(this.mDeviceMac) && ((strArr = this.mDeviceNames) == null || strArr.length < 1)) {
            correctDeviceAndNextStep(bleDevice);
        } else if (TextUtils.isEmpty(this.mDeviceMac) || this.mDeviceMac.equalsIgnoreCase(bleDevice.getMac())) {
            String[] strArr2 = this.mDeviceNames;
            if (strArr2 != null && strArr2.length > 0) {
                AtomicBoolean atomicBoolean = new AtomicBoolean(false);
                String[] strArr3 = this.mDeviceNames;
                for (String str : strArr3) {
                    String name = bleDevice.getName();
                    if (name == null) {
                        name = "";
                    }
                    if (this.mFuzzy) {
                        if (!name.contains(str)) {
                        }
                        atomicBoolean.set(true);
                    } else {
                        if (!name.equals(str)) {
                        }
                        atomicBoolean.set(true);
                    }
                }
                if (!atomicBoolean.get()) {
                    return;
                }
            }
            correctDeviceAndNextStep(bleDevice);
        }
    }

    private void correctDeviceAndNextStep(final BleDevice bleDevice) {
        if (this.mNeedConnect) {
            BleLog.m719i("devices detected  ------  name:" + bleDevice.getName() + "  mac:" + bleDevice.getMac() + "  Rssi:" + bleDevice.getRssi() + "  scanRecord:" + HexUtil.formatHexString(bleDevice.getScanRecord()));
            this.mBleDeviceList.add(bleDevice);
            this.mMainHandler.post(new Runnable() { // from class: com.clj.fastble.scan.BleScanPresenter.2
                @Override // java.lang.Runnable
                public void run() {
                    BleScanner.getInstance().stopLeScan();
                }
            });
            return;
        }
        AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        for (BleDevice bleDevice2 : this.mBleDeviceList) {
            if (bleDevice2.getDevice().equals(bleDevice.getDevice())) {
                atomicBoolean.set(true);
            }
        }
        if (!atomicBoolean.get()) {
            BleLog.m719i("device detected  ------  name: " + bleDevice.getName() + "  mac: " + bleDevice.getMac() + "  Rssi: " + bleDevice.getRssi() + "  scanRecord: " + HexUtil.formatHexString(bleDevice.getScanRecord(), true));
            this.mBleDeviceList.add(bleDevice);
            this.mMainHandler.post(new Runnable() { // from class: com.clj.fastble.scan.BleScanPresenter.3
                @Override // java.lang.Runnable
                public void run() {
                    BleScanPresenter.this.onScanning(bleDevice);
                }
            });
        }
    }

    public final void notifyScanStarted(final boolean z) {
        this.mBleDeviceList.clear();
        removeHandlerMsg();
        if (z && this.mScanTimeout > 0) {
            this.mMainHandler.postDelayed(new Runnable() { // from class: com.clj.fastble.scan.BleScanPresenter.4
                @Override // java.lang.Runnable
                public void run() {
                    BleScanner.getInstance().stopLeScan();
                }
            }, this.mScanTimeout);
        }
        this.mMainHandler.post(new Runnable() { // from class: com.clj.fastble.scan.BleScanPresenter.5
            @Override // java.lang.Runnable
            public void run() {
                BleScanPresenter.this.onScanStarted(z);
            }
        });
    }

    public final void notifyScanStopped() {
        this.mHandling = false;
        this.mHandlerThread.quit();
        removeHandlerMsg();
        this.mMainHandler.post(new Runnable() { // from class: com.clj.fastble.scan.BleScanPresenter.6
            @Override // java.lang.Runnable
            public void run() {
                BleScanPresenter bleScanPresenter = BleScanPresenter.this;
                bleScanPresenter.onScanFinished(bleScanPresenter.mBleDeviceList);
            }
        });
    }

    public final void removeHandlerMsg() {
        this.mMainHandler.removeCallbacksAndMessages(null);
        this.mHandler.removeCallbacksAndMessages(null);
    }
}
