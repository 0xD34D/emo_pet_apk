package com.living.emo.bean;

import com.clj.fastble.data.BleDevice;
/* loaded from: classes.dex */
public class BleBean {
    private BleDevice bleDevice;

    public BleDevice getBleDevice() {
        return this.bleDevice;
    }

    public void setBleDevice(BleDevice bleDevice) {
        this.bleDevice = bleDevice;
    }

    /* loaded from: classes.dex */
    private static class SingletonClassInstance {
        private static final BleBean instance = new BleBean();

        private SingletonClassInstance() {
        }
    }

    public static BleBean getInstance() {
        return SingletonClassInstance.instance;
    }
}
