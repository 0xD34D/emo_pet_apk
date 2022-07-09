package com.google.android.play.core.assetpacks;

import android.os.Bundle;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import com.google.android.play.core.tasks.C1277i;
/* renamed from: com.google.android.play.core.assetpacks.ah */
/* loaded from: classes.dex */
final class BinderC0987ah extends BinderC0986ag<ParcelFileDescriptor> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public BinderC0987ah(C0993an anVar, C1277i<ParcelFileDescriptor> iVar) {
        super(anVar, iVar);
    }

    @Override // com.google.android.play.core.assetpacks.BinderC0986ag, com.google.android.play.core.internal.AbstractC1173v
    /* renamed from: e */
    public final void mo285e(Bundle bundle, Bundle bundle2) throws RemoteException {
        super.mo285e(bundle, bundle2);
        this.f225a.m76e((ParcelFileDescriptor) bundle.getParcelable("chunk_file_descriptor"));
    }
}
