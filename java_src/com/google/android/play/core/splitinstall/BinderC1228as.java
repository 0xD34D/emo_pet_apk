package com.google.android.play.core.splitinstall;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.play.core.tasks.C1277i;
/* renamed from: com.google.android.play.core.splitinstall.as */
/* loaded from: classes.dex */
final class BinderC1228as extends BinderC1229at<Integer> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public BinderC1228as(C1230au auVar, C1277i<Integer> iVar) {
        super(auVar, iVar);
    }

    @Override // com.google.android.play.core.splitinstall.BinderC1229at, com.google.android.play.core.internal.AbstractC1136bn
    /* renamed from: i */
    public final void mo183i(int i, Bundle bundle) throws RemoteException {
        super.mo183i(i, bundle);
        this.f783a.m76e(Integer.valueOf(i));
    }
}
