package com.google.android.play.core.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: com.google.android.play.core.internal.u */
/* loaded from: classes.dex */
public abstract class AbstractBinderC1172u extends BinderC1162k implements AbstractC1173v {
    public AbstractBinderC1172u() {
        super("com.google.android.play.core.assetpacks.protocol.IAssetModuleServiceCallback");
    }

    @Override // com.google.android.play.core.internal.BinderC1162k
    /* renamed from: a */
    protected final boolean mo275a(int i, Parcel parcel) throws RemoteException {
        switch (i) {
            case 2:
                mo288b(parcel.readInt(), (Bundle) C1163l.m307a(parcel, Bundle.CREATOR));
                return true;
            case 3:
                int readInt = parcel.readInt();
                Bundle bundle = (Bundle) C1163l.m307a(parcel, Bundle.CREATOR);
                mo282h(readInt);
                return true;
            case 4:
                int readInt2 = parcel.readInt();
                Bundle bundle2 = (Bundle) C1163l.m307a(parcel, Bundle.CREATOR);
                mo280j(readInt2);
                return true;
            case 5:
                mo287c(parcel.createTypedArrayList(Bundle.CREATOR));
                return true;
            case 6:
                Bundle bundle3 = (Bundle) C1163l.m307a(parcel, Bundle.CREATOR);
                mo279k((Bundle) C1163l.m307a(parcel, Bundle.CREATOR));
                return true;
            case 7:
                mo283g((Bundle) C1163l.m307a(parcel, Bundle.CREATOR));
                return true;
            case 8:
                Bundle bundle4 = (Bundle) C1163l.m307a(parcel, Bundle.CREATOR);
                mo278l((Bundle) C1163l.m307a(parcel, Bundle.CREATOR));
                return true;
            case 9:
            default:
                return false;
            case 10:
                Bundle bundle5 = (Bundle) C1163l.m307a(parcel, Bundle.CREATOR);
                mo277m((Bundle) C1163l.m307a(parcel, Bundle.CREATOR));
                return true;
            case 11:
                mo286d((Bundle) C1163l.m307a(parcel, Bundle.CREATOR), (Bundle) C1163l.m307a(parcel, Bundle.CREATOR));
                return true;
            case 12:
                mo285e((Bundle) C1163l.m307a(parcel, Bundle.CREATOR), (Bundle) C1163l.m307a(parcel, Bundle.CREATOR));
                return true;
            case 13:
                mo284f((Bundle) C1163l.m307a(parcel, Bundle.CREATOR), (Bundle) C1163l.m307a(parcel, Bundle.CREATOR));
                return true;
            case 14:
                Bundle bundle6 = (Bundle) C1163l.m307a(parcel, Bundle.CREATOR);
                Bundle bundle7 = (Bundle) C1163l.m307a(parcel, Bundle.CREATOR);
                mo276n();
                return true;
            case 15:
                Bundle bundle8 = (Bundle) C1163l.m307a(parcel, Bundle.CREATOR);
                mo281i();
                return true;
        }
    }
}
