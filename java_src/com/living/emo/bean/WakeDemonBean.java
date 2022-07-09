package com.living.emo.bean;

import com.living.emo.util.CommandUtil;
/* loaded from: classes.dex */
public class WakeDemonBean {

    /* loaded from: classes.dex */
    public interface WakeDemonResponse {
        void error();

        void gameOver();

        void gameReady();

        void startGame();
    }

    public static void ludoNotify(byte[] bArr, WakeDemonResponse wakeDemonResponse) {
        if (bArr[3] != CommandUtil.CMD_ORDER_DATA[3]) {
            return;
        }
        if (bArr[4] == CommandUtil.CMD_ORDER_DATA[2]) {
            if (bArr[5] != 1) {
                wakeDemonResponse.error();
            } else {
                wakeDemonResponse.gameReady();
            }
        } else if (bArr[4] == CommandUtil.CMD_ORDER_DATA[4]) {
            if (bArr[5] == 1) {
                wakeDemonResponse.startGame();
            }
        } else if (bArr[4] == CommandUtil.CMD_ORDER_DATA[1]) {
            wakeDemonResponse.gameOver();
        }
    }
}
