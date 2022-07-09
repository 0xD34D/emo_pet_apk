package com.living.emo.blebean.config;

import com.google.gson.Gson;
/* loaded from: classes.dex */
public class PhotoConfig {
    private DataBean data;
    private String type;

    public static PhotoConfig objectFromData(String str) {
        return (PhotoConfig) new Gson().fromJson(str, (Class<Object>) PhotoConfig.class);
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

        /* renamed from: op */
        private String f970op;
        private String photo_name;
        private ServerBean server;

        public static DataBean objectFromData(String str) {
            return (DataBean) new Gson().fromJson(str, (Class<Object>) DataBean.class);
        }

        public String getOp() {
            return this.f970op;
        }

        public void setOp(String str) {
            this.f970op = str;
        }

        public String getPhoto_name() {
            return this.photo_name;
        }

        public void setPhoto_name(String str) {
            this.photo_name = str;
        }

        public ServerBean getServer() {
            return this.server;
        }

        public void setServer(ServerBean serverBean) {
            this.server = serverBean;
        }

        /* loaded from: classes.dex */
        public static class ServerBean {

            /* renamed from: ip */
            private String f971ip;
            private int port;

            public static ServerBean objectFromData(String str) {
                return (ServerBean) new Gson().fromJson(str, (Class<Object>) ServerBean.class);
            }

            public String getIp() {
                return this.f971ip;
            }

            public void setIp(String str) {
                this.f971ip = str;
            }

            public int getPort() {
                return this.port;
            }

            public void setPort(int i) {
                this.port = i;
            }
        }
    }
}
