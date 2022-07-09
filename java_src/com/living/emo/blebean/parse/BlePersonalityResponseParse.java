package com.living.emo.blebean.parse;

import com.living.emo.blebean.config.PersonalityConfig;
/* loaded from: classes.dex */
public class BlePersonalityResponseParse {

    /* loaded from: classes.dex */
    public interface Callback {
        void response(PersonalityConfig.DataBean.PersonalityBean personalityBean);
    }

    public static void personality(String str, Callback callback) {
        PersonalityConfig objectFromData = PersonalityConfig.objectFromData(str);
        if (objectFromData != null && objectFromData.getData() != null && objectFromData.getData().getPersonality() != null) {
            callback.response(objectFromData.getData().getPersonality());
        }
    }
}
