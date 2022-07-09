package com.living.emo.blebean.parse;

import com.living.emo.blebean.response.CityResponse;
/* loaded from: classes.dex */
public class BleCityResponseParse {

    /* loaded from: classes.dex */
    public interface Callback {
        void response(CityResponse.DataBean.CityBean cityBean);
    }

    public static void city(String str, Callback callback) {
        CityResponse objectFromData = CityResponse.objectFromData(str);
        if (objectFromData != null && objectFromData.getData() != null && objectFromData.getData().getCity() != null) {
            callback.response(objectFromData.getData().getCity());
        }
    }
}
