package com.living.emo.bean;

import com.living.emo.MyApplication;
import com.livingai.emopet.R;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class TextBean {
    private final String text;

    public TextBean(String str) {
        this.text = str;
    }

    public static List<TextBean> getMusicData() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new TextBean(MyApplication.getContext().getResources().getString(R.string.music_des_one)));
        return arrayList;
    }

    public static List<TextBean> getPhotoData() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new TextBean(MyApplication.getContext().getResources().getString(R.string.photo_des_1)));
        return arrayList;
    }

    public static List<TextBean> getWeatherData() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new TextBean(MyApplication.getContext().getResources().getString(R.string.wheather_des_1)));
        arrayList.add(new TextBean(MyApplication.getContext().getResources().getString(R.string.wheather_des_2)));
        arrayList.add(new TextBean(MyApplication.getContext().getResources().getString(R.string.wheather_des_3)));
        return arrayList;
    }

    public static List<TextBean> getLight() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new TextBean(MyApplication.getContext().getResources().getString(R.string.light_des_1)));
        return arrayList;
    }

    public static List<TextBean> getAlert() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new TextBean(MyApplication.getContext().getResources().getString(R.string.alarm_des_1)));
        arrayList.add(new TextBean(MyApplication.getContext().getResources().getString(R.string.alarm_des_2)));
        arrayList.add(new TextBean(MyApplication.getContext().getResources().getString(R.string.alarm_des_3)));
        arrayList.add(new TextBean(MyApplication.getContext().getResources().getString(R.string.alarm_des_4)));
        return arrayList;
    }

    public static List<TextBean> getMoreData() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new TextBean(MyApplication.getContext().getResources().getString(R.string.more_des_1)));
        arrayList.add(new TextBean(MyApplication.getContext().getResources().getString(R.string.more_des_2)));
        return arrayList;
    }

    public String getTest() {
        return this.text;
    }
}
