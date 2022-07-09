package com.living.emo.model;

import com.google.gson.Gson;
/* loaded from: classes.dex */
public class SetWifiConfig {
    private DataBean data;
    private int type;

    public static SetWifiConfig objectFromData(String str) {
        return (SetWifiConfig) new Gson().fromJson(str, (Class<Object>) SetWifiConfig.class);
    }

    public int getType() {
        return this.type;
    }

    public void setType(int i) {
        this.type = i;
    }

    public DataBean getData() {
        return this.data;
    }

    public void setData(DataBean dataBean) {
        this.data = dataBean;
    }

    /* loaded from: classes.dex */
    public static class DataBean {
        private String password;
        private String ssid;

        public static DataBean objectFromData(String str) {
            return (DataBean) new Gson().fromJson(str, (Class<Object>) DataBean.class);
        }

        public String getSsid() {
            return this.ssid;
        }

        public void setSsid(String str) {
            this.ssid = str;
        }

        public String getPassword() {
            return this.password;
        }

        public void setPassword(String str) {
            this.password = str;
        }
    }
}
