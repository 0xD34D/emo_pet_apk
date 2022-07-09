package com.google.android.play.core.assetpacks;

import com.google.android.play.core.common.C1090a;
import com.google.android.play.core.internal.AbstractC1154ce;
import com.google.android.play.core.internal.C1152cc;
import java.util.concurrent.Executor;
/* renamed from: com.google.android.play.core.assetpacks.cb */
/* loaded from: classes.dex */
public final class C1035cb implements AbstractC1154ce<C1034ca> {

    /* renamed from: a */
    private final AbstractC1154ce f411a;

    /* renamed from: b */
    private final AbstractC1154ce f412b;

    /* renamed from: c */
    private final AbstractC1154ce f413c;

    /* renamed from: d */
    private final AbstractC1154ce f414d;

    /* renamed from: e */
    private final /* synthetic */ int f415e = 0;

    public C1035cb(AbstractC1154ce<C1000au> ceVar, AbstractC1154ce<AbstractC1082t> ceVar2, AbstractC1154ce<C1021bo> ceVar3, AbstractC1154ce<Executor> ceVar4) {
        this.f411a = ceVar;
        this.f412b = ceVar2;
        this.f413c = ceVar3;
        this.f414d = ceVar4;
    }

    public C1035cb(AbstractC1154ce<C1000au> ceVar, AbstractC1154ce<AbstractC1082t> ceVar2, AbstractC1154ce<C0997ar> ceVar3, AbstractC1154ce<C1021bo> ceVar4, byte[] bArr) {
        this.f411a = ceVar;
        this.f412b = ceVar2;
        this.f413c = ceVar3;
        this.f414d = ceVar4;
    }

    public C1035cb(AbstractC1154ce<C1034ca> ceVar, AbstractC1154ce<C1000au> ceVar2, AbstractC1154ce<C1009bc> ceVar3, AbstractC1154ce<C1090a> ceVar4, char[] cArr) {
        this.f413c = ceVar;
        this.f412b = ceVar2;
        this.f411a = ceVar3;
        this.f414d = ceVar4;
    }

    /* JADX WARN: Type inference failed for: r4v1, types: [com.google.android.play.core.assetpacks.ca, com.google.android.play.core.assetpacks.bj] */
    /* JADX WARN: Type inference failed for: r4v2, types: [com.google.android.play.core.assetpacks.ca, com.google.android.play.core.assetpacks.cd] */
    @Override // com.google.android.play.core.internal.AbstractC1154ce
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ C1034ca mo94a() {
        int i = this.f415e;
        if (i == 0) {
            Object a = this.f411a.mo94a();
            return new C1034ca((C1000au) a, C1152cc.m338c(this.f412b), (C1021bo) this.f413c.mo94a(), C1152cc.m338c(this.f414d));
        } else if (i != 1) {
            Object a2 = this.f413c.mo94a();
            Object a3 = this.f412b.mo94a();
            return new C1037cd((C1034ca) a2, (C1000au) a3, (C1009bc) this.f411a.mo94a(), (C1090a) this.f414d.mo94a());
        } else {
            return new C1016bj((C1000au) this.f411a.mo94a(), C1152cc.m338c(this.f412b), C1152cc.m338c(this.f413c), (C1021bo) this.f414d.mo94a());
        }
    }
}
