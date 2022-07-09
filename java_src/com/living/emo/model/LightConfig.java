package com.living.emo.model;

import com.google.gson.Gson;
import java.util.List;
/* loaded from: classes.dex */
public class LightConfig {
    private DataBean data;
    private int type;

    public static LightConfig objectFromData(String str) {
        return (LightConfig) new Gson().fromJson(str, (Class<Object>) LightConfig.class);
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
        private int connected;
        private List<Integer> hsl;

        /* renamed from: id */
        private int f984id;
        private String name;

        /* renamed from: on */
        private int f985on;

        public static DataBean objectFromData(String str) {
            return (DataBean) new Gson().fromJson(str, (Class<Object>) DataBean.class);
        }

        public int getId() {
            return this.f984id;
        }

        public void setId(int i) {
            this.f984id = i;
        }

        public int getConnected() {
            return this.connected;
        }

        public void setConnected(int i) {
            this.connected = i;
        }

        public String getName() {
            return this.name;
        }

        public void setName(String str) {
            this.name = str;
        }

        public int getOn() {
            return this.f985on;
        }

        public void setOn(int i) {
            this.f985on = i;
        }

        public List<Integer> getHsl() {
            return this.hsl;
        }

        public void setHsl(List<Integer> list) {
            this.hsl = list;
        }
    }
}
