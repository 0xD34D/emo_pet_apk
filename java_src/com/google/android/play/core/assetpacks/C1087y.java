package com.google.android.play.core.assetpacks;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.play.core.internal.AbstractC1171t;
import com.google.android.play.core.internal.AbstractRunnableC1103ah;
import com.google.android.play.core.internal.C1102ag;
import com.google.android.play.core.internal.C1112aq;
import com.google.android.play.core.tasks.C1277i;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.google.android.play.core.assetpacks.y */
/* loaded from: classes.dex */
final class C1087y extends AbstractRunnableC1103ah {

    /* renamed from: a */
    final /* synthetic */ List f583a;

    /* renamed from: b */
    final /* synthetic */ C1277i f584b;

    /* renamed from: c */
    final /* synthetic */ C0993an f585c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1087y(C0993an anVar, C1277i iVar, List list, C1277i iVar2) {
        super(iVar);
        this.f585c = anVar;
        this.f583a = list;
        this.f584b = iVar2;
    }

    @Override // com.google.android.play.core.internal.AbstractRunnableC1103ah
    /* renamed from: a */
    protected final void mo191a() {
        C1102ag agVar;
        C1112aq aqVar;
        String str;
        Bundle C;
        ArrayList k = C0993an.m670k(this.f583a);
        try {
            aqVar = this.f585c.f241e;
            str = this.f585c.f239c;
            C = C0993an.m671C();
            ((AbstractC1171t) aqVar.m431c()).mo297d(str, k, C, new BinderC0986ag(this.f585c, this.f584b, (byte[]) null));
        } catch (RemoteException e) {
            agVar = C0993an.f237a;
            agVar.m441c(e, "cancelDownloads(%s)", this.f583a);
        }
    }
}
