package com.google.android.play.core.splitinstall;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.play.core.tasks.C1277i;
/* renamed from: com.google.android.play.core.splitinstall.aq */
/* loaded from: classes.dex */
final class BinderC1226aq extends BinderC1229at<SplitInstallSessionState> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public BinderC1226aq(C1230au auVar, C1277i<SplitInstallSessionState> iVar) {
        super(auVar, iVar);
    }

    @Override // com.google.android.play.core.splitinstall.BinderC1229at, com.google.android.play.core.internal.AbstractC1136bn
    /* renamed from: g */
    public final void mo185g(int i, Bundle bundle) throws RemoteException {
        super.mo185g(i, bundle);
        this.f783a.m76e(SplitInstallSessionState.m196d(bundle));
    }
}
