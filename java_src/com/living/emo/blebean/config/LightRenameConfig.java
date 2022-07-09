package com.living.emo.blebean.config;

import com.google.gson.Gson;
/* loaded from: classes.dex */
public class LightRenameConfig {
    private DataBean data;
    private String type;

    public static LightRenameConfig objectFromData(String str) {
        return (LightRenameConfig) new Gson().fromJson(str, (Class<Object>) LightRenameConfig.class);
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
        private int f969id;
        private String name;
        private String operation;

        public static DataBean objectFromData(String str) {
            return (DataBean) new Gson().fromJson(str, (Class<Object>) DataBean.class);
        }

        public int getId() {
            return this.f969id;
        }

        public void setId(int i) {
            this.f969id = i;
        }

        public String getOperation() {
            return this.operation;
        }

        public void setOperation(String str) {
            this.operation = str;
        }

        public String getName() {
            return this.name;
        }

        public void setName(String str) {
            this.name = str;
        }
    }
}
