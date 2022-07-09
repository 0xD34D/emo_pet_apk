package com.google.android.play.core.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: com.google.android.play.core.internal.ad */
/* loaded from: classes.dex */
public abstract class AbstractBinderC1099ad extends BinderC1162k implements AbstractC1100ae {
    public AbstractBinderC1099ad() {
        super("com.google.android.play.core.inappreview.protocol.IInAppReviewServiceCallback");
    }

    @Override // com.google.android.play.core.internal.BinderC1162k
    /* renamed from: a */
    protected final boolean mo275a(int i, Parcel parcel) throws RemoteException {
        if (i != 2) {
            return false;
        }
        mo249b((Bundle) C1163l.m307a(parcel, Bundle.CREATOR));
        return true;
    }
}
