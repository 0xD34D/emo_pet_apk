package com.living.emo.blebean.config;

import com.google.gson.Gson;
/* loaded from: classes.dex */
public class AnimConfig {
    private DataBean data;
    private String type;

    public static AnimConfig objectFromData(String str) {
        return (AnimConfig) new Gson().fromJson(str, (Class<Object>) AnimConfig.class);
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
        private String name;

        /* renamed from: op */
        private String f962op;

        public static DataBean objectFromData(String str) {
            return (DataBean) new Gson().fromJson(str, (Class<Object>) DataBean.class);
        }

        public String getOp() {
            return this.f962op;
        }

        public void setOp(String str) {
            this.f962op = str;
        }

        public String getName() {
            return this.name;
        }

        public void setName(String str) {
            this.name = str;
        }
    }
}
