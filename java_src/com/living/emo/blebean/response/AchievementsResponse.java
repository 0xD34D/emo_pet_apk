package com.living.emo.blebean.response;

import com.google.gson.Gson;
import java.util.List;
/* loaded from: classes.dex */
public class AchievementsResponse {
    private DataBean data;
    private String type;

    public static AchievementsResponse objectFromData(String str) {
        return (AchievementsResponse) new Gson().fromJson(str, (Class<Object>) AchievementsResponse.class);
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
        private AchievementsBean achievements;

        public static DataBean objectFromData(String str) {
            return (DataBean) new Gson().fromJson(str, (Class<Object>) DataBean.class);
        }

        public AchievementsBean getAchievements() {
            return this.achievements;
        }

        public void setAchievements(AchievementsBean achievementsBean) {
            this.achievements = achievementsBean;
        }

        /* loaded from: classes.dex */
        public static class AchievementsBean {
            private List<Integer> unlocked;

            public static AchievementsBean objectFromData(String str) {
                return (AchievementsBean) new Gson().fromJson(str, (Class<Object>) AchievementsBean.class);
            }

            public List<Integer> getUnlocked() {
                return this.unlocked;
            }

            public void setUnlocked(List<Integer> list) {
                this.unlocked = list;
            }
        }
    }
}
