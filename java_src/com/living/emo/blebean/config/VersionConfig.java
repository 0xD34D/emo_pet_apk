package com.living.emo.blebean.config;

import com.google.gson.Gson;
/* loaded from: classes.dex */
public class VersionConfig {
    private int num;
    private String type;

    public static VersionConfig objectFromData(String str) {
        return (VersionConfig) new Gson().fromJson(str, (Class<Object>) VersionConfig.class);
    }

    public String getType() {
        return this.type;
    }

    public void setType(String str) {
        this.type = str;
    }

    public int getNum() {
        return this.num;
    }

    public void setNum(int i) {
        this.num = i;
    }
}
