package com.living.emo.blebean.config;

import com.google.gson.Gson;
/* loaded from: classes.dex */
public class WifiConfig {
    private DataBean data;
    private String type;

    public static WifiConfig objectFromData(String str) {
        return (WifiConfig) new Gson().fromJson(str, (Class<Object>) WifiConfig.class);
    }

    public String getType() {
        return this.type;
    }

    public void setType(String str) {
        this.type = str;
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
