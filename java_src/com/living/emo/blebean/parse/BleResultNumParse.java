package com.living.emo.blebean.parse;

import com.living.emo.blebean.response.ResultResponse;
import com.living.emo.model.Constants;
/* loaded from: classes.dex */
public class BleResultNumParse {

    /* loaded from: classes.dex */
    public interface Callback {
        void result(int i);
    }

    private static void result(String str, String str2, Callback callback) {
        ResultResponse objectFromData = ResultResponse.objectFromData(str);
        if (objectFromData != null && objectFromData.getData() != null && objectFromData.getType().equals(str2)) {
            callback.result(objectFromData.getData().getResult());
        }
    }

    public static void animRequest(String str, Callback callback) {
        result(str, Constants.BLE_ANIM_REP, callback);
    }
}
