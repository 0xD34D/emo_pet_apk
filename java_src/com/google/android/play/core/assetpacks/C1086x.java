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
import java.util.Map;
/* renamed from: com.google.android.play.core.assetpacks.x */
/* loaded from: classes.dex */
final class C1086x extends AbstractRunnableC1103ah {

    /* renamed from: a */
    final /* synthetic */ List f578a;

    /* renamed from: b */
    final /* synthetic */ Map f579b;

    /* renamed from: c */
    final /* synthetic */ C1277i f580c;

    /* renamed from: d */
    final /* synthetic */ List f581d;

    /* renamed from: e */
    final /* synthetic */ C0993an f582e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1086x(C0993an anVar, C1277i iVar, List list, Map map, C1277i iVar2, List list2) {
        super(iVar);
        this.f582e = anVar;
        this.f578a = list;
        this.f579b = map;
        this.f580c = iVar2;
        this.f581d = list2;
    }

    @Override // com.google.android.play.core.internal.AbstractRunnableC1103ah
    /* renamed from: a */
    protected final void mo191a() {
        C1102ag agVar;
        C1112aq aqVar;
        String str;
        C1021bo boVar;
        ArrayList k = C0993an.m670k(this.f578a);
        try {
            aqVar = this.f582e.f241e;
            str = this.f582e.f239c;
            Bundle m = C0993an.m668m(this.f579b);
            C0993an anVar = this.f582e;
            C1277i iVar = this.f580c;
            boVar = anVar.f240d;
            ((AbstractC1171t) aqVar.m431c()).mo298c(str, k, m, new BinderC0992am(anVar, iVar, boVar, this.f581d));
        } catch (RemoteException e) {
            agVar = C0993an.f237a;
            agVar.m441c(e, "startDownload(%s)", this.f578a);
            this.f580c.m77d(new RuntimeException(e));
        }
    }
}
