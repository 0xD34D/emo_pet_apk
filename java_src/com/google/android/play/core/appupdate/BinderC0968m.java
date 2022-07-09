package com.google.android.play.core.appupdate;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.play.core.install.InstallException;
import com.google.android.play.core.internal.C1102ag;
import com.google.android.play.core.tasks.C1277i;
/* renamed from: com.google.android.play.core.appupdate.m */
/* loaded from: classes.dex */
final class BinderC0968m extends BinderC0967l<Void> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public BinderC0968m(C0970o oVar, C1277i<Void> iVar) {
        super(oVar, new C1102ag("OnCompleteUpdateCallback"), iVar);
    }

    @Override // com.google.android.play.core.appupdate.BinderC0967l, com.google.android.play.core.internal.AbstractC1168q
    /* renamed from: c */
    public final void mo300c(Bundle bundle) throws RemoteException {
        int i;
        int i2;
        super.mo300c(bundle);
        i = bundle.getInt("error.code", -2);
        if (i != 0) {
            C1277i iVar = this.f137b;
            i2 = bundle.getInt("error.code", -2);
            iVar.m77d(new InstallException(i2));
            return;
        }
        this.f137b.m76e(null);
    }
}
