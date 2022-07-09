package com.living.emo.bean;

import com.living.emo.util.CommandUtil;
/* loaded from: classes.dex */
public class MemoryBean {

    /* loaded from: classes.dex */
    public interface MemoryResponse {
        void dance();

        void danceError();

        void error();

        void gameOver();

        void gameReady();

        void startGame();
    }

    public static void MemoryNotify(byte[] bArr, MemoryResponse memoryResponse) {
        if (bArr[3] != CommandUtil.CMD_ORDER_DATA[3]) {
            return;
        }
        if (bArr[4] == CommandUtil.CMD_ORDER_DATA[2]) {
            if (bArr[5] != 1) {
                memoryResponse.error();
            } else {
                memoryResponse.gameReady();
            }
        } else if (bArr[4] == CommandUtil.CMD_ORDER_DATA[5]) {
            byte b = bArr[5];
            if (b == 0) {
                memoryResponse.danceError();
            } else if (b != 1) {
                memoryResponse.error();
            } else {
                memoryResponse.dance();
            }
        } else if (bArr[4] == CommandUtil.CMD_ORDER_DATA[4]) {
            if (bArr[5] == 1) {
                memoryResponse.startGame();
            }
        } else if (bArr[4] == CommandUtil.CMD_ORDER_DATA[1]) {
            memoryResponse.gameOver();
        }
    }
}
