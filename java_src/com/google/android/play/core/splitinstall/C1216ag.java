package com.google.android.play.core.splitinstall;

import android.os.RemoteException;
import com.google.android.play.core.internal.AbstractRunnableC1103ah;
import com.google.android.play.core.internal.C1102ag;
import com.google.android.play.core.tasks.C1277i;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.play.core.splitinstall.ag */
/* loaded from: classes.dex */
public final class C1216ag extends AbstractRunnableC1103ah {

    /* renamed from: a */
    final /* synthetic */ List f769a;

    /* renamed from: b */
    final /* synthetic */ C1277i f770b;

    /* renamed from: c */
    final /* synthetic */ C1230au f771c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1216ag(C1230au auVar, C1277i iVar, List list, C1277i iVar2) {
        super(iVar);
        this.f771c = auVar;
        this.f769a = list;
        this.f770b = iVar2;
    }

    @Override // com.google.android.play.core.internal.AbstractRunnableC1103ah
    /* renamed from: a */
    protected final void mo191a() {
        C1102ag agVar;
        String str;
        try {
            str = this.f771c.f788d;
            this.f771c.f787a.m431c().mo354i(str, C1230au.m169j(this.f769a), C1230au.m167l(), new BinderC1223an(this.f771c, this.f770b));
        } catch (RemoteException e) {
            agVar = C1230au.f785b;
            agVar.m441c(e, "deferredLanguageInstall(%s)", this.f769a);
            this.f770b.m77d(new RuntimeException(e));
        }
    }
}
