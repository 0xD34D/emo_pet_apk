package com.google.android.play.core.splitinstall;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.play.core.tasks.C1277i;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.google.android.play.core.splitinstall.ar */
/* loaded from: classes.dex */
final class BinderC1227ar extends BinderC1229at<List<SplitInstallSessionState>> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public BinderC1227ar(C1230au auVar, C1277i<List<SplitInstallSessionState>> iVar) {
        super(auVar, iVar);
    }

    @Override // com.google.android.play.core.splitinstall.BinderC1229at, com.google.android.play.core.internal.AbstractC1136bn
    /* renamed from: h */
    public final void mo184h(List<Bundle> list) throws RemoteException {
        super.mo184h(list);
        ArrayList arrayList = new ArrayList(list.size());
        for (Bundle bundle : list) {
            arrayList.add(SplitInstallSessionState.m196d(bundle));
        }
        this.f783a.m76e(arrayList);
    }
}
