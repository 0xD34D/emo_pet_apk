package com.living.emo.blebean.parse;

import com.living.emo.blebean.response.NetworkResponse;
/* loaded from: classes.dex */
public class BleNetworkResponseParse {

    /* loaded from: classes.dex */
    public interface Callback {
        void response(NetworkResponse.DataBean.NetworkBean networkBean);
    }

    public static void network(String str, Callback callback) {
        NetworkResponse objectFromData = NetworkResponse.objectFromData(str);
        if (objectFromData != null && objectFromData.getData() != null && objectFromData.getData().getNetwork() != null) {
            callback.response(objectFromData.getData().getNetwork());
        }
    }
}
