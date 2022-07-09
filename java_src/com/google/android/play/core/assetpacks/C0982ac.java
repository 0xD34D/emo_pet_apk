package com.google.android.play.core.assetpacks;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.play.core.internal.AbstractC1171t;
import com.google.android.play.core.internal.AbstractRunnableC1103ah;
import com.google.android.play.core.internal.C1102ag;
import com.google.android.play.core.internal.C1112aq;
import com.google.android.play.core.tasks.C1277i;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.play.core.assetpacks.ac */
/* loaded from: classes.dex */
public final class C0982ac extends AbstractRunnableC1103ah {

    /* renamed from: a */
    final /* synthetic */ int f209a;

    /* renamed from: b */
    final /* synthetic */ String f210b;

    /* renamed from: c */
    final /* synthetic */ C1277i f211c;

    /* renamed from: d */
    final /* synthetic */ int f212d;

    /* renamed from: e */
    final /* synthetic */ C0993an f213e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0982ac(C0993an anVar, C1277i iVar, int i, String str, C1277i iVar2, int i2) {
        super(iVar);
        this.f213e = anVar;
        this.f209a = i;
        this.f210b = str;
        this.f211c = iVar2;
        this.f212d = i2;
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
            aqVar = this.f213e.f241e;
            str = this.f213e.f239c;
            A = C0993an.m673A(this.f209a, this.f210b);
            C = C0993an.m671C();
            ((AbstractC1171t) aqVar.m431c()).mo294g(str, A, C, new BinderC0990ak(this.f213e, this.f211c, this.f209a, this.f210b, this.f212d));
        } catch (RemoteException e) {
            agVar = C0993an.f237a;
            agVar.m441c(e, "notifyModuleCompleted", new Object[0]);
        }
    }
}
