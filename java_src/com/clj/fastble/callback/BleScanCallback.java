package com.clj.fastble.callback;

import com.clj.fastble.data.BleDevice;
import java.util.List;
/* loaded from: classes.dex */
public abstract class BleScanCallback implements BleScanPresenterImp {
    public void onLeScan(BleDevice bleDevice) {
    }

    public abstract void onScanFinished(List<BleDevice> list);
}
