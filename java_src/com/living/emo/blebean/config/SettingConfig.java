package com.living.emo.blebean.config;

import com.google.gson.Gson;
/* loaded from: classes.dex */
public class SettingConfig {
    private DataBean data;
    private String type;

    public static SettingConfig objectFromData(String str) {
        return (SettingConfig) new Gson().fromJson(str, (Class<Object>) SettingConfig.class);
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

        /* renamed from: op */
        private String f974op;

        public static DataBean objectFromData(String str) {
            return (DataBean) new Gson().fromJson(str, (Class<Object>) DataBean.class);
        }

        public String getOp() {
            return this.f974op;
        }

        public void setOp(String str) {
            this.f974op = str;
        }
    }
}
