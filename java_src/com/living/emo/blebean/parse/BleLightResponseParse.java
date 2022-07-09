package com.living.emo.blebean.parse;

import com.living.emo.blebean.response.LightResponse;
import java.util.List;
/* loaded from: classes.dex */
public class BleLightResponseParse {

    /* loaded from: classes.dex */
    public interface Callback {
        void response(List<LightResponse.DataBean.LightBean.StateBean> list);
    }

    public static void light(String str, Callback callback) {
        LightResponse objectFromData = LightResponse.objectFromData(str);
        if (objectFromData != null && objectFromData.getData() != null && objectFromData.getData().getLight() != null) {
            LightResponse.DataBean.LightBean light = objectFromData.getData().getLight();
            if (light.getState() != null) {
                callback.response(light.getState());
            }
        }
    }
}
