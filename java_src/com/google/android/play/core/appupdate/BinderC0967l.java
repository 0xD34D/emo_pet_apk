package com.google.android.play.core.appupdate;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.play.core.internal.AbstractBinderC1167p;
import com.google.android.play.core.internal.C1102ag;
import com.google.android.play.core.tasks.C1277i;
/* renamed from: com.google.android.play.core.appupdate.l */
/* loaded from: classes.dex */
class BinderC0967l<T> extends AbstractBinderC1167p {

    /* renamed from: a */
    final C1102ag f136a;

    /* renamed from: b */
    final C1277i<T> f137b;

    /* renamed from: c */
    final /* synthetic */ C0970o f138c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public BinderC0967l(C0970o oVar, C1102ag agVar, C1277i<T> iVar) {
        this.f138c = oVar;
        this.f136a = agVar;
        this.f137b = iVar;
    }

    @Override // com.google.android.play.core.internal.AbstractC1168q
    /* renamed from: b */
    public void mo301b(Bundle bundle) throws RemoteException {
        this.f138c.f143a.m432b();
        this.f136a.m440d("onRequestInfo", new Object[0]);
    }

    @Override // com.google.android.play.core.internal.AbstractC1168q
    /* renamed from: c */
    public void mo300c(Bundle bundle) throws RemoteException {
        this.f138c.f143a.m432b();
        this.f136a.m440d("onCompleteUpdate", new Object[0]);
    }
}
