package com.google.android.play.core.assetpacks;

import android.content.Context;
import com.google.android.play.core.internal.AbstractC1154ce;
import com.google.android.play.core.internal.C1152cc;
/* renamed from: com.google.android.play.core.assetpacks.cp */
/* loaded from: classes.dex */
public final class C1049cp implements AbstractC1154ce<C1048co> {

    /* renamed from: a */
    private final AbstractC1154ce f463a;

    /* renamed from: b */
    private final /* synthetic */ int f464b = 0;

    public C1049cp(AbstractC1154ce<C1000au> ceVar) {
        this.f463a = ceVar;
    }

    public C1049cp(AbstractC1154ce<AbstractC1082t> ceVar, byte[] bArr) {
        this.f463a = ceVar;
    }

    public C1049cp(AbstractC1154ce<Context> ceVar, char[] cArr) {
        this.f463a = ceVar;
    }

    public C1049cp(AbstractC1154ce<C1000au> ceVar, short[] sArr) {
        this.f463a = ceVar;
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [com.google.android.play.core.assetpacks.co, com.google.android.play.core.assetpacks.bc] */
    /* JADX WARN: Type inference failed for: r1v4, types: [com.google.android.play.core.assetpacks.co, com.google.android.play.core.assetpacks.cv] */
    /* JADX WARN: Type inference failed for: r1v5, types: [com.google.android.play.core.assetpacks.co, com.google.android.play.core.assetpacks.dd] */
    @Override // com.google.android.play.core.internal.AbstractC1154ce
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ C1048co mo94a() {
        int i = this.f464b;
        return i != 0 ? i != 1 ? i != 2 ? new C1064dd((C1000au) this.f463a.mo94a()) : new C1055cv(((C1078p) this.f463a).mo94a()) : new C1009bc(C1152cc.m338c(this.f463a)) : new C1048co((C1000au) this.f463a.mo94a());
    }
}
