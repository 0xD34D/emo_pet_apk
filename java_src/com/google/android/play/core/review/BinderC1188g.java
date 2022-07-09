package com.google.android.play.core.review;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.play.core.internal.AbstractBinderC1099ad;
import com.google.android.play.core.internal.C1102ag;
import com.google.android.play.core.tasks.C1277i;
/* renamed from: com.google.android.play.core.review.g */
/* loaded from: classes.dex */
class BinderC1188g<T> extends AbstractBinderC1099ad {

    /* renamed from: a */
    final C1102ag f700a;

    /* renamed from: b */
    final C1277i<T> f701b;

    /* renamed from: c */
    final /* synthetic */ C1190i f702c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public BinderC1188g(C1190i iVar, C1102ag agVar, C1277i<T> iVar2) {
        this.f702c = iVar;
        this.f700a = agVar;
        this.f701b = iVar2;
    }

    @Override // com.google.android.play.core.internal.AbstractC1100ae
    /* renamed from: b */
    public void mo249b(Bundle bundle) throws RemoteException {
        this.f702c.f704a.m432b();
        this.f700a.m440d("onGetLaunchReviewFlowInfo", new Object[0]);
    }
}
