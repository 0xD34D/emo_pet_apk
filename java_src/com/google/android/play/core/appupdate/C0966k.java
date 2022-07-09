package com.google.android.play.core.appupdate;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.play.core.internal.AbstractRunnableC1103ah;
import com.google.android.play.core.internal.C1102ag;
import com.google.android.play.core.tasks.C1277i;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.play.core.appupdate.k */
/* loaded from: classes.dex */
public final class C0966k extends AbstractRunnableC1103ah {

    /* renamed from: a */
    final /* synthetic */ C1277i f133a;

    /* renamed from: b */
    final /* synthetic */ String f134b;

    /* renamed from: c */
    final /* synthetic */ C0970o f135c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0966k(C0970o oVar, C1277i iVar, C1277i iVar2, String str) {
        super(iVar);
        this.f135c = oVar;
        this.f133a = iVar2;
        this.f134b = str;
    }

    @Override // com.google.android.play.core.internal.AbstractRunnableC1103ah
    /* renamed from: a */
    protected final void mo191a() {
        C1102ag agVar;
        String str;
        Bundle j;
        try {
            str = this.f135c.f144d;
            j = C0970o.m702j();
            this.f135c.f143a.m431c().mo302d(str, j, new BinderC0968m(this.f135c, this.f133a));
        } catch (RemoteException e) {
            agVar = C0970o.f141b;
            agVar.m441c(e, "completeUpdate(%s)", this.f134b);
            this.f133a.m77d(new RuntimeException(e));
        }
    }
}
