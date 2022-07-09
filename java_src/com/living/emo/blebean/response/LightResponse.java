package com.living.emo.blebean.response;

import com.google.gson.Gson;
import java.util.List;
/* loaded from: classes.dex */
public class LightResponse {
    private DataBean data;
    private String type;

    public static LightResponse objectFromData(String str) {
        return (LightResponse) new Gson().fromJson(str, (Class<Object>) LightResponse.class);
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
        private LightBean light;

        public static DataBean objectFromData(String str) {
            return (DataBean) new Gson().fromJson(str, (Class<Object>) DataBean.class);
        }

        public LightBean getLight() {
            return this.light;
        }

        public void setLight(LightBean lightBean) {
            this.light = lightBean;
        }

        /* loaded from: classes.dex */
        public static class LightBean {
            private List<StateBean> state;

            public static LightBean objectFromData(String str) {
                return (LightBean) new Gson().fromJson(str, (Class<Object>) LightBean.class);
            }

            public List<StateBean> getState() {
                return this.state;
            }

            public void setState(List<StateBean> list) {
                this.state = list;
            }

            /* loaded from: classes.dex */
            public static class StateBean {
                private int connected;
                private List<Integer> hsl;

                /* renamed from: id */
                private int f977id;
                private String name;

                /* renamed from: on */
                private int f978on;

                public static StateBean objectFromData(String str) {
                    return (StateBean) new Gson().fromJson(str, (Class<Object>) StateBean.class);
                }

                public int getId() {
                    return this.f977id;
                }

                public void setId(int i) {
                    this.f977id = i;
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
                    return this.f978on;
                }

                public void setOn(int i) {
                    this.f978on = i;
                }

                public List<Integer> getHsl() {
                    return this.hsl;
                }

                public void setHsl(List<Integer> list) {
                    this.hsl = list;
                }
            }
        }
    }
}
