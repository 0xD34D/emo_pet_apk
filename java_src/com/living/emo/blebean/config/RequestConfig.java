package com.living.emo.blebean.config;

import com.google.gson.Gson;
import java.util.List;
/* loaded from: classes.dex */
public class RequestConfig {
    private DataBean data;
    private String type;

    public static RequestConfig objectFromData(String str) {
        return (RequestConfig) new Gson().fromJson(str, (Class<Object>) RequestConfig.class);
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
