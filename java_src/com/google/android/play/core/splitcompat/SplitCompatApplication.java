package com.google.android.play.core.splitcompat;

import android.app.Application;
import android.content.Context;
/* loaded from: classes.dex */
public class SplitCompatApplication extends Application {
    @Override // android.content.ContextWrapper
    protected void attachBaseContext(Context context) {
        super.attachBaseContext(context);
        SplitCompat.install(this);
    }
}
