package com.google.android.play.core.internal;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
/* renamed from: com.google.android.play.core.internal.ap */
/* loaded from: classes.dex */
public final class ServiceConnectionC1111ap implements ServiceConnection {

    /* renamed from: a */
    final /* synthetic */ C1112aq f615a;

    public /* synthetic */ ServiceConnectionC1111ap(C1112aq aqVar) {
        this.f615a = aqVar;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        C1102ag agVar;
        agVar = this.f615a.f618c;
        agVar.m440d("ServiceConnectionImpl.onServiceConnected(%s)", componentName);
        this.f615a.m416r(new C1109an(this, iBinder));
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        C1102ag agVar;
        agVar = this.f615a.f618c;
        agVar.m440d("ServiceConnectionImpl.onServiceDisconnected(%s)", componentName);
        this.f615a.m416r(new C1110ao(this));
    }
}
