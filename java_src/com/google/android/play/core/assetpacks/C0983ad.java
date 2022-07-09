package com.google.android.play.core.assetpacks;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.play.core.internal.AbstractC1171t;
import com.google.android.play.core.internal.AbstractRunnableC1103ah;
import com.google.android.play.core.internal.C1102ag;
import com.google.android.play.core.internal.C1112aq;
import com.google.android.play.core.tasks.C1277i;
/* renamed from: com.google.android.play.core.assetpacks.ad */
/* loaded from: classes.dex */
final class C0983ad extends AbstractRunnableC1103ah {

    /* renamed from: a */
    final /* synthetic */ int f214a;

    /* renamed from: b */
    final /* synthetic */ C1277i f215b;

    /* renamed from: c */
    final /* synthetic */ C0993an f216c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0983ad(C0993an anVar, C1277i iVar, int i, C1277i iVar2) {
        super(iVar);
        this.f216c = anVar;
        this.f214a = i;
        this.f215b = iVar2;
    }

    @Override // com.google.android.play.core.internal.AbstractRunnableC1103ah
    /* renamed from: a */
    protected final void mo191a() {
        C1102ag agVar;
        C1112aq aqVar;
        String str;
        Bundle B;
        Bundle C;
        try {
            aqVar = this.f216c.f241e;
            str = this.f216c.f239c;
            B = C0993an.m672B(this.f214a);
            C = C0993an.m671C();
            ((AbstractC1171t) aqVar.m431c()).mo293h(str, B, C, new BinderC0986ag(this.f216c, this.f215b, (int[]) null));
        } catch (RemoteException e) {
            agVar = C0993an.f237a;
            agVar.m441c(e, "notifySessionFailed", new Object[0]);
        }
    }
}
