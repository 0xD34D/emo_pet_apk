package com.google.android.play.core.splitinstall;

import android.os.RemoteException;
import com.google.android.play.core.internal.AbstractRunnableC1103ah;
import com.google.android.play.core.internal.C1102ag;
import com.google.android.play.core.tasks.C1277i;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.play.core.splitinstall.ah */
/* loaded from: classes.dex */
public final class C1217ah extends AbstractRunnableC1103ah {

    /* renamed from: a */
    final /* synthetic */ List f772a;

    /* renamed from: b */
    final /* synthetic */ C1277i f773b;

    /* renamed from: c */
    final /* synthetic */ C1230au f774c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1217ah(C1230au auVar, C1277i iVar, List list, C1277i iVar2) {
        super(iVar);
        this.f774c = auVar;
        this.f772a = list;
        this.f773b = iVar2;
    }

    @Override // com.google.android.play.core.internal.AbstractRunnableC1103ah
    /* renamed from: a */
    protected final void mo191a() {
        C1102ag agVar;
        String str;
        try {
            str = this.f774c.f788d;
            this.f774c.f787a.m431c().mo353j(str, C1230au.m169j(this.f772a), C1230au.m167l(), new BinderC1224ao(this.f774c, this.f773b));
        } catch (RemoteException e) {
            agVar = C1230au.f785b;
            agVar.m441c(e, "deferredLanguageUninstall(%s)", this.f772a);
            this.f773b.m77d(new RuntimeException(e));
        }
    }
}
