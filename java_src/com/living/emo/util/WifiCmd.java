package com.living.emo.util;

import com.google.gson.Gson;
import com.living.emo.model.SendConfig;
import com.living.emo.model.SetWifiConfig;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class WifiCmd {
    private static final String TAG = "zxl::" + WifiCmd.class.getSimpleName();

    public static byte[] requestCmd(int i, int... iArr) {
        SendConfig sendConfig = new SendConfig();
        SendConfig.DataBean dataBean = new SendConfig.DataBean();
        sendConfig.setType(i);
        ArrayList arrayList = new ArrayList();
        for (int i2 : iArr) {
            arrayList.add(Integer.valueOf(i2));
        }
        dataBean.setRequest(arrayList);
        sendConfig.setData(dataBean);
        String json = new Gson().toJson(sendConfig);
        LogUtil.m64e(TAG, "requestCmd: " + json);
        return ByteUtil.strToByteArray(json);
    }

    public static byte[] sendWifiSetCmd(String str, String str2) {
        SetWifiConfig setWifiConfig = new SetWifiConfig();
        SetWifiConfig.DataBean dataBean = new SetWifiConfig.DataBean();
        dataBean.setSsid(str);
        dataBean.setPassword(str2);
        setWifiConfig.setData(dataBean);
        String json = new Gson().toJson(setWifiConfig);
        String str3 = TAG;
        LogUtil.m64e(str3, "objectToByte: " + json);
        return ByteUtil.strToByteArray(json);
    }
}
