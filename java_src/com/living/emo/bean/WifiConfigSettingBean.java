package com.living.emo.bean;
/* loaded from: classes.dex */
public class WifiConfigSettingBean {
    private boolean isConnected;
    private boolean isToast;
    private String wifiName;

    public WifiConfigSettingBean(boolean z, String str, boolean z2) {
        this.isToast = z;
        this.wifiName = str;
        this.isConnected = z2;
    }

    public boolean isToast() {
        return this.isToast;
    }

    public void setToast(boolean z) {
        this.isToast = z;
    }

    public String getWifiName() {
        return this.wifiName;
    }

    public void setWifiName(String str) {
        this.wifiName = str;
    }

    public boolean isConnected() {
        return this.isConnected;
    }

    public void setConnected(boolean z) {
        this.isConnected = z;
    }
}
