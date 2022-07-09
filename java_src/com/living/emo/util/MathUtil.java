package com.living.emo.util;

import android.media.AudioManager;
import com.living.emo.MyApplication;
import java.text.DecimalFormat;
/* loaded from: classes.dex */
public class MathUtil {
    public static float division(int i, int i2) {
        return i2 / i;
    }

    public static float multiplication(float f, float f2) {
        return f2 * f;
    }

    public static float twoDecimal(float f) {
        return (float) (Math.round(f * 100.0f) / 100.0d);
    }

    public static float getDecimalVolume() {
        AudioManager audioManager = (AudioManager) MyApplication.getContext().getSystemService("audio");
        return twoDecimal(multiplication(twoDecimal(division(audioManager.getStreamMaxVolume(3), audioManager.getStreamVolume(3))), 0.5f));
    }

    public static float format2Decimal(float f) {
        return Float.parseFloat(new DecimalFormat(".00").format(f));
    }
}
