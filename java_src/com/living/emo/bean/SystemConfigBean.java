package com.living.emo.bean;

import com.google.gson.Gson;
import java.util.List;
/* loaded from: classes.dex */
public class SystemConfigBean {
    private static SystemConfigBean sSystemConfigBean;
    private DataBean data;
    private int type;

    public static void objectFromData(String str) {
        sSystemConfigBean = (SystemConfigBean) new Gson().fromJson(str, (Class<Object>) SystemConfigBean.class);
    }

    public static SystemConfigBean getSystemConfigBean() {
        SystemConfigBean systemConfigBean = sSystemConfigBean;
        if (systemConfigBean == null) {
            return null;
        }
        return systemConfigBean;
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
        private AlertBean alert;
        private AlexaBean alexa;
        private CityBean city;
        private DeviceidBean deviceid;
        private LightBean light;
        private NetworkBean network;
        private TimezoneBean timezone;
        private VersionBean version;
        private XiaoaiBean xiaoai;

        public static DataBean objectFromData(String str) {
            return (DataBean) new Gson().fromJson(str, (Class<Object>) DataBean.class);
        }

        public DeviceidBean getDeviceid() {
            return this.deviceid;
        }

        public void setDeviceid(DeviceidBean deviceidBean) {
            this.deviceid = deviceidBean;
        }

        public AlexaBean getAlexa() {
            return this.alexa;
        }

        public void setAlexa(AlexaBean alexaBean) {
            this.alexa = alexaBean;
        }

        public NetworkBean getNetwork() {
            return this.network;
        }

        public void setNetwork(NetworkBean networkBean) {
            this.network = networkBean;
        }

        public XiaoaiBean getXiaoai() {
            return this.xiaoai;
        }

        public void setXiaoai(XiaoaiBean xiaoaiBean) {
            this.xiaoai = xiaoaiBean;
        }

        public VersionBean getVersion() {
            return this.version;
        }

        public void setVersion(VersionBean versionBean) {
            this.version = versionBean;
        }

        public LightBean getLight() {
            return this.light;
        }

        public void setLight(LightBean lightBean) {
            this.light = lightBean;
        }

        public AlertBean getAlert() {
            return this.alert;
        }

        public void setAlert(AlertBean alertBean) {
            this.alert = alertBean;
        }

        public CityBean getCity() {
            return this.city;
        }

        public void setCity(CityBean cityBean) {
            this.city = cityBean;
        }

        public TimezoneBean getTimezone() {
            return this.timezone;
        }

        public void setTimezone(TimezoneBean timezoneBean) {
            this.timezone = timezoneBean;
        }

        /* loaded from: classes.dex */
        public static class DeviceidBean {
            private String device_id;

            public static DeviceidBean objectFromData(String str) {
                return (DeviceidBean) new Gson().fromJson(str, (Class<Object>) DeviceidBean.class);
            }

            public String getDevice_id() {
                return this.device_id;
            }

            public void setDevice_id(String str) {
                this.device_id = str;
            }
        }

        /* loaded from: classes.dex */
        public static class AlexaBean {
            private int connected;

            public static AlexaBean objectFromData(String str) {
                return (AlexaBean) new Gson().fromJson(str, (Class<Object>) AlexaBean.class);
            }

            public int getConnected() {
                return this.connected;
            }

            public void setConnected(int i) {
                this.connected = i;
            }
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

        /* loaded from: classes.dex */
        public static class XiaoaiBean {
            private int connected;
            private String refresh_token;
            private String token;

            public static XiaoaiBean objectFromData(String str) {
                return (XiaoaiBean) new Gson().fromJson(str, (Class<Object>) XiaoaiBean.class);
            }

            public int getConnected() {
                return this.connected;
            }

            public void setConnected(int i) {
                this.connected = i;
            }

            public String getToken() {
                return this.token;
            }

            public void setToken(String str) {
                this.token = str;
            }

            public String getRefresh_token() {
                return this.refresh_token;
            }

            public void setRefresh_token(String str) {
                this.refresh_token = str;
            }
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

        /* loaded from: classes.dex */
        public static class LightBean {
            private List<Integer> state;

            public static LightBean objectFromData(String str) {
                return (LightBean) new Gson().fromJson(str, (Class<Object>) LightBean.class);
            }

            public List<Integer> getState() {
                return this.state;
            }

            public void setState(List<Integer> list) {
                this.state = list;
            }
        }

        /* loaded from: classes.dex */
        public static class AlertBean {
            private List<StateBean> state;

            public static AlertBean objectFromData(String str) {
                return (AlertBean) new Gson().fromJson(str, (Class<Object>) AlertBean.class);
            }

            public List<StateBean> getState() {
                return this.state;
            }

            public void setState(List<StateBean> list) {
                this.state = list;
            }

            /* loaded from: classes.dex */
            public static class StateBean {
                private int num;

                /* renamed from: on */
                private int f958on;
                private String repeat;
                private String tag;
                private int time;

                public static StateBean objectFromData(String str) {
                    return (StateBean) new Gson().fromJson(str, (Class<Object>) StateBean.class);
                }

                public int getNum() {
                    return this.num;
                }

                public void setNum(int i) {
                    this.num = i;
                }

                public int getTime() {
                    return this.time;
                }

                public void setTime(int i) {
                    this.time = i;
                }

                public String getRepeat() {
                    return this.repeat;
                }

                public void setRepeat(String str) {
                    this.repeat = str;
                }

                public String getTag() {
                    return this.tag;
                }

                public void setTag(String str) {
                    this.tag = str;
                }

                public int getOn() {
                    return this.f958on;
                }

                public void setOn(int i) {
                    this.f958on = i;
                }
            }
        }

        /* loaded from: classes.dex */
        public static class CityBean {
            private CoordBean coord;
            private String country;

            /* renamed from: id */
            private int f959id;
            private String name;
            private String state;

            public static CityBean objectFromData(String str) {
                return (CityBean) new Gson().fromJson(str, (Class<Object>) CityBean.class);
            }

            public int getId() {
                return this.f959id;
            }

            public void setId(int i) {
                this.f959id = i;
            }

            public String getName() {
                return this.name;
            }

            public void setName(String str) {
                this.name = str;
            }

            public String getState() {
                return this.state;
            }

            public void setState(String str) {
                this.state = str;
            }

            public String getCountry() {
                return this.country;
            }

            public void setCountry(String str) {
                this.country = str;
            }

            public CoordBean getCoord() {
                return this.coord;
            }

            public void setCoord(CoordBean coordBean) {
                this.coord = coordBean;
            }

            /* loaded from: classes.dex */
            public static class CoordBean {
                private double lat;
                private double lon;

                public static CoordBean objectFromData(String str) {
                    return (CoordBean) new Gson().fromJson(str, (Class<Object>) CoordBean.class);
                }

                public double getLon() {
                    return this.lon;
                }

                public void setLon(double d) {
                    this.lon = d;
                }

                public double getLat() {
                    return this.lat;
                }

                public void setLat(double d) {
                    this.lat = d;
                }
            }
        }

        /* loaded from: classes.dex */
        public static class TimezoneBean {
            private String code;
            private String name;
            private int offset;

            public static TimezoneBean objectFromData(String str) {
                return (TimezoneBean) new Gson().fromJson(str, (Class<Object>) TimezoneBean.class);
            }

            public String getName() {
                return this.name;
            }

            public void setName(String str) {
                this.name = str;
            }

            public String getCode() {
                return this.code;
            }

            public void setCode(String str) {
                this.code = str;
            }

            public int getOffset() {
                return this.offset;
            }

            public void setOffset(int i) {
                this.offset = i;
            }
        }
    }
}
