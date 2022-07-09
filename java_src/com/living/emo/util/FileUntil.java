package com.living.emo.util;

import android.os.Environment;
import com.living.emo.MyApplication;
import java.io.File;
/* loaded from: classes.dex */
public class FileUntil {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final String TAG = "com.living.emo.util.FileUntil";

    public static void isDirAndMakeDir() {
        File externalFilesDir = MyApplication.getContext().getExternalFilesDir(Environment.DIRECTORY_MUSIC);
        String str = TAG;
        LogUtil.m65d(str, externalFilesDir + "=------fuckdddd----");
        if (!externalFilesDir.exists()) {
            externalFilesDir.mkdirs();
        }
    }
}
