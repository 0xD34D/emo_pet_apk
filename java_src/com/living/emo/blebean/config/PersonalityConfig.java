package com.living.emo.blebean.config;

import com.google.gson.Gson;
/* loaded from: classes.dex */
public class PersonalityConfig {
    private DataBean data;
    private String type;

    public static PersonalityConfig objectFromData(String str) {
        return (PersonalityConfig) new Gson().fromJson(str, (Class<Object>) PersonalityConfig.class);
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
        private PersonalityBean personality;

        public static DataBean objectFromData(String str) {
            return (DataBean) new Gson().fromJson(str, (Class<Object>) DataBean.class);
        }

        public PersonalityBean getPersonality() {
            return this.personality;
        }

        public void setPersonality(PersonalityBean personalityBean) {
            this.personality = personalityBean;
        }

        /* loaded from: classes.dex */
        public static class PersonalityBean {
            private int age;
            private String birthday;
            private String color;
            private int lucky_number;
            private String name;
            private String number;
            private String sign;

            public static PersonalityBean objectFromData(String str) {
                return (PersonalityBean) new Gson().fromJson(str, (Class<Object>) PersonalityBean.class);
            }

            public String getName() {
                return this.name;
            }

            public void setName(String str) {
                this.name = str;
            }

            public int getAge() {
                return this.age;
            }

            public void setAge(int i) {
                this.age = i;
            }

            public String getBirthday() {
                return this.birthday;
            }

            public void setBirthday(String str) {
                this.birthday = str;
            }

            public String getColor() {
                return this.color;
            }

            public void setColor(String str) {
                this.color = str;
            }

            public int getLucky_number() {
                return this.lucky_number;
            }

            public void setLucky_number(int i) {
                this.lucky_number = i;
            }

            public String getSign() {
                return this.sign;
            }

            public void setSign(String str) {
                this.sign = str;
            }

            public String getNumber() {
                return this.number;
            }

            public void setNumber(String str) {
                this.number = str;
            }
        }
    }
}
