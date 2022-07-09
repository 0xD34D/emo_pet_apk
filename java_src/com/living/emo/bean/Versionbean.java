package com.living.emo.bean;

import com.living.emo.bean.domain.Version;
/* loaded from: classes.dex */
public class Versionbean {
    private static Versionbean instance;
    private Version mData = null;

    public static Versionbean getInstance() {
        if (instance == null) {
            instance = new Versionbean();
        }
        return instance;
    }

    public void setData(Version version) {
        this.mData = version;
    }

    public Version getData() {
        return this.mData;
    }
}
