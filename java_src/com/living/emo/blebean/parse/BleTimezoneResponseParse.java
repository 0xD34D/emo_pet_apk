package com.living.emo.blebean.parse;

import com.living.emo.blebean.response.TimeZoneResponse;
/* loaded from: classes.dex */
public class BleTimezoneResponseParse {

    /* loaded from: classes.dex */
    public interface Callback {
        void response(TimeZoneResponse.DataBean.TimezoneBean timezoneBean);
    }

    public static void timezone(String str, Callback callback) {
        TimeZoneResponse objectFromData = TimeZoneResponse.objectFromData(str);
        if (objectFromData != null && objectFromData.getData() != null && objectFromData.getData().getTimezone() != null) {
            callback.response(objectFromData.getData().getTimezone());
        }
    }
}
