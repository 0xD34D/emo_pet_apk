package com.google.android.play.core.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: com.google.android.play.core.internal.p */
/* loaded from: classes.dex */
public abstract class AbstractBinderC1167p extends BinderC1162k implements AbstractC1168q {
    public AbstractBinderC1167p() {
        super("com.google.android.play.core.appupdate.protocol.IAppUpdateServiceCallback");
    }

    @Override // com.google.android.play.core.internal.BinderC1162k
    /* renamed from: a */
    protected final boolean mo275a(int i, Parcel parcel) throws RemoteException {
        if (i == 2) {
            mo301b((Bundle) C1163l.m307a(parcel, Bundle.CREATOR));
            return true;
        } else if (i != 3) {
            return false;
        } else {
            mo300c((Bundle) C1163l.m307a(parcel, Bundle.CREATOR));
            return true;
        }
    }
}
