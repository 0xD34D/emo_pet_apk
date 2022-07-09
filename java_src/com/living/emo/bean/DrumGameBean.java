package com.living.emo.bean;

import com.living.emo.util.CommandUtil;
/* loaded from: classes.dex */
public class DrumGameBean {

    /* loaded from: classes.dex */
    public interface DrumGameResponse {
        void animError();

        void animSuccess();

        void dance();

        void dazzling();

        void error();

        void gameOver();

        void gameReady();

        void legShaking();

        void startGame();
    }

    public static void drumNotify(byte[] bArr, DrumGameResponse drumGameResponse) {
        if (bArr[3] != CommandUtil.CMD_ORDER_DATA[3]) {
            return;
        }
        if (bArr[4] == CommandUtil.CMD_ORDER_DATA[2]) {
            if (bArr[5] != 1) {
                drumGameResponse.error();
            } else {
                drumGameResponse.gameReady();
            }
        } else if (bArr[4] == CommandUtil.CMD_ORDER_DATA[3]) {
            byte b = bArr[5];
            if (b == 0) {
                drumGameResponse.animError();
            } else if (b != 1) {
                drumGameResponse.error();
            } else {
                drumGameResponse.animSuccess();
            }
        } else if (bArr[4] == CommandUtil.CMD_ORDER_DATA[4]) {
            if (bArr[5] == 1) {
                drumGameResponse.startGame();
            }
        } else if (bArr[4] == CommandUtil.CMD_ORDER_DATA[1]) {
            drumGameResponse.gameOver();
        } else if (bArr[4] == CommandUtil.CMD_ORDER_DATA[5]) {
            byte b2 = bArr[5];
            if (b2 == 2) {
                drumGameResponse.dance();
            } else if (b2 == 3) {
                drumGameResponse.dazzling();
            } else if (b2 == 4) {
                drumGameResponse.legShaking();
            }
        }
    }
}
