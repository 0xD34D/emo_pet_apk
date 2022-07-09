package com.living.emo.bean;

import com.living.emo.util.CommandUtil;
/* loaded from: classes.dex */
public class LudoGameBean {

    /* loaded from: classes.dex */
    public interface LudoGameResponse {
        void animError();

        void animSuccess();

        void error();

        void gameOver();

        void gameReady();

        void startGame();
    }

    public static void ludoNotify(byte[] bArr, LudoGameResponse ludoGameResponse) {
        if (bArr[3] != CommandUtil.CMD_ORDER_DATA[3]) {
            return;
        }
        if (bArr[4] == CommandUtil.CMD_ORDER_DATA[2]) {
            if (bArr[5] != 1) {
                ludoGameResponse.error();
            } else {
                ludoGameResponse.gameReady();
            }
        } else if (bArr[4] == CommandUtil.CMD_ORDER_DATA[3]) {
            byte b = bArr[5];
            if (b == 0) {
                ludoGameResponse.animError();
            } else if (b != 1) {
                ludoGameResponse.error();
            } else {
                ludoGameResponse.animSuccess();
            }
        } else if (bArr[4] == CommandUtil.CMD_ORDER_DATA[4]) {
            if (bArr[5] == 1) {
                ludoGameResponse.startGame();
            }
        } else if (bArr[4] == CommandUtil.CMD_ORDER_DATA[1]) {
            ludoGameResponse.gameOver();
        }
    }
}
