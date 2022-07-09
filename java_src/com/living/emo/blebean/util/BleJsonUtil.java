package com.living.emo.blebean.util;

import android.location.Address;
import com.google.gson.Gson;
import com.living.emo.bean.AlarmBean;
import com.living.emo.bean.EditInfoNameBean;
import com.living.emo.blebean.config.AlarmConfig;
import com.living.emo.blebean.config.AnimConfig;
import com.living.emo.blebean.config.CityConfig;
import com.living.emo.blebean.config.CustomizeConfig;
import com.living.emo.blebean.config.LightOnOffConfig;
import com.living.emo.blebean.config.LightRenameConfig;
import com.living.emo.blebean.config.PhotoConfig;
import com.living.emo.blebean.config.PowerOffConfig;
import com.living.emo.blebean.config.RecognitionConfig;
import com.living.emo.blebean.config.SettingConfig;
import com.living.emo.blebean.config.TimeZoneConfig;
import com.living.emo.blebean.config.VersionConfig;
import com.living.emo.blebean.config.WifiConfig;
import com.living.emo.blebean.config.WifiRequestConfig;
import com.living.emo.model.Constants;
import com.living.emo.util.LogUtil;
import java.util.List;
import java.util.TimeZone;
/* loaded from: classes.dex */
public class BleJsonUtil {
    public static String city(List<Address> list) {
        Address address = list.get(0);
        String locality = address.getLocality();
        LogUtil.m64e("TAG", "getAddress: " + address.toString());
        CityConfig.DataBean.CoordBean coordBean = new CityConfig.DataBean.CoordBean();
        coordBean.setLat(address.getLatitude());
        coordBean.setLon(address.getLongitude());
        CityConfig.DataBean dataBean = new CityConfig.DataBean();
        dataBean.setCoord(coordBean);
        dataBean.setId(0);
        dataBean.setName(locality);
        dataBean.setState("");
        dataBean.setCountry(address.getCountryCode());
        CityConfig cityConfig = new CityConfig();
        cityConfig.setType(Constants.BLE_CITY_SET);
        cityConfig.setData(dataBean);
        return objectToString(cityConfig);
    }

    public static String setCityName(String str) {
        CityConfig.DataBean.CoordBean coordBean = new CityConfig.DataBean.CoordBean();
        coordBean.setLat(0.0d);
        coordBean.setLon(0.0d);
        CityConfig.DataBean dataBean = new CityConfig.DataBean();
        dataBean.setCoord(coordBean);
        dataBean.setId(0);
        dataBean.setName(str);
        dataBean.setState("");
        dataBean.setCountry("");
        CityConfig cityConfig = new CityConfig();
        cityConfig.setType(Constants.BLE_CITY_SET);
        cityConfig.setData(dataBean);
        return objectToString(cityConfig);
    }

    public static String timeZone(TimeZone timeZone) {
        TimeZoneConfig.DataBean dataBean = new TimeZoneConfig.DataBean();
        dataBean.setCode("");
        dataBean.setName(timeZone.getID());
        dataBean.setOffset(timeZone.getOffset(System.currentTimeMillis()) / 1000);
        TimeZoneConfig timeZoneConfig = new TimeZoneConfig();
        timeZoneConfig.setType(Constants.BLE_TIMEZONE_SET);
        timeZoneConfig.setData(dataBean);
        return objectToString(timeZoneConfig);
    }

    public static String wifi(String str, String str2) {
        WifiConfig.DataBean dataBean = new WifiConfig.DataBean();
        dataBean.setSsid(str);
        dataBean.setPassword(str2);
        WifiConfig wifiConfig = new WifiConfig();
        wifiConfig.setType(Constants.BLE_WIFI_SET);
        wifiConfig.setData(dataBean);
        return objectToString(wifiConfig);
    }

    public static String ota(int i) {
        VersionConfig versionConfig = new VersionConfig();
        versionConfig.setType(Constants.BLE_OTA);
        versionConfig.setNum(i);
        return objectToString(versionConfig);
    }

    public static String lightRename(int i, String str) {
        LightRenameConfig.DataBean dataBean = new LightRenameConfig.DataBean();
        dataBean.setId(i);
        dataBean.setName(str);
        dataBean.setOperation("rename");
        LightRenameConfig lightRenameConfig = new LightRenameConfig();
        lightRenameConfig.setType(Constants.BLE_LIGHT_SET);
        lightRenameConfig.setData(dataBean);
        return objectToString(lightRenameConfig);
    }

    public static String lightUnbindAll() {
        LightRenameConfig.DataBean dataBean = new LightRenameConfig.DataBean();
        dataBean.setOperation("unbind");
        LightRenameConfig lightRenameConfig = new LightRenameConfig();
        lightRenameConfig.setType(Constants.BLE_LIGHT_SET);
        lightRenameConfig.setData(dataBean);
        return objectToString(lightRenameConfig);
    }

    public static String lightOnOff(int i, int i2) {
        LightOnOffConfig.DataBean dataBean = new LightOnOffConfig.DataBean();
        dataBean.setId(i);
        dataBean.setOn(i2);
        dataBean.setOperation("onoff");
        LightOnOffConfig lightOnOffConfig = new LightOnOffConfig();
        lightOnOffConfig.setType(Constants.BLE_LIGHT_SET);
        lightOnOffConfig.setData(dataBean);
        return objectToString(lightOnOffConfig);
    }

    public static String Alarm(String str, AlarmBean alarmBean) {
        AlarmConfig.DataBean dataBean = new AlarmConfig.DataBean();
        dataBean.setIndex(alarmBean.getIndex());
        dataBean.setOn(alarmBean.getOn());
        dataBean.setTime(alarmBean.getTime());
        dataBean.setTag(alarmBean.getTag());
        dataBean.setRecurrence(alarmBean.getRecurrence());
        dataBean.setOperation(str);
        AlarmConfig alarmConfig = new AlarmConfig();
        alarmConfig.setType(Constants.BLE_ALARM_SET);
        alarmConfig.setData(dataBean);
        return objectToString(alarmConfig);
    }

    public static String PowerOff() {
        new PowerOffConfig.DataBean();
        PowerOffConfig powerOffConfig = new PowerOffConfig();
        powerOffConfig.setType(Constants.BLE_POWER_OFF_REQ);
        return objectToString(powerOffConfig);
    }

    public static String Photo(String str) {
        PhotoConfig photoConfig = new PhotoConfig();
        PhotoConfig.DataBean dataBean = new PhotoConfig.DataBean();
        dataBean.setOp(str);
        photoConfig.setData(dataBean);
        photoConfig.setType(Constants.BLE_PHOTO_REQ);
        return objectToString(photoConfig);
    }

    public static String Photo(String str, String str2) {
        PhotoConfig photoConfig = new PhotoConfig();
        PhotoConfig.DataBean dataBean = new PhotoConfig.DataBean();
        dataBean.setOp(str);
        dataBean.setPhoto_name(str2);
        photoConfig.setData(dataBean);
        photoConfig.setType(Constants.BLE_PHOTO_REQ);
        return objectToString(photoConfig);
    }

    public static String Photo(String str, String str2, int i) {
        PhotoConfig photoConfig = new PhotoConfig();
        PhotoConfig.DataBean dataBean = new PhotoConfig.DataBean();
        dataBean.setOp(str);
        PhotoConfig.DataBean.ServerBean serverBean = new PhotoConfig.DataBean.ServerBean();
        serverBean.setIp(str2);
        serverBean.setPort(i);
        dataBean.setServer(serverBean);
        photoConfig.setData(dataBean);
        photoConfig.setType(Constants.BLE_PHOTO_REQ);
        return objectToString(photoConfig);
    }

    public static String RecognitionIn() {
        RecognitionConfig recognitionConfig = new RecognitionConfig();
        recognitionConfig.setType(Constants.BLE_RECOGNITION_REQ);
        RecognitionConfig.DataBean dataBean = new RecognitionConfig.DataBean();
        dataBean.setOp("in");
        recognitionConfig.setData(dataBean);
        return objectToString(recognitionConfig);
    }

    public static String RecognitionSync() {
        RecognitionConfig recognitionConfig = new RecognitionConfig();
        recognitionConfig.setType(Constants.BLE_RECOGNITION_REQ);
        RecognitionConfig.DataBean dataBean = new RecognitionConfig.DataBean();
        dataBean.setOp("syn");
        recognitionConfig.setData(dataBean);
        return objectToString(recognitionConfig);
    }

    public static String RecognitionOut() {
        RecognitionConfig recognitionConfig = new RecognitionConfig();
        recognitionConfig.setType(Constants.BLE_RECOGNITION_REQ);
        RecognitionConfig.DataBean dataBean = new RecognitionConfig.DataBean();
        dataBean.setOp("out");
        recognitionConfig.setData(dataBean);
        return objectToString(recognitionConfig);
    }

    public static String Recognition(int i, String str) {
        RecognitionConfig recognitionConfig = new RecognitionConfig();
        recognitionConfig.setType(Constants.BLE_RECOGNITION_REQ);
        RecognitionConfig.DataBean dataBean = new RecognitionConfig.DataBean();
        if (i == 1) {
            dataBean.setOp("rescan");
        } else {
            dataBean.setOp("del");
        }
        dataBean.setId(str);
        recognitionConfig.setData(dataBean);
        return objectToString(recognitionConfig);
    }

    public static String Recognition(String str) {
        RecognitionConfig recognitionConfig = new RecognitionConfig();
        recognitionConfig.setType(Constants.BLE_RECOGNITION_REQ);
        RecognitionConfig.DataBean dataBean = new RecognitionConfig.DataBean();
        dataBean.setOp("add");
        dataBean.setName(str);
        recognitionConfig.setData(dataBean);
        return objectToString(recognitionConfig);
    }

    public static String EditInfoName(String str) {
        EditInfoNameBean editInfoNameBean = new EditInfoNameBean();
        editInfoNameBean.setType(Constants.BLE_EDIT_INFO_NAME_REQ);
        EditInfoNameBean.DataBean dataBean = new EditInfoNameBean.DataBean();
        if (str.equals("in") || str.equals("out")) {
            dataBean.setOp(str);
        } else {
            dataBean.setOp("update");
            dataBean.setLast_name(str);
        }
        editInfoNameBean.setData(dataBean);
        return objectToString(editInfoNameBean);
    }

    public static String Recognition(String str, String str2) {
        RecognitionConfig recognitionConfig = new RecognitionConfig();
        recognitionConfig.setType(Constants.BLE_RECOGNITION_REQ);
        RecognitionConfig.DataBean dataBean = new RecognitionConfig.DataBean();
        dataBean.setOp("rename");
        dataBean.setName(str2);
        dataBean.setId(str);
        recognitionConfig.setData(dataBean);
        return objectToString(recognitionConfig);
    }

    public static String customize(String str) {
        CustomizeConfig customizeConfig = new CustomizeConfig();
        CustomizeConfig.DataBean dataBean = new CustomizeConfig.DataBean();
        dataBean.setOp(str);
        customizeConfig.setData(dataBean);
        customizeConfig.setType(Constants.BLE_CUSTOMIZE_REQ);
        return objectToString(customizeConfig);
    }

    public static String customize(List<Integer> list, int i, String str, int i2, String str2, int i3) {
        CustomizeConfig customizeConfig = new CustomizeConfig();
        CustomizeConfig.DataBean dataBean = new CustomizeConfig.DataBean();
        dataBean.setOp("set_eye");
        CustomizeConfig.DataBean.ServerBean serverBean = new CustomizeConfig.DataBean.ServerBean();
        serverBean.setIp(str);
        serverBean.setPort(i2);
        dataBean.setServer(serverBean);
        CustomizeConfig.DataBean.ImageBean imageBean = new CustomizeConfig.DataBean.ImageBean();
        imageBean.setName(str2);
        imageBean.setLength(i3);
        imageBean.setTran(i);
        dataBean.setImage(imageBean);
        customizeConfig.setData(dataBean);
        customizeConfig.setType(Constants.BLE_CUSTOMIZE_REQ);
        return objectToString(customizeConfig);
    }

    public static String wifiRequest(String str) {
        WifiRequestConfig wifiRequestConfig = new WifiRequestConfig();
        wifiRequestConfig.setType(Constants.BLE_WIFI_REQ);
        WifiRequestConfig.DataBean dataBean = new WifiRequestConfig.DataBean();
        dataBean.setOperation(str);
        wifiRequestConfig.setData(dataBean);
        return objectToString(wifiRequestConfig);
    }

    public static String animRequest(String str) {
        AnimConfig animConfig = new AnimConfig();
        AnimConfig.DataBean dataBean = new AnimConfig.DataBean();
        animConfig.setType(Constants.BLE_ANIM_REQ);
        dataBean.setOp(str);
        animConfig.setData(dataBean);
        return objectToString(animConfig);
    }

    public static String Setting(String str) {
        SettingConfig settingConfig = new SettingConfig();
        settingConfig.setType(Constants.BLE_SETTING_REQ);
        SettingConfig.DataBean dataBean = new SettingConfig.DataBean();
        dataBean.setOp(str);
        settingConfig.setData(dataBean);
        return objectToString(settingConfig);
    }

    public static String animRequest(String str, String str2) {
        AnimConfig animConfig = new AnimConfig();
        AnimConfig.DataBean dataBean = new AnimConfig.DataBean();
        animConfig.setType(Constants.BLE_ANIM_REQ);
        dataBean.setOp(str);
        dataBean.setName(str2);
        animConfig.setData(dataBean);
        return objectToString(animConfig);
    }

    public static String objectToString(Object obj) {
        LogUtil.m62v("request json", "app->emo ble data:" + new Gson().toJson(obj));
        return new Gson().toJson(obj);
    }
}
