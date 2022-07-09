package com.google.android.play.core.internal;

import android.content.Context;
import android.content.ServiceConnection;
import android.os.IInterface;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.play.core.internal.ak */
/* loaded from: classes.dex */
public final class C1106ak extends AbstractRunnableC1103ah {

    /* renamed from: a */
    final /* synthetic */ C1112aq f611a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1106ak(C1112aq aqVar) {
        this.f611a = aqVar;
    }

    @Override // com.google.android.play.core.internal.AbstractRunnableC1103ah
    /* renamed from: a */
    public final void mo191a() {
        IInterface iInterface;
        C1102ag agVar;
        Context context;
        ServiceConnection serviceConnection;
        iInterface = this.f611a.f627l;
        if (iInterface != null) {
            agVar = this.f611a.f618c;
            agVar.m440d("Unbind from service.", new Object[0]);
            context = this.f611a.f617b;
            serviceConnection = this.f611a.f626k;
            context.unbindService(serviceConnection);
            this.f611a.f621f = false;
            this.f611a.f627l = null;
            this.f611a.f626k = null;
        }
    }
}
