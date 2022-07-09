package com.google.android.play.core.assetpacks;

import android.content.Context;
import com.google.android.play.core.internal.AbstractC1150ca;
import com.google.android.play.core.internal.AbstractC1154ce;
import com.google.android.play.core.internal.C1152cc;
import java.util.concurrent.Executor;
/* renamed from: com.google.android.play.core.assetpacks.bm */
/* loaded from: classes.dex */
public final class C1019bm implements AbstractC1154ce<C1018bl> {

    /* renamed from: a */
    private final AbstractC1154ce f355a;

    /* renamed from: b */
    private final AbstractC1154ce f356b;

    /* renamed from: c */
    private final AbstractC1154ce f357c;

    /* renamed from: d */
    private final AbstractC1154ce f358d;

    /* renamed from: e */
    private final AbstractC1154ce f359e;

    /* renamed from: f */
    private final AbstractC1154ce f360f;

    /* renamed from: g */
    private final AbstractC1154ce f361g;

    /* renamed from: h */
    private final AbstractC1154ce f362h;

    /* renamed from: i */
    private final /* synthetic */ int f363i = 0;

    public C1019bm(AbstractC1154ce<C1034ca> ceVar, AbstractC1154ce<AbstractC1082t> ceVar2, AbstractC1154ce<C1016bj> ceVar3, AbstractC1154ce<C1064dd> ceVar4, AbstractC1154ce<C1048co> ceVar5, AbstractC1154ce<C1053ct> ceVar6, AbstractC1154ce<C1057cx> ceVar7, AbstractC1154ce<C1037cd> ceVar8) {
        this.f355a = ceVar;
        this.f356b = ceVar2;
        this.f357c = ceVar3;
        this.f358d = ceVar4;
        this.f359e = ceVar5;
        this.f360f = ceVar6;
        this.f361g = ceVar7;
        this.f362h = ceVar8;
    }

    public C1019bm(AbstractC1154ce<Context> ceVar, AbstractC1154ce<C1034ca> ceVar2, AbstractC1154ce<C1018bl> ceVar3, AbstractC1154ce<AbstractC1082t> ceVar4, AbstractC1154ce<C1021bo> ceVar5, AbstractC1154ce<C1011be> ceVar6, AbstractC1154ce<Executor> ceVar7, AbstractC1154ce<Executor> ceVar8, byte[] bArr) {
        this.f355a = ceVar;
        this.f361g = ceVar2;
        this.f362h = ceVar3;
        this.f356b = ceVar4;
        this.f359e = ceVar5;
        this.f360f = ceVar6;
        this.f357c = ceVar7;
        this.f358d = ceVar8;
    }

    /* JADX WARN: Type inference failed for: r10v3, types: [com.google.android.play.core.assetpacks.bl, com.google.android.play.core.assetpacks.ar] */
    @Override // com.google.android.play.core.internal.AbstractC1154ce
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ C1018bl mo94a() {
        if (this.f363i != 0) {
            Context b = ((C1078p) this.f355a).mo94a();
            Object a = this.f361g.mo94a();
            Object a2 = this.f362h.mo94a();
            AbstractC1150ca c = C1152cc.m338c(this.f356b);
            Object a3 = this.f359e.mo94a();
            Object a4 = this.f360f.mo94a();
            return new C0997ar(b, (C1034ca) a, (C1018bl) a2, c, (C1021bo) a3, (C1011be) a4, C1152cc.m338c(this.f357c), C1152cc.m338c(this.f358d));
        }
        Object a5 = this.f355a.mo94a();
        return new C1018bl((C1034ca) a5, C1152cc.m338c(this.f356b), (C1016bj) this.f357c.mo94a(), (C1064dd) this.f358d.mo94a(), (C1048co) this.f359e.mo94a(), (C1053ct) this.f360f.mo94a(), (C1057cx) this.f361g.mo94a(), (C1037cd) this.f362h.mo94a());
    }
}
