package com.google.android.play.core.assetpacks;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.play.core.internal.AbstractC1171t;
import com.google.android.play.core.internal.AbstractRunnableC1103ah;
import com.google.android.play.core.internal.C1102ag;
import com.google.android.play.core.internal.C1112aq;
import com.google.android.play.core.tasks.C1277i;
/* renamed from: com.google.android.play.core.assetpacks.w */
/* loaded from: classes.dex */
final class C1085w extends AbstractRunnableC1103ah {

    /* renamed from: a */
    final /* synthetic */ String f575a;

    /* renamed from: b */
    final /* synthetic */ C1277i f576b;

    /* renamed from: c */
    final /* synthetic */ C0993an f577c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1085w(C0993an anVar, C1277i iVar, String str, C1277i iVar2) {
        super(iVar);
        this.f577c = anVar;
        this.f575a = str;
        this.f576b = iVar2;
    }

    @Override // com.google.android.play.core.internal.AbstractRunnableC1103ah
    /* renamed from: a */
    protected final void mo191a() {
        C1102ag agVar;
        C1112aq aqVar;
        String str;
        Bundle A;
        Bundle C;
        try {
            aqVar = this.f577c.f241e;
            str = this.f577c.f239c;
            A = C0993an.m673A(0, this.f575a);
            C = C0993an.m671C();
            ((AbstractC1171t) aqVar.m431c()).mo289l(str, A, C, new BinderC0986ag(this.f577c, this.f576b, (short[]) null));
        } catch (RemoteException e) {
            agVar = C0993an.f237a;
            agVar.m441c(e, "removePack(%s)", this.f575a);
        }
    }
}
