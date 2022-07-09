package com.living.emo.bean;
/* loaded from: classes.dex */
public class UtilitiesBean {

    /* loaded from: classes.dex */
    public interface UtilitiesResponse {
        void startSet();
    }

    public static void utilitiesNotify(byte[] bArr, UtilitiesResponse utilitiesResponse) {
        if (bArr[3] == 4 && bArr[4] == 2 && bArr[5] == 1) {
            utilitiesResponse.startSet();
        }
    }
}
