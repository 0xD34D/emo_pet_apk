package com.google.android.play.core.assetpacks;

import com.google.android.play.core.common.C1090a;
import com.google.android.play.core.internal.AbstractC1154ce;
import com.google.android.play.core.internal.C1152cc;
import com.google.android.play.core.splitinstall.C1248p;
import java.util.concurrent.Executor;
/* renamed from: com.google.android.play.core.assetpacks.j */
/* loaded from: classes.dex */
public final class C1071j implements AbstractC1154ce<C1070i> {

    /* renamed from: a */
    private final AbstractC1154ce<C1000au> f545a;

    /* renamed from: b */
    private final AbstractC1154ce<AbstractC1082t> f546b;

    /* renamed from: c */
    private final AbstractC1154ce<C0997ar> f547c;

    /* renamed from: d */
    private final AbstractC1154ce<C1248p> f548d;

    /* renamed from: e */
    private final AbstractC1154ce<C1034ca> f549e;

    /* renamed from: f */
    private final AbstractC1154ce<C1021bo> f550f;

    /* renamed from: g */
    private final AbstractC1154ce<C1011be> f551g;

    /* renamed from: h */
    private final AbstractC1154ce<Executor> f552h;

    /* renamed from: i */
    private final AbstractC1154ce<C1090a> f553i;

    public C1071j(AbstractC1154ce<C1000au> ceVar, AbstractC1154ce<AbstractC1082t> ceVar2, AbstractC1154ce<C0997ar> ceVar3, AbstractC1154ce<C1248p> ceVar4, AbstractC1154ce<C1034ca> ceVar5, AbstractC1154ce<C1021bo> ceVar6, AbstractC1154ce<C1011be> ceVar7, AbstractC1154ce<Executor> ceVar8, AbstractC1154ce<C1090a> ceVar9) {
        this.f545a = ceVar;
        this.f546b = ceVar2;
        this.f547c = ceVar3;
        this.f548d = ceVar4;
        this.f549e = ceVar5;
        this.f550f = ceVar6;
        this.f551g = ceVar7;
        this.f552h = ceVar8;
        this.f553i = ceVar9;
    }

    @Override // com.google.android.play.core.internal.AbstractC1154ce
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ C1070i mo94a() {
        return new C1070i(this.f545a.mo94a(), C1152cc.m338c(this.f546b), this.f547c.mo94a(), this.f548d.mo94a(), this.f549e.mo94a(), this.f550f.mo94a(), this.f551g.mo94a(), C1152cc.m338c(this.f552h), this.f553i.mo94a());
    }
}
