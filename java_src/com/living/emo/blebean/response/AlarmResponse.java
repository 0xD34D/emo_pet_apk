package com.living.emo.blebean.response;

import com.google.gson.Gson;
import java.util.List;
/* loaded from: classes.dex */
public class AlarmResponse {
    private DataBean data;
    private String type;

    public static AlarmResponse objectFromData(String str) {
        return (AlarmResponse) new Gson().fromJson(str, (Class<Object>) AlarmResponse.class);
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
        private AlarmBean alarm;

        public static DataBean objectFromData(String str) {
            return (DataBean) new Gson().fromJson(str, (Class<Object>) DataBean.class);
        }

        public AlarmBean getAlarm() {
            return this.alarm;
        }

        public void setAlarm(AlarmBean alarmBean) {
            this.alarm = alarmBean;
        }

        /* loaded from: classes.dex */
        public static class AlarmBean {
            private List<StateBean> state;

            public static AlarmBean objectFromData(String str) {
                return (AlarmBean) new Gson().fromJson(str, (Class<Object>) AlarmBean.class);
            }

            public List<StateBean> getState() {
                return this.state;
            }

            public void setState(List<StateBean> list) {
                this.state = list;
            }

            /* loaded from: classes.dex */
            public static class StateBean {
                private int index;

                /* renamed from: on */
                private int f975on;
                private String recurrence;
                private String tag;
                private String time;

                public static StateBean objectFromData(String str) {
                    return (StateBean) new Gson().fromJson(str, (Class<Object>) StateBean.class);
                }

                public int getIndex() {
                    return this.index;
                }

                public void setIndex(int i) {
                    this.index = i;
                }

                public int getOn() {
                    return this.f975on;
                }

                public void setOn(int i) {
                    this.f975on = i;
                }

                public String getTime() {
                    return this.time;
                }

                public void setTime(String str) {
                    this.time = str;
                }

                public String getRecurrence() {
                    return this.recurrence;
                }

                public void setRecurrence(String str) {
                    this.recurrence = str;
                }

                public String getTag() {
                    return this.tag;
                }

                public void setTag(String str) {
                    this.tag = str;
                }
            }
        }
    }
}
