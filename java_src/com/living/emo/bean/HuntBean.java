package com.living.emo.bean;

import com.living.emo.util.CommandUtil;
/* loaded from: classes.dex */
public class HuntBean {

    /* loaded from: classes.dex */
    public interface HuntResponse {
        void error();

        void eventReport(byte b);

        void findHunt(int i);

        void gameOver();

        void gameReady();

        void result(int i, int i2, int i3);

        void signalFeedback(int i);
    }

    public static void HuntNotify(byte[] bArr, HuntResponse huntResponse) {
        if (bArr[3] == CommandUtil.CMD_ORDER_DATA[3]) {
            if (bArr[4] == CommandUtil.CMD_ORDER_DATA[2]) {
                if (bArr[5] != 1) {
                    huntResponse.error();
                } else {
                    huntResponse.gameReady();
                }
            } else if (bArr[4] == CommandUtil.CMD_ORDER_DATA[1]) {
                huntResponse.gameOver();
            }
        }
        if (bArr[2] == 0 && bArr[3] == CommandUtil.CMD_ORDER_DATA[3] && bArr[4] == CommandUtil.CMD_ORDER_DATA[5]) {
            if (bArr[5] == CommandUtil.CMD_ORDER_DATA[1]) {
                huntResponse.signalFeedback(bArr[6]);
            }
            if (bArr[5] == CommandUtil.CMD_ORDER_DATA[2]) {
                huntResponse.findHunt(bArr[6]);
            }
            if (bArr[5] == CommandUtil.CMD_ORDER_DATA[3]) {
                huntResponse.result(bArr[6], bArr[7], bArr[8]);
            }
        }
        if (bArr[2] == 0 && bArr[3] == CommandUtil.CMD_ORDER_DATA[3] && bArr[4] == CommandUtil.CMD_ORDER_DATA[4]) {
            huntResponse.eventReport(bArr[5]);
        }
    }
}
