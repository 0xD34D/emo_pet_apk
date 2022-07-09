package com.living.emo.util;

import kotlin.UByte;
/* loaded from: classes.dex */
public class CommandUtil {
    private static final int MAX_BYTE_NUMBER = 255;
    public static final int[] CMD_CATEGORY = {0, 1, 2, 3, 4, 5};
    public static final int[] CMD_ORDER = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16};
    public static final int[] CMD_ORDER_DATA = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16};
    public static final int[] CMD_GAME_NUMBER = {1, 2, 3, 4, 5, 6, 7};
    private static final String TAG = "zxl::" + CommandUtil.class.getSimpleName();
    private static int sort = 1;

    public static byte[] cmd(int... iArr) {
        if (sort >= 255) {
            sort = 1;
        }
        byte[] bArr = new byte[20];
        bArr[0] = -35;
        bArr[1] = -52;
        bArr[2] = (byte) sort;
        int length = iArr.length;
        for (int i = 0; i < length; i++) {
            bArr[i + 3] = (byte) iArr[i];
        }
        sort++;
        LogUtil.m64e(TAG, "app: " + bytesToHexString(bArr));
        return bArr;
    }

    public static String bytesToHexString(byte[] bArr) {
        StringBuilder sb = new StringBuilder("");
        if (bArr == null || bArr.length <= 0) {
            return null;
        }
        for (byte b : bArr) {
            String hexString = Integer.toHexString(b & UByte.MAX_VALUE);
            if (hexString.length() < 2) {
                sb.append(0);
            }
            sb.append(hexString);
        }
        return sb.toString();
    }

    public static byte[] cmd0(int... iArr) {
        if (sort >= 255) {
            sort = 0;
        }
        byte[] bArr = new byte[20];
        bArr[0] = -35;
        bArr[1] = -52;
        bArr[2] = (byte) sort;
        int length = iArr.length;
        for (int i = 0; i < length; i++) {
            bArr[i + 3] = (byte) iArr[i];
        }
        sort++;
        LogUtil.m64e(TAG, "cmd0: " + bytesToHexString(bArr));
        return bArr;
    }

    public static byte[] startGame() {
        return cmd(CMD_CATEGORY[3], CMD_ORDER[4], CMD_ORDER_DATA[1]);
    }

    public static byte[] enterApp(int i) {
        return cmd(CMD_CATEGORY[3], CMD_ORDER[2], CMD_ORDER_DATA[i]);
    }

    public static byte[] outApp() {
        return cmd0(CMD_CATEGORY[3], CMD_ORDER[1]);
    }

    public static byte[] playAnim(int... iArr) {
        return cmd(CMD_CATEGORY[3], CMD_ORDER[3], iArr[0], iArr[1]);
    }

    public static byte[] playAnimNoReply(int... iArr) {
        byte[] bArr = new byte[20];
        bArr[0] = -35;
        bArr[1] = -52;
        bArr[2] = 0;
        bArr[3] = 3;
        bArr[4] = 3;
        int length = iArr.length;
        for (int i = 0; i < length; i++) {
            bArr[i + 5] = (byte) iArr[i];
        }
        String str = TAG;
        LogUtil.m64e(str, "playAnimNoReply: " + bytesToHexString(bArr));
        return bArr;
    }

    public static byte[] dazzling(int... iArr) {
        return cmd(CMD_CATEGORY[3], CMD_ORDER[5], CMD_ORDER_DATA[3], iArr[0], iArr[1]);
    }

    public static byte[] legShaking(int... iArr) {
        return cmd(CMD_CATEGORY[3], CMD_ORDER[5], CMD_ORDER_DATA[4], iArr[0], iArr[1]);
    }

    public static byte[] dance(int... iArr) {
        return cmd(CMD_CATEGORY[3], CMD_ORDER[5], CMD_ORDER_DATA[2], iArr[0], iArr[1]);
    }

    public static byte[] achiev(int i) {
        int[] iArr = CMD_ORDER_DATA;
        return cmd(CMD_CATEGORY[3], CMD_ORDER[5], iArr[6], iArr[1], i);
    }

    public static byte[] stay() {
        return cmd(CMD_CATEGORY[3], CMD_ORDER[4], CMD_ORDER_DATA[2]);
    }

    public static byte[] memoryDance(int[] iArr) {
        byte[] cmd = cmd(CMD_CATEGORY[3], CMD_ORDER[5], CMD_ORDER_DATA[1]);
        cmd[6] = (byte) iArr.length;
        for (int i = 0; i < iArr.length; i++) {
            cmd[i + 7] = (byte) iArr[i];
        }
        String str = TAG;
        LogUtil.m64e(str, "app:=>memoryDance: " + bytesToHexString(cmd));
        return cmd;
    }

    public static byte[] enterSet() {
        return cmd(CMD_CATEGORY[4], CMD_ORDER_DATA[2]);
    }

    public static byte[] outSet() {
        return cmd(CMD_CATEGORY[4], CMD_ORDER_DATA[1]);
    }

    public static byte[] lightOnOrOff(int... iArr) {
        int[] iArr2 = CMD_ORDER_DATA;
        return cmd(CMD_CATEGORY[4], iArr2[3], iArr2[2], iArr[0], iArr[1]);
    }

    public static byte[] noReply(int... iArr) {
        byte[] bArr = new byte[20];
        bArr[0] = -35;
        bArr[1] = -52;
        bArr[2] = 0;
        int length = iArr.length;
        for (int i = 0; i < length; i++) {
            bArr[i + 3] = (byte) iArr[i];
        }
        String str = TAG;
        LogUtil.m64e(str, "app: " + bytesToHexString(bArr));
        return bArr;
    }

    /* renamed from: go */
    public static byte[] m66go() {
        int[] iArr = CMD_ORDER_DATA;
        return noReply(CMD_CATEGORY[3], iArr[4], iArr[5]);
    }

    public static byte[] back() {
        int[] iArr = CMD_ORDER_DATA;
        return noReply(CMD_CATEGORY[3], iArr[4], iArr[6]);
    }

    public static byte[] left() {
        int[] iArr = CMD_ORDER_DATA;
        return noReply(CMD_CATEGORY[3], iArr[4], iArr[7]);
    }

    public static byte[] right() {
        int[] iArr = CMD_ORDER_DATA;
        return noReply(CMD_CATEGORY[3], iArr[4], iArr[8]);
    }

    public static byte[] stop() {
        int[] iArr = CMD_ORDER_DATA;
        return noReply(CMD_CATEGORY[3], iArr[4], iArr[9]);
    }

    public static byte[] statusOnOff(int i) {
        return cmd(CMD_CATEGORY[0], CMD_ORDER_DATA[0], i);
    }

    public static byte[] syncAOnOff(int i) {
        return cmd(CMD_CATEGORY[2], CMD_ORDER_DATA[0], i);
    }

    public static byte[] resetting() {
        int[] iArr = CMD_ORDER_DATA;
        return noReply(CMD_CATEGORY[3], iArr[5], iArr[7]);
    }

    public static byte[] timeout() {
        int[] iArr = CMD_ORDER_DATA;
        return noReply(CMD_CATEGORY[3], iArr[5], iArr[8]);
    }
}
