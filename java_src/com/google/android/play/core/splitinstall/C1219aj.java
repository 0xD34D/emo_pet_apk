package com.google.android.play.core.splitinstall;

import android.os.RemoteException;
import com.google.android.play.core.internal.AbstractRunnableC1103ah;
import com.google.android.play.core.internal.C1102ag;
import com.google.android.play.core.tasks.C1277i;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.play.core.splitinstall.aj */
/* loaded from: classes.dex */
public final class C1219aj extends AbstractRunnableC1103ah {

    /* renamed from: a */
    final /* synthetic */ C1277i f778a;

    /* renamed from: b */
    final /* synthetic */ C1230au f779b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1219aj(C1230au auVar, C1277i iVar, C1277i iVar2) {
        super(iVar);
        this.f779b = auVar;
        this.f778a = iVar2;
    }

    @Override // com.google.android.play.core.internal.AbstractRunnableC1103ah
    /* renamed from: a */
    protected final void mo191a() {
        C1102ag agVar;
        String str;
        try {
            str = this.f779b.f788d;
            this.f779b.f787a.m431c().mo357f(str, new BinderC1227ar(this.f779b, this.f778a));
        } catch (RemoteException e) {
            agVar = C1230au.f785b;
            agVar.m441c(e, "getSessionStates", new Object[0]);
            this.f778a.m77d(new RuntimeException(e));
        }
    }
}
