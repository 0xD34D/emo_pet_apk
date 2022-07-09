package com.google.android.play.core.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.List;
/* renamed from: com.google.android.play.core.internal.r */
/* loaded from: classes.dex */
public final class C1169r extends C1161j implements AbstractC1171t {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C1169r(IBinder iBinder) {
        super(iBinder, "com.google.android.play.core.assetpacks.protocol.IAssetModuleService");
    }

    @Override // com.google.android.play.core.internal.AbstractC1171t
    /* renamed from: c */
    public final void mo298c(String str, List<Bundle> list, Bundle bundle, AbstractC1173v vVar) throws RemoteException {
        Parcel a = m309a();
        a.writeString(str);
        a.writeTypedList(list);
        C1163l.m306b(a, bundle);
        C1163l.m305c(a, vVar);
        m308b(2, a);
    }

    @Override // com.google.android.play.core.internal.AbstractC1171t
    /* renamed from: d */
    public final void mo297d(String str, List<Bundle> list, Bundle bundle, AbstractC1173v vVar) throws RemoteException {
        Parcel a = m309a();
        a.writeString(str);
        a.writeTypedList(list);
        C1163l.m306b(a, bundle);
        C1163l.m305c(a, vVar);
        m308b(14, a);
    }

    @Override // com.google.android.play.core.internal.AbstractC1171t
    /* renamed from: e */
    public final void mo296e(String str, Bundle bundle, AbstractC1173v vVar) throws RemoteException {
        Parcel a = m309a();
        a.writeString(str);
        C1163l.m306b(a, bundle);
        C1163l.m305c(a, vVar);
        m308b(5, a);
    }

    @Override // com.google.android.play.core.internal.AbstractC1171t
    /* renamed from: f */
    public final void mo295f(String str, Bundle bundle, Bundle bundle2, AbstractC1173v vVar) throws RemoteException {
        Parcel a = m309a();
        a.writeString(str);
        C1163l.m306b(a, bundle);
        C1163l.m306b(a, bundle2);
        C1163l.m305c(a, vVar);
        m308b(6, a);
    }

    @Override // com.google.android.play.core.internal.AbstractC1171t
    /* renamed from: g */
    public final void mo294g(String str, Bundle bundle, Bundle bundle2, AbstractC1173v vVar) throws RemoteException {
        Parcel a = m309a();
        a.writeString(str);
        C1163l.m306b(a, bundle);
        C1163l.m306b(a, bundle2);
        C1163l.m305c(a, vVar);
        m308b(7, a);
    }

    @Override // com.google.android.play.core.internal.AbstractC1171t
    /* renamed from: h */
    public final void mo293h(String str, Bundle bundle, Bundle bundle2, AbstractC1173v vVar) throws RemoteException {
        Parcel a = m309a();
        a.writeString(str);
        C1163l.m306b(a, bundle);
        C1163l.m306b(a, bundle2);
        C1163l.m305c(a, vVar);
        m308b(9, a);
    }

    @Override // com.google.android.play.core.internal.AbstractC1171t
    /* renamed from: i */
    public final void mo292i(String str, Bundle bundle, AbstractC1173v vVar) throws RemoteException {
        Parcel a = m309a();
        a.writeString(str);
        C1163l.m306b(a, bundle);
        C1163l.m305c(a, vVar);
        m308b(10, a);
    }

    @Override // com.google.android.play.core.internal.AbstractC1171t
    /* renamed from: j */
    public final void mo291j(String str, Bundle bundle, Bundle bundle2, AbstractC1173v vVar) throws RemoteException {
        Parcel a = m309a();
        a.writeString(str);
        C1163l.m306b(a, bundle);
        C1163l.m306b(a, bundle2);
        C1163l.m305c(a, vVar);
        m308b(11, a);
    }

    @Override // com.google.android.play.core.internal.AbstractC1171t
    /* renamed from: k */
    public final void mo290k(String str, List<Bundle> list, Bundle bundle, AbstractC1173v vVar) throws RemoteException {
        Parcel a = m309a();
        a.writeString(str);
        a.writeTypedList(list);
        C1163l.m306b(a, bundle);
        C1163l.m305c(a, vVar);
        m308b(12, a);
    }

    @Override // com.google.android.play.core.internal.AbstractC1171t
    /* renamed from: l */
    public final void mo289l(String str, Bundle bundle, Bundle bundle2, AbstractC1173v vVar) throws RemoteException {
        Parcel a = m309a();
        a.writeString(str);
        C1163l.m306b(a, bundle);
        C1163l.m306b(a, bundle2);
        C1163l.m305c(a, vVar);
        m308b(13, a);
    }
}
