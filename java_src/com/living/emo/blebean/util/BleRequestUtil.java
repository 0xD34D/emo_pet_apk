package com.living.emo.blebean.util;

import com.google.gson.Gson;
import com.living.emo.blebean.config.RequestConfig;
import com.living.emo.model.Constants;
import com.living.emo.util.ByteUtil;
import com.living.emo.util.LogUtil;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class BleRequestUtil {
    public static String request(int... iArr) {
        RequestConfig requestConfig = new RequestConfig();
        requestConfig.setType(Constants.BLE_STA_REQ);
        RequestConfig.DataBean dataBean = new RequestConfig.DataBean();
        ArrayList arrayList = new ArrayList();
        arrayList.clear();
        for (int i : iArr) {
            arrayList.add(Integer.valueOf(i));
        }
        dataBean.setRequest(arrayList);
        requestConfig.setData(dataBean);
        LogUtil.m62v("request json", "app->emo ble data:" + objectToString(requestConfig));
        return objectToString(requestConfig);
    }

    public static byte[] deviceid() {
        return ByteUtil.strToByteArray(request(0));
    }

    public static byte[] version() {
        return ByteUtil.strToByteArray(request(1));
    }

    public static byte[] network() {
        return ByteUtil.strToByteArray(request(2));
    }

    public static byte[] xiaoai() {
        return ByteUtil.strToByteArray(request(3));
    }

    public static byte[] alexa() {
        return ByteUtil.strToByteArray(request(4));
    }

    public static byte[] light() {
        return ByteUtil.strToByteArray(request(5));
    }

    public static byte[] alarm() {
        return ByteUtil.strToByteArray(request(6));
    }

    public static byte[] city() {
        return ByteUtil.strToByteArray(request(7));
    }

    public static byte[] timezone() {
        return ByteUtil.strToByteArray(request(8));
    }

    public static byte[] preference() {
        return ByteUtil.strToByteArray(request(12));
    }

    public static byte[] versionAndPersonality() {
        return ByteUtil.strToByteArray(request(11, 1));
    }

    public static byte[] personality() {
        return ByteUtil.strToByteArray(request(11));
    }

    public static byte[] danceList() {
        return ByteUtil.strToByteArray(request(10));
    }

    public static String objectToString(Object obj) {
        return new Gson().toJson(obj);
    }
}
