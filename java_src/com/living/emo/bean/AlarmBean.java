package com.living.emo.bean;

import androidx.core.app.NotificationCompat;
/* loaded from: classes.dex */
public class AlarmBean implements Comparable<AlarmBean> {
    private int index;
    private boolean isUpdate;

    /* renamed from: on */
    private int f954on;
    private String recurrence;
    private String tag;
    private String time;

    public AlarmBean(int i, int i2, String str, String str2, String str3, boolean z) {
        this.isUpdate = false;
        this.index = 1;
        this.f954on = 0;
        this.time = "00:00";
        this.recurrence = "everyday";
        this.tag = NotificationCompat.CATEGORY_ALARM;
        this.index = i;
        this.f954on = i2;
        this.time = str;
        this.recurrence = str2;
        this.tag = str3;
        this.isUpdate = z;
    }

    public int getIndex() {
        return this.index;
    }

    public boolean isUpdate() {
        return this.isUpdate;
    }

    public void setUpdate(boolean z) {
        this.isUpdate = z;
    }

    public void setIndex(int i) {
        this.index = i;
    }

    public int getOn() {
        return this.f954on;
    }

    public void setOn(int i) {
        this.f954on = i;
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

    public String toString() {
        return "AlarmBean{index=" + this.index + ", on=" + this.f954on + ", time='" + this.time + "', recurrence='" + this.recurrence + "', tag='" + this.tag + "'}";
    }

    public int compareTo(AlarmBean alarmBean) {
        return this.index - alarmBean.getIndex();
    }
}
