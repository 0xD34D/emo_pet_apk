package com.living.emo.blebean.config;

import com.google.gson.Gson;
/* loaded from: classes.dex */
public class LightOnOffConfig {
    private DataBean data;
    private String type;

    public static LightOnOffConfig objectFromData(String str) {
        return (LightOnOffConfig) new Gson().fromJson(str, (Class<Object>) LightOnOffConfig.class);
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

        /* renamed from: id */
        private int f967id;

        /* renamed from: on */
        private int f968on;
        private String operation;

        public static DataBean objectFromData(String str) {
            return (DataBean) new Gson().fromJson(str, (Class<Object>) DataBean.class);
        }

        public int getId() {
            return this.f967id;
        }

        public void setId(int i) {
            this.f967id = i;
        }

        public String getOperation() {
            return this.operation;
        }

        public void setOperation(String str) {
            this.operation = str;
        }

        public int getOn() {
            return this.f968on;
        }

        public void setOn(int i) {
            this.f968on = i;
        }
    }
}
