package com.google.android.play.core.assetpacks;

import android.content.Context;
import com.google.android.play.core.common.C1090a;
import com.google.android.play.core.internal.AbstractC1150ca;
import com.google.android.play.core.internal.AbstractC1154ce;
import com.google.android.play.core.internal.C1152cc;
import java.io.File;
import java.util.concurrent.Executor;
/* renamed from: com.google.android.play.core.assetpacks.cu */
/* loaded from: classes.dex */
public final class C1054cu implements AbstractC1154ce<C1053ct> {

    /* renamed from: a */
    private final AbstractC1154ce f476a;

    /* renamed from: b */
    private final AbstractC1154ce f477b;

    /* renamed from: c */
    private final AbstractC1154ce f478c;

    /* renamed from: d */
    private final AbstractC1154ce f479d;

    /* renamed from: e */
    private final AbstractC1154ce f480e;

    /* renamed from: f */
    private final AbstractC1154ce f481f;

    /* renamed from: g */
    private final /* synthetic */ int f482g = 0;

    public C1054cu(AbstractC1154ce<C1000au> ceVar, AbstractC1154ce<AbstractC1082t> ceVar2, AbstractC1154ce<C1034ca> ceVar3, AbstractC1154ce<Executor> ceVar4, AbstractC1154ce<C1021bo> ceVar5, AbstractC1154ce<C1090a> ceVar6) {
        this.f476a = ceVar;
        this.f477b = ceVar2;
        this.f478c = ceVar3;
        this.f479d = ceVar4;
        this.f480e = ceVar5;
        this.f481f = ceVar6;
    }

    public C1054cu(AbstractC1154ce<String> ceVar, AbstractC1154ce<C0997ar> ceVar2, AbstractC1154ce<C1021bo> ceVar3, AbstractC1154ce<Context> ceVar4, AbstractC1154ce<C1055cv> ceVar5, AbstractC1154ce<Executor> ceVar6, byte[] bArr) {
        this.f481f = ceVar;
        this.f477b = ceVar2;
        this.f480e = ceVar3;
        this.f479d = ceVar4;
        this.f478c = ceVar5;
        this.f476a = ceVar6;
    }

    /* JADX WARN: Type inference failed for: r11v0, types: [com.google.android.play.core.assetpacks.cj, com.google.android.play.core.assetpacks.ct] */
    @Override // com.google.android.play.core.internal.AbstractC1154ce
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ C1053ct mo94a() {
        if (this.f482g != 0) {
            String str = (String) this.f481f.mo94a();
            Object a = this.f477b.mo94a();
            Object a2 = this.f480e.mo94a();
            Context b = ((C1078p) this.f479d).mo94a();
            Object a3 = this.f478c.mo94a();
            return new C1043cj(str != null ? new File(b.getExternalFilesDir(null), str) : b.getExternalFilesDir(null), (C0997ar) a, (C1021bo) a2, b, (C1055cv) a3, C1152cc.m338c(this.f476a));
        }
        Object a4 = this.f476a.mo94a();
        AbstractC1150ca c = C1152cc.m338c(this.f477b);
        Object a5 = this.f478c.mo94a();
        return new C1053ct((C1000au) a4, c, (C1034ca) a5, C1152cc.m338c(this.f479d), (C1021bo) this.f480e.mo94a(), (C1090a) this.f481f.mo94a());
    }
}
