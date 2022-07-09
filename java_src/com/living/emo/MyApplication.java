package com.living.emo;

import android.app.Application;
import android.content.Context;
import com.living.emo.util.LogUtil;
import com.livingai.emopet.R;
import java.io.File;
import p006io.github.inflationx.calligraphy3.CalligraphyConfig;
import p006io.github.inflationx.calligraphy3.CalligraphyInterceptor;
import p006io.github.inflationx.viewpump.ViewPump;
/* loaded from: classes.dex */
public class MyApplication extends Application {
    private static Context mContext;
    private static MyApplication mInstance;
    private File rootDir;

    @Override // android.app.Application
    public void onCreate() {
        super.onCreate();
        ViewPump.init(ViewPump.builder().addInterceptor(new CalligraphyInterceptor(new CalligraphyConfig.Builder().setDefaultFontPath("fonts/Roboto-Medium.ttf").setFontAttrId(R.attr.fontPath).build())).build());
        if (mContext == null) {
            mContext = getApplicationContext();
        }
        if (mInstance == null) {
            mInstance = this;
            initdir(this);
        }
        LogUtil.init(false);
    }

    public static Context getContext() {
        return mContext;
    }

    public static MyApplication getInstance() {
        return mInstance;
    }

    public File getRootDir() {
        return this.rootDir;
    }

    private void initdir(Context context) {
        this.rootDir = new File(context.getFilesDir(), "httpserver");
    }
}
