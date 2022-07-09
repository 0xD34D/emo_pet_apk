package com.living.emo.blebean.config;

import com.google.gson.Gson;
/* loaded from: classes.dex */
public class PreferenceConfig {
    private DataBean data;
    private String type;

    public static PreferenceConfig objectFromData(String str) {
        return (PreferenceConfig) new Gson().fromJson(str, (Class<Object>) PreferenceConfig.class);
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
        private PreferenceBean preference;

        public static DataBean objectFromData(String str) {
            return (DataBean) new Gson().fromJson(str, (Class<Object>) DataBean.class);
        }

        public PreferenceBean getPreference() {
            return this.preference;
        }

        public void setPreference(PreferenceBean preferenceBean) {
            this.preference = preferenceBean;
        }

        /* loaded from: classes.dex */
        public static class PreferenceBean {
            private int auto_update;
            private int length;
            private int schedule_sound;
            private int temperature;
            private int volume;

            public static PreferenceBean objectFromData(String str) {
                return (PreferenceBean) new Gson().fromJson(str, (Class<Object>) PreferenceBean.class);
            }

            public int getVolume() {
                return this.volume;
            }

            public void setVolume(int i) {
                this.volume = i;
            }

            public int getTemperature() {
                return this.temperature;
            }

            public void setTemperature(int i) {
                this.temperature = i;
            }

            public int getLength() {
                return this.length;
            }

            public void setLength(int i) {
                this.length = i;
            }

            public int getAuto_update() {
                return this.auto_update;
            }

            public void setAuto_update(int i) {
                this.auto_update = i;
            }

            public int getSchedule_sound() {
                return this.schedule_sound;
            }

            public void setSchedule_sound(int i) {
                this.schedule_sound = i;
            }
        }
    }
}
