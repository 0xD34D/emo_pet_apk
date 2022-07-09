package com.google.android.play.core.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: com.google.android.play.core.internal.bm */
/* loaded from: classes.dex */
public abstract class AbstractBinderC1135bm extends BinderC1162k implements AbstractC1136bn {
    public AbstractBinderC1135bm() {
        super("com.google.android.play.core.splitinstall.protocol.ISplitInstallServiceCallback");
    }

    @Override // com.google.android.play.core.internal.BinderC1162k
    /* renamed from: a */
    protected final boolean mo275a(int i, Parcel parcel) throws RemoteException {
        switch (i) {
            case 2:
                mo183i(parcel.readInt(), (Bundle) C1163l.m307a(parcel, Bundle.CREATOR));
                return true;
            case 3:
                int readInt = parcel.readInt();
                Bundle bundle = (Bundle) C1163l.m307a(parcel, Bundle.CREATOR);
                mo181k(readInt);
                return true;
            case 4:
                mo190b(parcel.readInt(), (Bundle) C1163l.m307a(parcel, Bundle.CREATOR));
                return true;
            case 5:
                mo185g(parcel.readInt(), (Bundle) C1163l.m307a(parcel, Bundle.CREATOR));
                return true;
            case 6:
                mo182j((Bundle) C1163l.m307a(parcel, Bundle.CREATOR));
                return true;
            case 7:
                mo184h(parcel.createTypedArrayList(Bundle.CREATOR));
                return true;
            case 8:
                mo186f((Bundle) C1163l.m307a(parcel, Bundle.CREATOR));
                return true;
            case 9:
                mo189c((Bundle) C1163l.m307a(parcel, Bundle.CREATOR));
                return true;
            case 10:
                Bundle bundle2 = (Bundle) C1163l.m307a(parcel, Bundle.CREATOR);
                mo179m();
                return true;
            case 11:
                Bundle bundle3 = (Bundle) C1163l.m307a(parcel, Bundle.CREATOR);
                mo180l();
                return true;
            case 12:
                mo188d((Bundle) C1163l.m307a(parcel, Bundle.CREATOR));
                return true;
            case 13:
                mo187e((Bundle) C1163l.m307a(parcel, Bundle.CREATOR));
                return true;
            default:
                return false;
        }
    }
}
