package com.google.android.play.core.splitinstall;

import android.os.RemoteException;
import com.google.android.play.core.internal.AbstractRunnableC1103ah;
import com.google.android.play.core.internal.C1102ag;
import com.google.android.play.core.tasks.C1277i;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.play.core.splitinstall.ak */
/* loaded from: classes.dex */
public final class C1220ak extends AbstractRunnableC1103ah {

    /* renamed from: a */
    final /* synthetic */ int f780a;

    /* renamed from: b */
    final /* synthetic */ C1277i f781b;

    /* renamed from: c */
    final /* synthetic */ C1230au f782c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1220ak(C1230au auVar, C1277i iVar, int i, C1277i iVar2) {
        super(iVar);
        this.f782c = auVar;
        this.f780a = i;
        this.f781b = iVar2;
    }

    @Override // com.google.android.play.core.internal.AbstractRunnableC1103ah
    /* renamed from: a */
    protected final void mo191a() {
        C1102ag agVar;
        String str;
        try {
            str = this.f782c.f788d;
            this.f782c.f787a.m431c().mo359d(str, this.f780a, C1230au.m167l(), new BinderC1221al(this.f782c, this.f781b));
        } catch (RemoteException e) {
            agVar = C1230au.f785b;
            agVar.m441c(e, "cancelInstall(%d)", Integer.valueOf(this.f780a));
            this.f781b.m77d(new RuntimeException(e));
        }
    }
}
