package com.living.emo.blebean.config;

import com.google.gson.Gson;
/* loaded from: classes.dex */
public class RecognitionConfig {
    private DataBean data;
    private String type;

    public static RecognitionConfig objectFromData(String str) {
        return (RecognitionConfig) new Gson().fromJson(str, (Class<Object>) RecognitionConfig.class);
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
        private String f972id;
        private String name;

        /* renamed from: op */
        private String f973op;

        public static DataBean objectFromData(String str) {
            return (DataBean) new Gson().fromJson(str, (Class<Object>) DataBean.class);
        }

        public String getOp() {
            return this.f973op;
        }

        public void setOp(String str) {
            this.f973op = str;
        }

        public String getId() {
            return this.f972id;
        }

        public void setId(String str) {
            this.f972id = str;
        }

        public String getName() {
            return this.name;
        }

        public void setName(String str) {
            this.name = str;
        }
    }
}
