package com.google.android.play.core.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: com.google.android.play.core.internal.j */
/* loaded from: classes.dex */
public class C1161j implements IInterface {

    /* renamed from: a */
    private final IBinder f675a;

    /* renamed from: b */
    private final String f676b;

    /* JADX INFO: Access modifiers changed from: protected */
    public C1161j(IBinder iBinder, String str) {
        this.f675a = iBinder;
        this.f676b = str;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final Parcel m309a() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f676b);
        return obtain;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f675a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: b */
    public final void m308b(int i, Parcel parcel) throws RemoteException {
        try {
            this.f675a.transact(i, parcel, null, 1);
        } finally {
            parcel.recycle();
        }
    }
}
