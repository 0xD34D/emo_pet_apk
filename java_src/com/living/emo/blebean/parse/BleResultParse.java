package com.living.emo.blebean.parse;

import com.living.emo.blebean.response.ResultResponse;
import com.living.emo.model.Constants;
/* loaded from: classes.dex */
public class BleResultParse {

    /* loaded from: classes.dex */
    public interface Callback {
        void fail();

        void success();
    }

    private static void result(String str, String str2, Callback callback) {
        ResultResponse objectFromData = ResultResponse.objectFromData(str);
        if (objectFromData != null && objectFromData.getData() != null && objectFromData.getType().equals(str2)) {
            if (objectFromData.getData().getResult() == 1) {
                callback.success();
            } else {
                callback.fail();
            }
        }
    }

    public static void wifi(String str, Callback callback) {
        result(str, Constants.BLE_WIFI_RSP, callback);
    }

    public static void ota(String str, Callback callback) {
        result(str, Constants.BLE_OTA_RSP, callback);
    }

    public static void city(String str, Callback callback) {
        result(str, Constants.BLE_CITY_RSP, callback);
    }

    public static void timezone(String str, Callback callback) {
        result(str, Constants.BLE_TIMEZONE_RSP, callback);
    }

    public static void light(String str, Callback callback) {
        result(str, Constants.BLE_LIGHT_RSP, callback);
    }

    public static void alarm(String str, Callback callback) {
        result(str, Constants.BLE_ALARM_RSP, callback);
    }

    public static void powerOff(String str, Callback callback) {
        result(str, Constants.BLE_POWER_OFF_RSP, callback);
    }
}
