package com.google.android.play.core.splitinstall;

import android.os.RemoteException;
import com.google.android.play.core.internal.AbstractRunnableC1103ah;
import com.google.android.play.core.internal.C1102ag;
import com.google.android.play.core.tasks.C1277i;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.play.core.splitinstall.ai */
/* loaded from: classes.dex */
public final class C1218ai extends AbstractRunnableC1103ah {

    /* renamed from: a */
    final /* synthetic */ int f775a;

    /* renamed from: b */
    final /* synthetic */ C1277i f776b;

    /* renamed from: c */
    final /* synthetic */ C1230au f777c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1218ai(C1230au auVar, C1277i iVar, int i, C1277i iVar2) {
        super(iVar);
        this.f777c = auVar;
        this.f775a = i;
        this.f776b = iVar2;
    }

    @Override // com.google.android.play.core.internal.AbstractRunnableC1103ah
    /* renamed from: a */
    protected final void mo191a() {
        C1102ag agVar;
        String str;
        try {
            str = this.f777c.f788d;
            this.f777c.f787a.m431c().mo358e(str, this.f775a, new BinderC1226aq(this.f777c, this.f776b));
        } catch (RemoteException e) {
            agVar = C1230au.f785b;
            agVar.m441c(e, "getSessionState(%d)", Integer.valueOf(this.f775a));
            this.f776b.m77d(new RuntimeException(e));
        }
    }
}
