package com.living.emo.util;

import kotlin.UByte;
/* loaded from: classes.dex */
public class ByteUtil {
    private static final String TAG = "com.living.emo.util.ByteUtil";

    public static int unsigned(byte b) {
        return b < 0 ? b & UByte.MAX_VALUE : b;
    }

    public static int byteTotal(byte b, byte b2) {
        return unsigned(b) + (unsigned(b2) * 256);
    }

    public static byte[] byteMerger(byte[] bArr, byte[] bArr2, int i) {
        byte[] bArr3 = new byte[(bArr.length + bArr2.length) - i];
        System.arraycopy(bArr, 0, bArr3, 0, bArr.length);
        System.arraycopy(bArr2, i, bArr3, bArr.length, bArr2.length - i);
        return bArr3;
    }

    public static byte[] strToByteArray(String str) {
        int length = str.getBytes().length;
        int i = length % 256;
        byte[] bArr = {-69, -86, (byte) i, (byte) (length / 256)};
        String str2 = TAG;
        LogUtil.m65d(str2, String.valueOf(length));
        LogUtil.m65d(str2, String.valueOf(i));
        return byteMerger(bArr, str.getBytes(), 0);
    }

    public static byte[] HexString2Bytes(String str) {
        if (str == null || str.length() == 0) {
            return null;
        }
        byte[] bArr = new byte[str.length() / 2];
        byte[] bytes = str.getBytes();
        for (int i = 0; i < bytes.length / 2; i++) {
            int i2 = i * 2;
            bArr[i] = uniteBytes(bytes[i2], bytes[i2 + 1]);
        }
        return bArr;
    }

    public static byte uniteBytes(byte b, byte b2) {
        return (byte) (((byte) (Byte.decode("0x" + new String(new byte[]{b})).byteValue() << 4)) ^ Byte.decode("0x" + new String(new byte[]{b2})).byteValue());
    }
}
