package com.living.emo.blebean.response;

import com.google.gson.Gson;
import java.util.List;
/* loaded from: classes.dex */
public class WifiRequestResponse {
    private DataBean data;
    private String type;

    public static WifiRequestResponse objectFromData(String str) {
        return (WifiRequestResponse) new Gson().fromJson(str, (Class<Object>) WifiRequestResponse.class);
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
        private List<ListBean> list;
        private int result;

        public static DataBean objectFromData(String str) {
            return (DataBean) new Gson().fromJson(str, (Class<Object>) DataBean.class);
        }

        public int getResult() {
            return this.result;
        }

        public void setResult(int i) {
            this.result = i;
        }

        public List<ListBean> getList() {
            return this.list;
        }

        public void setList(List<ListBean> list) {
            this.list = list;
        }

        /* loaded from: classes.dex */
        public static class ListBean {
            private int rssi;
            private String ssid;

            public static ListBean objectFromData(String str) {
                return (ListBean) new Gson().fromJson(str, (Class<Object>) ListBean.class);
            }

            public String getSsid() {
                return this.ssid;
            }

            public void setSsid(String str) {
                this.ssid = str;
            }

            public int getRssi() {
                return this.rssi;
            }

            public void setRssi(int i) {
                this.rssi = i;
            }
        }
    }
}
