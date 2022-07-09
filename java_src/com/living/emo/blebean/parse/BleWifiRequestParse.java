package com.living.emo.blebean.parse;

import com.living.emo.blebean.response.WifiRequestResponse;
import com.living.emo.model.Constants;
import java.util.List;
/* loaded from: classes.dex */
public class BleWifiRequestParse {

    /* loaded from: classes.dex */
    public interface Callback {
        void fail();

        void success(List<WifiRequestResponse.DataBean.ListBean> list);
    }

    public static void wifiReq(String str, Callback callback) {
        WifiRequestResponse objectFromData = WifiRequestResponse.objectFromData(str);
        if (objectFromData != null && objectFromData.getType().equals(Constants.BLE_WIFI_LIST) && objectFromData.getData() != null) {
            if (objectFromData.getData().getResult() == 1) {
                callback.success(objectFromData.getData().getList());
            } else {
                callback.fail();
            }
        }
    }
}
