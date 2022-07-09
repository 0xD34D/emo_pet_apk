package com.living.emo.bean;

import com.living.emo.event.EmoEvent;
/* loaded from: classes.dex */
public class LightEmoEvent {

    /* loaded from: classes.dex */
    public interface OnLightEmoNotifyResponse {
        void lightOnOff(int i, int i2);
    }

    public static void lightEmoNotify(EmoEvent emoEvent, OnLightEmoNotifyResponse onLightEmoNotifyResponse) {
        if (emoEvent.getFour() == 1 && emoEvent.getEventNumbering() == 11) {
            onLightEmoNotifyResponse.lightOnOff(emoEvent.getSeven(), emoEvent.getEight());
        }
    }
}
