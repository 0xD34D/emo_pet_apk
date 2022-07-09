package com.living.emo.bean;
/* loaded from: classes.dex */
public class LightBean {

    /* loaded from: classes.dex */
    public interface LightResponse {
        void lightSetFailure();

        void lightSetSuccess();
    }

    public static void lightNotify(byte[] bArr, LightResponse lightResponse) {
        if (bArr[3] != 4) {
            return;
        }
        if (bArr[4] == 3 && bArr[5] == 1) {
            lightResponse.lightSetSuccess();
        } else {
            lightResponse.lightSetFailure();
        }
    }
}
