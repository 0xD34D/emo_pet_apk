package com.living.emo.util;
/* loaded from: classes.dex */
public class IntUtil {
    private static final int DEFAULT_MAX_DIVISOR = 256;

    public static int[] intTOInArray(int i) {
        return new int[]{i % 256, i / 256};
    }
}
