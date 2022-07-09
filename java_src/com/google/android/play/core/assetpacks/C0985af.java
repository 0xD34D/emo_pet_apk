package com.google.android.play.core.assetpacks;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.play.core.internal.AbstractC1171t;
import com.google.android.play.core.internal.AbstractRunnableC1103ah;
import com.google.android.play.core.internal.C1102ag;
import com.google.android.play.core.internal.C1112aq;
import com.google.android.play.core.tasks.C1277i;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.play.core.assetpacks.af */
/* loaded from: classes.dex */
public final class C0985af extends AbstractRunnableC1103ah {

    /* renamed from: a */
    final /* synthetic */ C1277i f223a;

    /* renamed from: b */
    final /* synthetic */ C0993an f224b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0985af(C0993an anVar, C1277i iVar, C1277i iVar2) {
        super(iVar);
        this.f224b = anVar;
        this.f223a = iVar2;
    }

    @Override // com.google.android.play.core.internal.AbstractRunnableC1103ah
    /* renamed from: a */
    protected final void mo191a() {
        C1102ag agVar;
        C1112aq aqVar;
        String str;
        Bundle C;
        try {
            aqVar = this.f224b.f242f;
            str = this.f224b.f239c;
            C = C0993an.m671C();
            ((AbstractC1171t) aqVar.m431c()).mo292i(str, C, new BinderC0989aj(this.f224b, this.f223a));
        } catch (RemoteException e) {
            agVar = C0993an.f237a;
            agVar.m441c(e, "keepAlive", new Object[0]);
        }
    }
}
