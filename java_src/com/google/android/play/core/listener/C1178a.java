package com.google.android.play.core.listener;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.play.core.listener.a */
/* loaded from: classes.dex */
public final class C1178a extends BroadcastReceiver {

    /* renamed from: a */
    final /* synthetic */ AbstractC1179b f677a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ C1178a(AbstractC1179b bVar) {
        this.f677a = bVar;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        this.f677a.mo135a(context, intent);
    }
}
