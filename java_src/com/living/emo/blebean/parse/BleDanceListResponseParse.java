package com.living.emo.blebean.parse;

import com.living.emo.blebean.response.DanceListResponse;
/* loaded from: classes.dex */
public class BleDanceListResponseParse {

    /* loaded from: classes.dex */
    public interface Callback {
        void response(int i);
    }

    public static void danceLists(String str, Callback callback) {
        DanceListResponse objectFromData = DanceListResponse.objectFromData(str);
        if (objectFromData != null && objectFromData.getData() != null && objectFromData.getData().getDances() != null) {
            callback.response(objectFromData.getData().getDances().getJoris_unlocked().size());
        }
    }
}
