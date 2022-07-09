package com.google.android.play.core.assetpacks;

import android.content.Context;
import com.google.android.play.core.internal.AbstractC1154ce;
import com.google.android.play.core.internal.C1130bh;
import com.google.android.play.core.internal.C1152cc;
/* renamed from: com.google.android.play.core.assetpacks.o */
/* loaded from: classes.dex */
public final class C1077o implements AbstractC1154ce<AbstractC1082t> {

    /* renamed from: a */
    private final AbstractC1154ce<Context> f564a;

    /* renamed from: b */
    private final AbstractC1154ce<C0993an> f565b;

    /* renamed from: c */
    private final AbstractC1154ce<C1043cj> f566c;

    public C1077o(AbstractC1154ce<Context> ceVar, AbstractC1154ce<C0993an> ceVar2, AbstractC1154ce<C1043cj> ceVar3) {
        this.f564a = ceVar;
        this.f565b = ceVar2;
        this.f566c = ceVar3;
    }

    @Override // com.google.android.play.core.internal.AbstractC1154ce
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ AbstractC1082t mo94a() {
        AbstractC1082t tVar = (AbstractC1082t) (C1073l.m478b(((C1078p) this.f564a).mo94a()) == null ? C1152cc.m338c(this.f565b).m341a() : C1152cc.m338c(this.f566c).m341a());
        C1130bh.m368k(tVar);
        return tVar;
    }
}
