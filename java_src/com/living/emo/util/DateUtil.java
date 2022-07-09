package com.living.emo.util;

import java.text.SimpleDateFormat;
/* loaded from: classes.dex */
public class DateUtil {
    public static String formatDate(long j) {
        return new SimpleDateFormat("mm:ss").format(Long.valueOf(j));
    }
}
