package com.google.android.play.core.splitinstall;

import android.os.RemoteException;
import com.google.android.play.core.internal.AbstractRunnableC1103ah;
import com.google.android.play.core.internal.C1102ag;
import com.google.android.play.core.tasks.C1277i;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.play.core.splitinstall.ae */
/* loaded from: classes.dex */
public final class C1214ae extends AbstractRunnableC1103ah {

    /* renamed from: a */
    final /* synthetic */ List f763a;

    /* renamed from: b */
    final /* synthetic */ C1277i f764b;

    /* renamed from: c */
    final /* synthetic */ C1230au f765c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1214ae(C1230au auVar, C1277i iVar, List list, C1277i iVar2) {
        super(iVar);
        this.f765c = auVar;
        this.f763a = list;
        this.f764b = iVar2;
    }

    @Override // com.google.android.play.core.internal.AbstractRunnableC1103ah
    /* renamed from: a */
    protected final void mo191a() {
        C1102ag agVar;
        String str;
        try {
            str = this.f765c.f788d;
            this.f765c.f787a.m431c().mo356g(str, C1230au.m170i(this.f763a), C1230au.m167l(), new BinderC1225ap(this.f765c, this.f764b));
        } catch (RemoteException e) {
            agVar = C1230au.f785b;
            agVar.m441c(e, "deferredUninstall(%s)", this.f763a);
            this.f764b.m77d(new RuntimeException(e));
        }
    }
}
