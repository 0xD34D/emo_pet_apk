package com.google.android.play.core.assetpacks;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
/* loaded from: classes.dex */
public class AssetPackExtractionService extends Service {

    /* renamed from: a */
    BinderC1006b f192a;

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return this.f192a;
    }

    @Override // android.app.Service
    public final void onCreate() {
        super.onCreate();
        C1044ck.m537j(getApplicationContext()).mo592b(this);
    }
}
