package com.living.emo.bean;
/* loaded from: classes.dex */
public class InteractBean {
    private String mDescription;
    private String mDetails;
    private int mImgRes;
    private String mTitle;

    public InteractBean(String str, int i, String str2, String str3) {
        this.mTitle = str;
        this.mImgRes = i;
        this.mDescription = str2;
        this.mDetails = str3;
    }

    public String getTitle() {
        return this.mTitle;
    }

    public void setTitle(String str) {
        this.mTitle = str;
    }

    public int getImgRes() {
        return this.mImgRes;
    }

    public void setImgRes(int i) {
        this.mImgRes = i;
    }

    public String getDescription() {
        return this.mDescription;
    }

    public void setDescription(String str) {
        this.mDescription = str;
    }

    public String getDetails() {
        return this.mDetails;
    }

    public void setDetails(String str) {
        this.mDetails = str;
    }
}
