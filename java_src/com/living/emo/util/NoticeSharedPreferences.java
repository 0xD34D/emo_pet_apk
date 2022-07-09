package com.living.emo.util;

import android.content.Context;
import android.content.SharedPreferences;
import com.google.gson.Gson;
import com.living.emo.bean.Notice;
/* loaded from: classes.dex */
public class NoticeSharedPreferences {
    private static String SHARE_NOTICE_ARTICLE_PRE = "emo_notice_article_";
    private static String SHARE_NOTICE_DATA = "emo_notice_data";
    private static String SHARE_NOTICE_INFO = "emo_notice_info";
    private static String SHARE_NOTICE_VERSION = "emo_notice_version";
    private static NoticeSharedPreferences sNoticeSharedPreferences;
    private SharedPreferences.Editor mEdit;
    private SharedPreferences mSharedPreferences;

    public NoticeSharedPreferences(Context context) {
        SharedPreferences sharedPreferences = context.getSharedPreferences(SHARE_NOTICE_INFO, 0);
        this.mSharedPreferences = sharedPreferences;
        this.mEdit = sharedPreferences.edit();
    }

    public static NoticeSharedPreferences getInstance(Context context) {
        if (sNoticeSharedPreferences == null) {
            sNoticeSharedPreferences = new NoticeSharedPreferences(context);
        }
        return sNoticeSharedPreferences;
    }

    public void setData(Notice notice) {
        String json = new Gson().toJson(notice);
        LogUtil.m64e("TAG", "setData: " + json);
        this.mEdit.putString(SHARE_NOTICE_DATA, json);
        this.mEdit.apply();
    }

    public String getData() {
        return this.mSharedPreferences.getString(SHARE_NOTICE_DATA, "");
    }

    public void setVersion(int i) {
        this.mEdit.putInt(SHARE_NOTICE_VERSION, i);
        this.mEdit.apply();
    }

    public int getVersion() {
        return this.mSharedPreferences.getInt(SHARE_NOTICE_VERSION, 0);
    }
}
