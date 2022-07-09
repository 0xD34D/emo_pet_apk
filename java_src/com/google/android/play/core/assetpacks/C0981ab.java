package com.google.android.play.core.assetpacks;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.play.core.internal.AbstractC1171t;
import com.google.android.play.core.internal.AbstractRunnableC1103ah;
import com.google.android.play.core.internal.C1102ag;
import com.google.android.play.core.internal.C1112aq;
import com.google.android.play.core.tasks.C1277i;
/* renamed from: com.google.android.play.core.assetpacks.ab */
/* loaded from: classes.dex */
final class C0981ab extends AbstractRunnableC1103ah {

    /* renamed from: a */
    final /* synthetic */ int f203a;

    /* renamed from: b */
    final /* synthetic */ String f204b;

    /* renamed from: c */
    final /* synthetic */ String f205c;

    /* renamed from: d */
    final /* synthetic */ int f206d;

    /* renamed from: e */
    final /* synthetic */ C1277i f207e;

    /* renamed from: f */
    final /* synthetic */ C0993an f208f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0981ab(C0993an anVar, C1277i iVar, int i, String str, String str2, int i2, C1277i iVar2) {
        super(iVar);
        this.f208f = anVar;
        this.f203a = i;
        this.f204b = str;
        this.f205c = str2;
        this.f206d = i2;
        this.f207e = iVar2;
    }

    @Override // com.google.android.play.core.internal.AbstractRunnableC1103ah
    /* renamed from: a */
    protected final void mo191a() {
        C1102ag agVar;
        C1112aq aqVar;
        String str;
        Bundle C;
        try {
            aqVar = this.f208f.f241e;
            str = this.f208f.f239c;
            Bundle r = C0993an.m663r(this.f203a, this.f204b, this.f205c, this.f206d);
            C = C0993an.m671C();
            ((AbstractC1171t) aqVar.m431c()).mo295f(str, r, C, new BinderC0986ag(this.f208f, this.f207e, (char[]) null));
        } catch (RemoteException e) {
            agVar = C0993an.f237a;
            agVar.m441c(e, "notifyChunkTransferred", new Object[0]);
        }
    }
}
