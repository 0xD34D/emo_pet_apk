package com.living.emo.blebean.response;

import com.google.gson.Gson;
/* loaded from: classes.dex */
public class NetworkResponse {
    private DataBean data;
    private String type;

    public static NetworkResponse objectFromData(String str) {
        return (NetworkResponse) new Gson().fromJson(str, (Class<Object>) NetworkResponse.class);
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
        private NetworkBean network;

        public static DataBean objectFromData(String str) {
            return (DataBean) new Gson().fromJson(str, (Class<Object>) DataBean.class);
        }

        public NetworkBean getNetwork() {
            return this.network;
        }

        public void setNetwork(NetworkBean networkBean) {
            this.network = networkBean;
        }

        /* loaded from: classes.dex */
        public static class NetworkBean {
            private int connected;
            private String name;

            public static NetworkBean objectFromData(String str) {
                return (NetworkBean) new Gson().fromJson(str, (Class<Object>) NetworkBean.class);
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
        }
    }
}
