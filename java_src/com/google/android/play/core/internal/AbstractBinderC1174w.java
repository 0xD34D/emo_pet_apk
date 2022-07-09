package com.google.android.play.core.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: com.google.android.play.core.internal.w */
/* loaded from: classes.dex */
public abstract class AbstractBinderC1174w extends BinderC1162k implements AbstractC1175x {
    public AbstractBinderC1174w() {
        super("com.google.android.play.core.assetpacks.protocol.IAssetPackExtractionService");
    }

    @Override // com.google.android.play.core.internal.BinderC1162k
    /* renamed from: a */
    protected final boolean mo275a(int i, Parcel parcel) throws RemoteException {
        AbstractC1177z zVar = null;
        if (i == 2) {
            Bundle bundle = (Bundle) C1163l.m307a(parcel, Bundle.CREATOR);
            IBinder readStrongBinder = parcel.readStrongBinder();
            if (readStrongBinder != null) {
                IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.play.core.assetpacks.protocol.IAssetPackExtractionServiceCallback");
                zVar = queryLocalInterface instanceof AbstractC1177z ? (AbstractC1177z) queryLocalInterface : new C1176y(readStrongBinder);
            }
            mo274b(bundle, zVar);
            return true;
        } else if (i != 3) {
            return false;
        } else {
            Bundle bundle2 = (Bundle) C1163l.m307a(parcel, Bundle.CREATOR);
            IBinder readStrongBinder2 = parcel.readStrongBinder();
            if (readStrongBinder2 != null) {
                IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.play.core.assetpacks.protocol.IAssetPackExtractionServiceCallback");
                zVar = queryLocalInterface2 instanceof AbstractC1177z ? (AbstractC1177z) queryLocalInterface2 : new C1176y(readStrongBinder2);
            }
            mo273c(zVar);
            return true;
        }
    }
}
