package com.living.emo.blebean.parse;

import com.living.emo.blebean.response.VersionResponse;
/* loaded from: classes.dex */
public class BleVersionResponseParse {

    /* loaded from: classes.dex */
    public interface Callback {
        void response(VersionResponse.DataBean.VersionBean versionBean);
    }

    public static void version(String str, Callback callback) {
        VersionResponse objectFromData = VersionResponse.objectFromData(str);
        if (objectFromData != null && objectFromData.getData() != null && objectFromData.getData().getVersion() != null) {
            callback.response(objectFromData.getData().getVersion());
        }
    }
}
