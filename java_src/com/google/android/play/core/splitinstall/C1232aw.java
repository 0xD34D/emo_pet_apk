package com.google.android.play.core.splitinstall;

import android.content.Context;
import com.google.android.play.core.internal.AbstractC1154ce;
/* renamed from: com.google.android.play.core.splitinstall.aw */
/* loaded from: classes.dex */
public final class C1232aw implements AbstractC1154ce<C1231av> {

    /* renamed from: a */
    private final AbstractC1154ce f790a;

    /* renamed from: b */
    private final /* synthetic */ int f791b = 0;

    public C1232aw(AbstractC1154ce<Context> ceVar) {
        this.f790a = ceVar;
    }

    public C1232aw(AbstractC1154ce<Context> ceVar, byte[] bArr) {
        this.f790a = ceVar;
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [com.google.android.play.core.splitinstall.au, com.google.android.play.core.splitinstall.av] */
    @Override // com.google.android.play.core.internal.AbstractC1154ce
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ C1231av mo94a() {
        return this.f791b != 0 ? new C1230au(((C1267y) this.f790a).mo94a()) : new C1231av(((C1267y) this.f790a).mo94a());
    }
}
