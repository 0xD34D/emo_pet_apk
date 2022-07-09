package com.living.emo.model;

import com.google.gson.Gson;
import java.util.List;
/* loaded from: classes.dex */
public class SendConfig {
    private DataBean data;
    private int type;

    public static SendConfig objectFromData(String str) {
        return (SendConfig) new Gson().fromJson(str, (Class<Object>) SendConfig.class);
    }

    public static String stringFromData(SendConfig sendConfig) {
        return new Gson().toJson(sendConfig);
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
        private List<Integer> request;

        public static DataBean objectFromData(String str) {
            return (DataBean) new Gson().fromJson(str, (Class<Object>) DataBean.class);
        }

        public List<Integer> getRequest() {
            return this.request;
        }

        public void setRequest(List<Integer> list) {
            this.request = list;
        }
    }
}
