package com.google.android.play.core.review;

import android.app.PendingIntent;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.play.core.internal.C1102ag;
import com.google.android.play.core.tasks.C1277i;
/* renamed from: com.google.android.play.core.review.h */
/* loaded from: classes.dex */
final class BinderC1189h extends BinderC1188g<ReviewInfo> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public BinderC1189h(C1190i iVar, C1277i iVar2) {
        super(iVar, new C1102ag("OnRequestInstallCallback"), iVar2);
    }

    @Override // com.google.android.play.core.review.BinderC1188g, com.google.android.play.core.internal.AbstractC1100ae
    /* renamed from: b */
    public final void mo249b(Bundle bundle) throws RemoteException {
        super.mo249b(bundle);
        this.f701b.m76e(ReviewInfo.m251b((PendingIntent) bundle.get("confirmation_intent")));
    }
}
