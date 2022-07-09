package com.google.android.play.core.appupdate;

import android.os.RemoteException;
import com.google.android.play.core.internal.AbstractRunnableC1103ah;
import com.google.android.play.core.internal.C1102ag;
import com.google.android.play.core.tasks.C1277i;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.play.core.appupdate.j */
/* loaded from: classes.dex */
public final class C0965j extends AbstractRunnableC1103ah {

    /* renamed from: a */
    final /* synthetic */ String f130a;

    /* renamed from: b */
    final /* synthetic */ C1277i f131b;

    /* renamed from: c */
    final /* synthetic */ C0970o f132c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0965j(C0970o oVar, C1277i iVar, String str, C1277i iVar2) {
        super(iVar);
        this.f132c = oVar;
        this.f130a = str;
        this.f131b = iVar2;
    }

    @Override // com.google.android.play.core.internal.AbstractRunnableC1103ah
    /* renamed from: a */
    protected final void mo191a() {
        C1102ag agVar;
        String str;
        try {
            str = this.f132c.f144d;
            this.f132c.f143a.m431c().mo303c(str, C0970o.m708d(this.f132c, this.f130a), new BinderC0969n(this.f132c, this.f131b, this.f130a));
        } catch (RemoteException e) {
            agVar = C0970o.f141b;
            agVar.m441c(e, "requestUpdateInfo(%s)", this.f130a);
            this.f131b.m77d(new RuntimeException(e));
        }
    }
}
