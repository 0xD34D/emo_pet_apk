package com.living.emo.model;

import com.google.gson.Gson;
/* loaded from: classes.dex */
public class TimeZoneConfig {
    private DataBean data;
    private int type;

    public static TimeZoneConfig objectFromData(String str) {
        return (TimeZoneConfig) new Gson().fromJson(str, (Class<Object>) TimeZoneConfig.class);
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
        private String code;
        private String name;
        private int offset;

        public static DataBean objectFromData(String str) {
            return (DataBean) new Gson().fromJson(str, (Class<Object>) DataBean.class);
        }

        public String getName() {
            return this.name;
        }

        public void setName(String str) {
            this.name = str;
        }

        public String getCode() {
            return this.code;
        }

        public void setCode(String str) {
            this.code = str;
        }

        public int getOffset() {
            return this.offset;
        }

        public void setOffset(int i) {
            this.offset = i;
        }
    }
}
