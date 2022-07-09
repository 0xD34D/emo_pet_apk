package com.living.emo.bean.domain;

import com.google.gson.annotations.SerializedName;
/* loaded from: classes.dex */
public class Version {
    private int errcode;
    private String errmsg;
    @SerializedName("version-name")
    private String versionName;
    @SerializedName("version-num")
    private int versionNum;

    public String toString() {
        return "Version{errcode=" + this.errcode + ", errmsg='" + this.errmsg + "', versionName='" + this.versionName + "', versionNum=" + this.versionNum + '}';
    }

    public int getErrcode() {
        return this.errcode;
    }

    public void setErrcode(int i) {
        this.errcode = i;
    }

    public String getErrmsg() {
        return this.errmsg;
    }

    public void setErrmsg(String str) {
        this.errmsg = str;
    }

    public String getVersionName() {
        return this.versionName;
    }

    public void setVersionName(String str) {
        this.versionName = str;
    }

    public int getVersionNum() {
        return this.versionNum;
    }

    public void setVersionNum(int i) {
        this.versionNum = i;
    }
}
