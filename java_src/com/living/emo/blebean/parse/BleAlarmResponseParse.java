package com.living.emo.blebean.parse;

import com.living.emo.blebean.response.AlarmResponse;
import java.util.List;
/* loaded from: classes.dex */
public class BleAlarmResponseParse {

    /* loaded from: classes.dex */
    public interface Callback {
        void response(List<AlarmResponse.DataBean.AlarmBean.StateBean> list);
    }

    public static void alarm(String str, Callback callback) {
        AlarmResponse objectFromData = AlarmResponse.objectFromData(str);
        if (objectFromData != null && objectFromData.getData() != null && objectFromData.getData().getAlarm() != null) {
            AlarmResponse.DataBean.AlarmBean alarm = objectFromData.getData().getAlarm();
            if (alarm.getState() != null) {
                callback.response(alarm.getState());
            }
        }
    }
}
