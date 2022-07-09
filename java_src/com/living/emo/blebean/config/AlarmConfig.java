package com.living.emo.blebean.config;

import com.google.gson.Gson;
/* loaded from: classes.dex */
public class AlarmConfig {
    private DataBean data;
    private String type;

    public static AlarmConfig objectFromData(String str) {
        return (AlarmConfig) new Gson().fromJson(str, (Class<Object>) AlarmConfig.class);
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
        private int index;

        /* renamed from: on */
        private int f961on;
        private String operation;
        private String recurrence;
        private String tag;
        private String time;

        public static DataBean objectFromData(String str) {
            return (DataBean) new Gson().fromJson(str, (Class<Object>) DataBean.class);
        }

        public String getOperation() {
            return this.operation;
        }

        public void setOperation(String str) {
            this.operation = str;
        }

        public int getIndex() {
            return this.index;
        }

        public void setIndex(int i) {
            this.index = i;
        }

        public int getOn() {
            return this.f961on;
        }

        public void setOn(int i) {
            this.f961on = i;
        }

        public String getTime() {
            return this.time;
        }

        public void setTime(String str) {
            this.time = str;
        }

        public String getRecurrence() {
            return this.recurrence;
        }

        public void setRecurrence(String str) {
            this.recurrence = str;
        }

        public String getTag() {
            return this.tag;
        }

        public void setTag(String str) {
            this.tag = str;
        }
    }
}
