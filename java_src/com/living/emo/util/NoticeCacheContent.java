package com.living.emo.util;

import android.content.Context;
import android.content.SharedPreferences;
import com.living.emo.MyApplication;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes.dex */
public class NoticeCacheContent {
    private static String SHARECACHECONTENTPATH = "emo_content_info";
    private static String SHARECACHECONTENTPRE = "emo_content_info_pre_";
    private static NoticeCacheContent sNoticeCacheContent;
    private Context mContext;
    private final SharedPreferences.Editor mEdit;
    private final SharedPreferences mSharedPreferences;
    private Set<String> mSet = new HashSet();
    private HashMap<String, String> mHashMap = new HashMap<>();

    private NoticeCacheContent() {
        Context context = MyApplication.getContext();
        this.mContext = context;
        SharedPreferences sharedPreferences = context.getSharedPreferences(SHARECACHECONTENTPATH, 0);
        this.mSharedPreferences = sharedPreferences;
        this.mEdit = sharedPreferences.edit();
        loadSetHashMap();
    }

    private void loadSetHashMap() {
        Set<String> stringSet = this.mSharedPreferences.getStringSet(SHARECACHECONTENTPRE + "set_id", this.mSet);
        this.mSet = stringSet;
        for (String str : stringSet) {
            this.mHashMap.put(str, this.mSharedPreferences.getString(str, ""));
        }
    }

    public static NoticeCacheContent getInstance() {
        if (sNoticeCacheContent == null) {
            sNoticeCacheContent = new NoticeCacheContent();
        }
        return sNoticeCacheContent;
    }

    public void setContext(int i, String str) {
        String str2 = SHARECACHECONTENTPRE + i;
        this.mSet.add(str2);
        this.mHashMap.put(str2, str);
    }

    public String getContent(int i) {
        String str = SHARECACHECONTENTPRE + i;
        return this.mHashMap.get(str) == null ? "" : this.mHashMap.get(str);
    }

    public void clear() {
        this.mSet.clear();
        this.mHashMap.clear();
        this.mEdit.clear();
        this.mEdit.apply();
    }

    public void save() {
        this.mEdit.putStringSet(SHARECACHECONTENTPRE + "set_id", this.mSet);
        for (String str : this.mSet) {
            this.mEdit.putString(str, this.mHashMap.get(str));
        }
        this.mEdit.apply();
    }
}
