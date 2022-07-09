package com.living.emo.bean;

import com.living.emo.util.CommandUtil;
/* loaded from: classes.dex */
public class AmusementBean {

    /* loaded from: classes.dex */
    public interface AmusementResponse {
        void GameOver();

        void dance();

        void dazzling();

        void error();

        void gameReady();

        void legShaking();

        void stay();
    }

    public static void AmusementNotify(byte[] bArr, AmusementResponse amusementResponse) {
        if (bArr[3] != CommandUtil.CMD_ORDER_DATA[3]) {
            return;
        }
        if (bArr[4] == CommandUtil.CMD_ORDER_DATA[2]) {
            if (bArr[5] != 1) {
                amusementResponse.error();
            } else {
                amusementResponse.gameReady();
            }
        } else if (bArr[4] == CommandUtil.CMD_ORDER_DATA[4]) {
            if (bArr[5] == 2) {
                amusementResponse.stay();
            }
        } else if (bArr[4] == CommandUtil.CMD_ORDER_DATA[5]) {
            byte b = bArr[5];
            if (b == 2) {
                amusementResponse.dance();
            } else if (b == 3) {
                amusementResponse.legShaking();
            } else if (b == 4) {
                amusementResponse.dazzling();
            }
        } else if (bArr[4] == CommandUtil.CMD_ORDER_DATA[1]) {
            amusementResponse.GameOver();
        }
    }
}
