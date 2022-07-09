package com.living.emo.bean;

import com.google.gson.Gson;
/* loaded from: classes.dex */
public class EditInfoNameBean {
    private DataBean data;
    private String type;

    public static EditInfoNameBean objectFromData(String str) {
        return (EditInfoNameBean) new Gson().fromJson(str, (Class<Object>) EditInfoNameBean.class);
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
        private String last_name;

        /* renamed from: op */
        private String f955op;

        public static DataBean objectFromData(String str) {
            return (DataBean) new Gson().fromJson(str, (Class<Object>) DataBean.class);
        }

        public String getOp() {
            return this.f955op;
        }

        public void setOp(String str) {
            this.f955op = str;
        }

        public String getLast_name() {
            return this.last_name;
        }

        public void setLast_name(String str) {
            this.last_name = str;
        }
    }
}
