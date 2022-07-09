package com.living.emo.blebean.config;

import com.google.gson.Gson;
import java.util.List;
/* loaded from: classes.dex */
public class LightHslConfig {
    private DataBean data;
    private String type;

    public static LightHslConfig objectFromData(String str) {
        return (LightHslConfig) new Gson().fromJson(str, (Class<Object>) LightHslConfig.class);
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
        private List<Integer> hsl;

        /* renamed from: id */
        private int f966id;
        private String operation;

        public static DataBean objectFromData(String str) {
            return (DataBean) new Gson().fromJson(str, (Class<Object>) DataBean.class);
        }

        public int getId() {
            return this.f966id;
        }

        public void setId(int i) {
            this.f966id = i;
        }

        public String getOperation() {
            return this.operation;
        }

        public void setOperation(String str) {
            this.operation = str;
        }

        public List<Integer> getHsl() {
            return this.hsl;
        }

        public void setHsl(List<Integer> list) {
            this.hsl = list;
        }
    }
}
