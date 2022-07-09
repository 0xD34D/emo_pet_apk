package com.google.android.play.core.appupdate;

import android.app.PendingIntent;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.play.core.install.InstallException;
import com.google.android.play.core.internal.C1102ag;
import com.google.android.play.core.tasks.C1277i;
/* renamed from: com.google.android.play.core.appupdate.n */
/* loaded from: classes.dex */
final class BinderC0969n extends BinderC0967l<AppUpdateInfo> {

    /* renamed from: d */
    final /* synthetic */ C0970o f139d;

    /* renamed from: e */
    private final String f140e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BinderC0969n(C0970o oVar, C1277i<AppUpdateInfo> iVar, String str) {
        super(oVar, new C1102ag("OnRequestInstallCallback"), iVar);
        this.f139d = oVar;
        this.f140e = str;
    }

    @Override // com.google.android.play.core.appupdate.BinderC0967l, com.google.android.play.core.internal.AbstractC1168q
    /* renamed from: b */
    public final void mo301b(Bundle bundle) throws RemoteException {
        int i;
        AppUpdateInfo a;
        int i2;
        super.mo301b(bundle);
        i = bundle.getInt("error.code", -2);
        if (i != 0) {
            C1277i iVar = this.f137b;
            i2 = bundle.getInt("error.code", -2);
            iVar.m77d(new InstallException(i2));
            return;
        }
        C1277i iVar2 = this.f137b;
        a = AppUpdateInfo.m717a(this.f140e, bundle.getInt("version.code", -1), bundle.getInt("update.availability"), bundle.getInt("install.status", 0), r22.getInt("client.version.staleness", -1) == -1 ? null : Integer.valueOf(bundle.getInt("client.version.staleness")), bundle.getInt("in.app.update.priority", 0), bundle.getLong("bytes.downloaded"), bundle.getLong("total.bytes.to.download"), bundle.getLong("additional.size.required"), this.f139d.f146f.m701a(), (PendingIntent) bundle.getParcelable("blocking.intent"), (PendingIntent) bundle.getParcelable("nonblocking.intent"), (PendingIntent) bundle.getParcelable("blocking.destructive.intent"), (PendingIntent) bundle.getParcelable("nonblocking.destructive.intent"));
        iVar2.m76e(a);
    }
}
