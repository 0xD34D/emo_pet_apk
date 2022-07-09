package com.clj.fastble.scan;

import android.os.Handler;
import android.os.Looper;
import com.clj.fastble.BleManager;
import com.clj.fastble.callback.BleScanAndConnectCallback;
import com.clj.fastble.callback.BleScanCallback;
import com.clj.fastble.callback.BleScanPresenterImp;
import com.clj.fastble.data.BleDevice;
import com.clj.fastble.data.BleScanState;
import com.clj.fastble.utils.BleLog;
import java.util.List;
import java.util.UUID;
/* loaded from: classes.dex */
public class BleScanner {
    private BleScanState mBleScanState = BleScanState.STATE_IDLE;
    private BleScanPresenter mBleScanPresenter = new BleScanPresenter() { // from class: com.clj.fastble.scan.BleScanner.1
        @Override // com.clj.fastble.scan.BleScanPresenter
        public void onScanStarted(boolean z) {
            BleScanPresenterImp bleScanPresenterImp = BleScanner.this.mBleScanPresenter.getBleScanPresenterImp();
            if (bleScanPresenterImp != null) {
                bleScanPresenterImp.onScanStarted(z);
            }
        }

        @Override // com.clj.fastble.scan.BleScanPresenter
        public void onLeScan(BleDevice bleDevice) {
            if (BleScanner.this.mBleScanPresenter.ismNeedConnect()) {
                BleScanAndConnectCallback bleScanAndConnectCallback = (BleScanAndConnectCallback) BleScanner.this.mBleScanPresenter.getBleScanPresenterImp();
                if (bleScanAndConnectCallback != null) {
                    bleScanAndConnectCallback.onLeScan(bleDevice);
                    return;
                }
                return;
            }
            BleScanCallback bleScanCallback = (BleScanCallback) BleScanner.this.mBleScanPresenter.getBleScanPresenterImp();
            if (bleScanCallback != null) {
                bleScanCallback.onLeScan(bleDevice);
            }
        }

        @Override // com.clj.fastble.scan.BleScanPresenter
        public void onScanning(BleDevice bleDevice) {
            BleScanPresenterImp bleScanPresenterImp = BleScanner.this.mBleScanPresenter.getBleScanPresenterImp();
            if (bleScanPresenterImp != null) {
                bleScanPresenterImp.onScanning(bleDevice);
            }
        }

        @Override // com.clj.fastble.scan.BleScanPresenter
        public void onScanFinished(final List<BleDevice> list) {
            if (BleScanner.this.mBleScanPresenter.ismNeedConnect()) {
                final BleScanAndConnectCallback bleScanAndConnectCallback = (BleScanAndConnectCallback) BleScanner.this.mBleScanPresenter.getBleScanPresenterImp();
                if (list != null && list.size() >= 1) {
                    if (bleScanAndConnectCallback != null) {
                        bleScanAndConnectCallback.onScanFinished(list.get(0));
                    }
                    new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: com.clj.fastble.scan.BleScanner.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            BleManager.getInstance().connect((BleDevice) list.get(0), bleScanAndConnectCallback);
                        }
                    }, 100L);
                } else if (bleScanAndConnectCallback != null) {
                    bleScanAndConnectCallback.onScanFinished(null);
                }
            } else {
                BleScanCallback bleScanCallback = (BleScanCallback) BleScanner.this.mBleScanPresenter.getBleScanPresenterImp();
                if (bleScanCallback != null) {
                    bleScanCallback.onScanFinished(list);
                }
            }
        }
    };

    public static BleScanner getInstance() {
        return BleScannerHolder.sBleScanner;
    }

    /* loaded from: classes.dex */
    public static class BleScannerHolder {
        private static final BleScanner sBleScanner = new BleScanner();

        private BleScannerHolder() {
        }
    }

    public void scan(UUID[] uuidArr, String[] strArr, String str, boolean z, long j, BleScanCallback bleScanCallback) {
        startLeScan(uuidArr, strArr, str, z, false, j, bleScanCallback);
    }

    public void scanAndConnect(UUID[] uuidArr, String[] strArr, String str, boolean z, long j, BleScanAndConnectCallback bleScanAndConnectCallback) {
        startLeScan(uuidArr, strArr, str, z, true, j, bleScanAndConnectCallback);
    }

    private synchronized void startLeScan(UUID[] uuidArr, String[] strArr, String str, boolean z, boolean z2, long j, BleScanPresenterImp bleScanPresenterImp) {
        if (this.mBleScanState != BleScanState.STATE_IDLE) {
            BleLog.m718w("scan action already exists, complete the previous scan action first");
            if (bleScanPresenterImp != null) {
                bleScanPresenterImp.onScanStarted(false);
            }
            return;
        }
        this.mBleScanPresenter.prepare(strArr, str, z, z2, j, bleScanPresenterImp);
        boolean startLeScan = BleManager.getInstance().getBluetoothAdapter().startLeScan(uuidArr, this.mBleScanPresenter);
        this.mBleScanState = startLeScan ? BleScanState.STATE_SCANNING : BleScanState.STATE_IDLE;
        this.mBleScanPresenter.notifyScanStarted(startLeScan);
    }

    public synchronized void stopLeScan() {
        BleManager.getInstance().getBluetoothAdapter().stopLeScan(this.mBleScanPresenter);
        this.mBleScanState = BleScanState.STATE_IDLE;
        this.mBleScanPresenter.notifyScanStopped();
    }

    public BleScanState getScanState() {
        return this.mBleScanState;
    }
}
