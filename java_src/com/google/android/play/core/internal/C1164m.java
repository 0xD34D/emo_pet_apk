package com.google.android.play.core.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: com.google.android.play.core.internal.m */
/* loaded from: classes.dex */
public final class C1164m extends C1161j implements AbstractC1166o {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C1164m(IBinder iBinder) {
        super(iBinder, "com.google.android.play.core.appupdate.protocol.IAppUpdateService");
    }

    @Override // com.google.android.play.core.internal.AbstractC1166o
    /* renamed from: c */
    public final void mo303c(String str, Bundle bundle, AbstractC1168q qVar) throws RemoteException {
        Parcel a = m309a();
        a.writeString(str);
        C1163l.m306b(a, bundle);
        C1163l.m305c(a, qVar);
        m308b(2, a);
    }

    @Override // com.google.android.play.core.internal.AbstractC1166o
    /* renamed from: d */
    public final void mo302d(String str, Bundle bundle, AbstractC1168q qVar) throws RemoteException {
        Parcel a = m309a();
        a.writeString(str);
        C1163l.m306b(a, bundle);
        C1163l.m305c(a, qVar);
        m308b(3, a);
    }
}
