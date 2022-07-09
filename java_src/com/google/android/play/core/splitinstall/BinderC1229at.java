package com.google.android.play.core.splitinstall;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.play.core.internal.AbstractBinderC1135bm;
import com.google.android.play.core.internal.C1102ag;
import com.google.android.play.core.tasks.C1277i;
import java.util.List;
/* renamed from: com.google.android.play.core.splitinstall.at */
/* loaded from: classes.dex */
class BinderC1229at<T> extends AbstractBinderC1135bm {

    /* renamed from: a */
    final C1277i<T> f783a;

    /* renamed from: b */
    final /* synthetic */ C1230au f784b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public BinderC1229at(C1230au auVar, C1277i<T> iVar) {
        this.f784b = auVar;
        this.f783a = iVar;
    }

    /* renamed from: b */
    public void mo190b(int i, Bundle bundle) throws RemoteException {
        C1102ag agVar;
        this.f784b.f787a.m432b();
        agVar = C1230au.f785b;
        agVar.m440d("onCancelInstall(%d)", Integer.valueOf(i));
    }

    /* renamed from: c */
    public void mo189c(Bundle bundle) throws RemoteException {
        C1102ag agVar;
        this.f784b.f787a.m432b();
        agVar = C1230au.f785b;
        agVar.m440d("onDeferredInstall", new Object[0]);
    }

    /* renamed from: d */
    public void mo188d(Bundle bundle) throws RemoteException {
        C1102ag agVar;
        this.f784b.f787a.m432b();
        agVar = C1230au.f785b;
        agVar.m440d("onDeferredLanguageInstall", new Object[0]);
    }

    /* renamed from: e */
    public void mo187e(Bundle bundle) throws RemoteException {
        C1102ag agVar;
        this.f784b.f787a.m432b();
        agVar = C1230au.f785b;
        agVar.m440d("onDeferredLanguageUninstall", new Object[0]);
    }

    /* renamed from: f */
    public void mo186f(Bundle bundle) throws RemoteException {
        C1102ag agVar;
        this.f784b.f787a.m432b();
        agVar = C1230au.f785b;
        agVar.m440d("onDeferredUninstall", new Object[0]);
    }

    /* renamed from: g */
    public void mo185g(int i, Bundle bundle) throws RemoteException {
        C1102ag agVar;
        this.f784b.f787a.m432b();
        agVar = C1230au.f785b;
        agVar.m440d("onGetSession(%d)", Integer.valueOf(i));
    }

    /* renamed from: h */
    public void mo184h(List<Bundle> list) throws RemoteException {
        C1102ag agVar;
        this.f784b.f787a.m432b();
        agVar = C1230au.f785b;
        agVar.m440d("onGetSessionStates", new Object[0]);
    }

    /* renamed from: i */
    public void mo183i(int i, Bundle bundle) throws RemoteException {
        C1102ag agVar;
        this.f784b.f787a.m432b();
        agVar = C1230au.f785b;
        agVar.m440d("onStartInstall(%d)", Integer.valueOf(i));
    }

    @Override // com.google.android.play.core.internal.AbstractC1136bn
    /* renamed from: j */
    public final void mo182j(Bundle bundle) throws RemoteException {
        C1102ag agVar;
        this.f784b.f787a.m432b();
        int i = bundle.getInt("error_code");
        agVar = C1230au.f785b;
        agVar.m442b("onError(%d)", Integer.valueOf(i));
        this.f783a.m77d(new SplitInstallException(i));
    }

    @Override // com.google.android.play.core.internal.AbstractC1136bn
    /* renamed from: k */
    public final void mo181k(int i) throws RemoteException {
        C1102ag agVar;
        this.f784b.f787a.m432b();
        agVar = C1230au.f785b;
        agVar.m440d("onCompleteInstall(%d)", Integer.valueOf(i));
    }

    @Override // com.google.android.play.core.internal.AbstractC1136bn
    /* renamed from: l */
    public final void mo180l() throws RemoteException {
        C1102ag agVar;
        this.f784b.f787a.m432b();
        agVar = C1230au.f785b;
        agVar.m440d("onCompleteInstallForAppUpdate", new Object[0]);
    }

    @Override // com.google.android.play.core.internal.AbstractC1136bn
    /* renamed from: m */
    public final void mo179m() throws RemoteException {
        C1102ag agVar;
        this.f784b.f787a.m432b();
        agVar = C1230au.f785b;
        agVar.m440d("onGetSplitsForAppUpdate", new Object[0]);
    }
}
