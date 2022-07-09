package com.living.emo.blebean.response;

import com.google.gson.Gson;
/* loaded from: classes.dex */
public class CityResponse {
    private DataBean data;
    private String type;

    public static CityResponse objectFromData(String str) {
        return (CityResponse) new Gson().fromJson(str, (Class<Object>) CityResponse.class);
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
        private CityBean city;

        public static DataBean objectFromData(String str) {
            return (DataBean) new Gson().fromJson(str, (Class<Object>) DataBean.class);
        }

        public CityBean getCity() {
            return this.city;
        }

        public void setCity(CityBean cityBean) {
            this.city = cityBean;
        }

        /* loaded from: classes.dex */
        public static class CityBean {
            private CoordBean coord;
            private String country;

            /* renamed from: id */
            private int f976id;
            private String name;
            private String state;

            public String toString() {
                return "CityBean{id=" + this.f976id + ", name='" + this.name + "', state='" + this.state + "', country='" + this.country + "', coord=" + this.coord + '}';
            }

            public static CityBean objectFromData(String str) {
                return (CityBean) new Gson().fromJson(str, (Class<Object>) CityBean.class);
            }

            public int getId() {
                return this.f976id;
            }

            public void setId(int i) {
                this.f976id = i;
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
    }
}
