package com.google.android.play.core.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.List;
/* renamed from: com.google.android.play.core.internal.bj */
/* loaded from: classes.dex */
public final class C1132bj extends C1161j implements AbstractC1134bl {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C1132bj(IBinder iBinder) {
        super(iBinder, "com.google.android.play.core.splitinstall.protocol.ISplitInstallService");
    }

    @Override // com.google.android.play.core.internal.AbstractC1134bl
    /* renamed from: c */
    public final void mo360c(String str, List<Bundle> list, Bundle bundle, AbstractC1136bn bnVar) throws RemoteException {
        Parcel a = m309a();
        a.writeString(str);
        a.writeTypedList(list);
        C1163l.m306b(a, bundle);
        C1163l.m305c(a, bnVar);
        m308b(2, a);
    }

    @Override // com.google.android.play.core.internal.AbstractC1134bl
    /* renamed from: d */
    public final void mo359d(String str, int i, Bundle bundle, AbstractC1136bn bnVar) throws RemoteException {
        Parcel a = m309a();
        a.writeString(str);
        a.writeInt(i);
        C1163l.m306b(a, bundle);
        C1163l.m305c(a, bnVar);
        m308b(4, a);
    }

    @Override // com.google.android.play.core.internal.AbstractC1134bl
    /* renamed from: e */
    public final void mo358e(String str, int i, AbstractC1136bn bnVar) throws RemoteException {
        Parcel a = m309a();
        a.writeString(str);
        a.writeInt(i);
        C1163l.m305c(a, bnVar);
        m308b(5, a);
    }

    @Override // com.google.android.play.core.internal.AbstractC1134bl
    /* renamed from: f */
    public final void mo357f(String str, AbstractC1136bn bnVar) throws RemoteException {
        Parcel a = m309a();
        a.writeString(str);
        C1163l.m305c(a, bnVar);
        m308b(6, a);
    }

    @Override // com.google.android.play.core.internal.AbstractC1134bl
    /* renamed from: g */
    public final void mo356g(String str, List<Bundle> list, Bundle bundle, AbstractC1136bn bnVar) throws RemoteException {
        Parcel a = m309a();
        a.writeString(str);
        a.writeTypedList(list);
        C1163l.m306b(a, bundle);
        C1163l.m305c(a, bnVar);
        m308b(7, a);
    }

    @Override // com.google.android.play.core.internal.AbstractC1134bl
    /* renamed from: h */
    public final void mo355h(String str, List<Bundle> list, Bundle bundle, AbstractC1136bn bnVar) throws RemoteException {
        Parcel a = m309a();
        a.writeString(str);
        a.writeTypedList(list);
        C1163l.m306b(a, bundle);
        C1163l.m305c(a, bnVar);
        m308b(8, a);
    }

    @Override // com.google.android.play.core.internal.AbstractC1134bl
    /* renamed from: i */
    public final void mo354i(String str, List<Bundle> list, Bundle bundle, AbstractC1136bn bnVar) throws RemoteException {
        Parcel a = m309a();
        a.writeString(str);
        a.writeTypedList(list);
        C1163l.m306b(a, bundle);
        C1163l.m305c(a, bnVar);
        m308b(13, a);
    }

    @Override // com.google.android.play.core.internal.AbstractC1134bl
    /* renamed from: j */
    public final void mo353j(String str, List<Bundle> list, Bundle bundle, AbstractC1136bn bnVar) throws RemoteException {
        Parcel a = m309a();
        a.writeString(str);
        a.writeTypedList(list);
        C1163l.m306b(a, bundle);
        C1163l.m305c(a, bnVar);
        m308b(14, a);
    }
}
