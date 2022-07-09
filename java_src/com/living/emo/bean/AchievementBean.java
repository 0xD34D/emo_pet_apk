package com.living.emo.bean;
/* loaded from: classes.dex */
public class AchievementBean {
    private String desc;
    private boolean isAvailable = false;
    private boolean isReach;
    private int res;

    public boolean isAvailable() {
        return this.isAvailable;
    }

    public AchievementBean setAvailable(boolean z) {
        this.isAvailable = z;
        return this;
    }

    public AchievementBean(int i, String str, boolean z) {
        this.res = i;
        this.desc = str;
        this.isReach = z;
    }

    public int getRes() {
        return this.res;
    }

    public void setRes(int i) {
        this.res = i;
    }

    public String getDesc() {
        return this.desc;
    }

    public void setDesc(String str) {
        this.desc = str;
    }

    public boolean isReach() {
        return this.isReach;
    }

    public void setReach(boolean z) {
        this.isReach = z;
    }
}
