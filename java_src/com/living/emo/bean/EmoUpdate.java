package com.living.emo.bean;
/* loaded from: classes.dex */
public class EmoUpdate {
    private static final EmoUpdate instance = new EmoUpdate();
    private int mEmoVersion;
    private int mServerVersion;
    private String mEmoVersionName = "";
    private String mServerVersionName = "";
    private boolean isUpdate = false;

    private EmoUpdate() {
    }

    public static EmoUpdate getInstance() {
        return instance;
    }

    public int getEmoVersion() {
        return this.mEmoVersion;
    }

    public void setEmoVersion(int i) {
        if (this.mEmoVersion >= this.mServerVersion) {
            this.isUpdate = false;
        } else {
            this.isUpdate = true;
        }
        this.mEmoVersion = i;
    }

    public String getEmoVersionName() {
        return this.mEmoVersionName;
    }

    public void setEmoVersionName(String str) {
        this.mEmoVersionName = str;
    }

    public int getServerVersion() {
        return this.mServerVersion;
    }

    public void setServerVersion(int i) {
        if (this.mEmoVersion >= i) {
            this.isUpdate = false;
        } else {
            this.isUpdate = true;
        }
        this.mServerVersion = i;
    }

    public String getServerVersionName() {
        return this.mServerVersionName;
    }

    public void setServerVersionName(String str) {
        this.mServerVersionName = str;
    }

    public boolean isUpdate() {
        return this.isUpdate;
    }

    public void setUpdate(boolean z) {
        this.isUpdate = z;
    }
}
