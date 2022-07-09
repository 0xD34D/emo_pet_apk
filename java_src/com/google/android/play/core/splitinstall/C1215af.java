package com.google.android.play.core.splitinstall;

import android.os.RemoteException;
import com.google.android.play.core.internal.AbstractRunnableC1103ah;
import com.google.android.play.core.internal.C1102ag;
import com.google.android.play.core.tasks.C1277i;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.play.core.splitinstall.af */
/* loaded from: classes.dex */
public final class C1215af extends AbstractRunnableC1103ah {

    /* renamed from: a */
    final /* synthetic */ List f766a;

    /* renamed from: b */
    final /* synthetic */ C1277i f767b;

    /* renamed from: c */
    final /* synthetic */ C1230au f768c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1215af(C1230au auVar, C1277i iVar, List list, C1277i iVar2) {
        super(iVar);
        this.f768c = auVar;
        this.f766a = list;
        this.f767b = iVar2;
    }

    @Override // com.google.android.play.core.internal.AbstractRunnableC1103ah
    /* renamed from: a */
    protected final void mo191a() {
        C1102ag agVar;
        String str;
        try {
            str = this.f768c.f788d;
            this.f768c.f787a.m431c().mo355h(str, C1230au.m170i(this.f766a), C1230au.m167l(), new BinderC1222am(this.f768c, this.f767b));
        } catch (RemoteException e) {
            agVar = C1230au.f785b;
            agVar.m441c(e, "deferredInstall(%s)", this.f766a);
            this.f767b.m77d(new RuntimeException(e));
        }
    }
}
