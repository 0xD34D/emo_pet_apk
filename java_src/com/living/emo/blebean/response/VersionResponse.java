package com.living.emo.blebean.response;

import com.google.gson.Gson;
/* loaded from: classes.dex */
public class VersionResponse {
    private DataBean data;
    private String type;

    public static VersionResponse objectFromData(String str) {
        return (VersionResponse) new Gson().fromJson(str, (Class<Object>) VersionResponse.class);
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
        private VersionBean version;

        public static DataBean objectFromData(String str) {
            return (DataBean) new Gson().fromJson(str, (Class<Object>) DataBean.class);
        }

        public VersionBean getVersion() {
            return this.version;
        }

        public void setVersion(VersionBean versionBean) {
            this.version = versionBean;
        }

        /* loaded from: classes.dex */
        public static class VersionBean {
            private String name;
            private int number;

            public static VersionBean objectFromData(String str) {
                return (VersionBean) new Gson().fromJson(str, (Class<Object>) VersionBean.class);
            }

            public int getNumber() {
                return this.number;
            }

            public void setNumber(int i) {
                this.number = i;
            }

            public String getName() {
                return this.name;
            }

            public void setName(String str) {
                this.name = str;
            }
        }
    }
}
