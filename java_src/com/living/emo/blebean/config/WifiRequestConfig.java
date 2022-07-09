package com.living.emo.blebean.config;

import com.google.gson.Gson;
/* loaded from: classes.dex */
public class WifiRequestConfig {
    private DataBean data;
    private String type;

    public static WifiRequestConfig objectFromData(String str) {
        return (WifiRequestConfig) new Gson().fromJson(str, (Class<Object>) WifiRequestConfig.class);
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
        private String operation;

        public static DataBean objectFromData(String str) {
            return (DataBean) new Gson().fromJson(str, (Class<Object>) DataBean.class);
        }

        public String getOperation() {
            return this.operation;
        }

        public void setOperation(String str) {
            this.operation = str;
        }
    }
}
