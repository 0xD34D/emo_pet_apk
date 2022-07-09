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
/* renamed from: com.google.android.play.core.assetpacks.aa */
/* loaded from: classes.dex */
final class C0980aa extends AbstractRunnableC1103ah {

    /* renamed from: a */
    final /* synthetic */ List f198a;

    /* renamed from: b */
    final /* synthetic */ Map f199b;

    /* renamed from: c */
    final /* synthetic */ C1277i f200c;

    /* renamed from: d */
    final /* synthetic */ AbstractC0998as f201d;

    /* renamed from: e */
    final /* synthetic */ C0993an f202e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0980aa(C0993an anVar, C1277i iVar, List list, Map map, C1277i iVar2, AbstractC0998as asVar) {
        super(iVar);
        this.f202e = anVar;
        this.f198a = list;
        this.f199b = map;
        this.f200c = iVar2;
        this.f201d = asVar;
    }

    @Override // com.google.android.play.core.internal.AbstractRunnableC1103ah
    /* renamed from: a */
    protected final void mo191a() {
        C1102ag agVar;
        C1112aq aqVar;
        String str;
        C1021bo boVar;
        ArrayList k = C0993an.m670k(this.f198a);
        try {
            aqVar = this.f202e.f241e;
            str = this.f202e.f239c;
            Bundle m = C0993an.m668m(this.f199b);
            C0993an anVar = this.f202e;
            C1277i iVar = this.f200c;
            boVar = anVar.f240d;
            ((AbstractC1171t) aqVar.m431c()).mo290k(str, k, m, new BinderC0991al(anVar, iVar, boVar, this.f201d));
        } catch (RemoteException e) {
            agVar = C0993an.f237a;
            agVar.m441c(e, "getPackStates(%s)", this.f198a);
            this.f200c.m77d(new RuntimeException(e));
        }
    }
}
