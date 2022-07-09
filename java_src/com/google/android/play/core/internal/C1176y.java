package com.google.android.play.core.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: com.google.android.play.core.internal.y */
/* loaded from: classes.dex */
public final class C1176y extends C1161j implements AbstractC1177z {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C1176y(IBinder iBinder) {
        super(iBinder, "com.google.android.play.core.assetpacks.protocol.IAssetPackExtractionServiceCallback");
    }

    @Override // com.google.android.play.core.internal.AbstractC1177z
    /* renamed from: c */
    public final void mo272c(Bundle bundle, Bundle bundle2) throws RemoteException {
        Parcel a = m309a();
        C1163l.m306b(a, bundle);
        C1163l.m306b(a, bundle2);
        m308b(2, a);
    }

    @Override // com.google.android.play.core.internal.AbstractC1177z
    /* renamed from: d */
    public final void mo271d(Bundle bundle) throws RemoteException {
        Parcel a = m309a();
        C1163l.m306b(a, bundle);
        m308b(3, a);
    }

    @Override // com.google.android.play.core.internal.AbstractC1177z
    /* renamed from: e */
    public final void mo270e(Bundle bundle) throws RemoteException {
        Parcel a = m309a();
        C1163l.m306b(a, bundle);
        m308b(4, a);
    }
}
