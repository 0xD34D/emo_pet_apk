package com.living.emo.util;

import android.util.Log;
/* loaded from: classes.dex */
public class LogUtil {
    private static boolean isDump = true;

    public static void init(boolean z) {
        isDump = z;
    }

    /* renamed from: d */
    public static void m65d(String str, String str2) {
        if (isDump) {
            Log.d(str, str2);
        }
    }

    /* renamed from: w */
    public static void m61w(String str, String str2) {
        if (isDump) {
            Log.w(str, str2);
        }
    }

    /* renamed from: e */
    public static void m64e(String str, String str2) {
        if (isDump) {
            Log.e(str, str2);
        }
    }

    /* renamed from: i */
    public static void m63i(String str, String str2) {
        if (isDump) {
            Log.i(str, str2);
        }
    }

    /* renamed from: v */
    public static void m62v(String str, String str2) {
        if (isDump) {
            Log.v(str, str2);
        }
    }
}
