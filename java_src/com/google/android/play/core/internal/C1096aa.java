package com.google.android.play.core.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: com.google.android.play.core.internal.aa */
/* loaded from: classes.dex */
public final class C1096aa extends C1161j implements AbstractC1098ac {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C1096aa(IBinder iBinder) {
        super(iBinder, "com.google.android.play.core.inappreview.protocol.IInAppReviewService");
    }

    @Override // com.google.android.play.core.internal.AbstractC1098ac
    /* renamed from: c */
    public final void mo447c(String str, Bundle bundle, AbstractC1100ae aeVar) throws RemoteException {
        Parcel a = m309a();
        a.writeString(str);
        C1163l.m306b(a, bundle);
        C1163l.m305c(a, aeVar);
        m308b(2, a);
    }
}
