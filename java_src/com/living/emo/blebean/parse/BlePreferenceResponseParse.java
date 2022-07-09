package com.living.emo.blebean.parse;

import com.living.emo.blebean.config.PreferenceConfig;
/* loaded from: classes.dex */
public class BlePreferenceResponseParse {

    /* loaded from: classes.dex */
    public interface Callback {
        void response(int i, int i2, int i3, int i4, int i5);
    }

    public static void preference(String str, Callback callback) {
        PreferenceConfig objectFromData = PreferenceConfig.objectFromData(str);
        if (objectFromData != null && objectFromData.getData() != null && objectFromData.getData().getPreference() != null) {
            PreferenceConfig.DataBean.PreferenceBean preference = objectFromData.getData().getPreference();
            callback.response(preference.getVolume(), preference.getTemperature(), preference.getLength(), preference.getAuto_update(), preference.getSchedule_sound());
        }
    }
}
