package com.google.android.play.core.appupdate;

import android.content.Context;
import com.google.android.play.core.internal.AbstractC1154ce;
/* renamed from: com.google.android.play.core.appupdate.e */
/* loaded from: classes.dex */
public final class C0960e implements AbstractC1154ce<C0959d> {

    /* renamed from: a */
    private final AbstractC1154ce<C0970o> f122a;

    /* renamed from: b */
    private final AbstractC1154ce<C0956a> f123b;

    /* renamed from: c */
    private final AbstractC1154ce<Context> f124c;

    public C0960e(AbstractC1154ce<C0970o> ceVar, AbstractC1154ce<C0956a> ceVar2, AbstractC1154ce<Context> ceVar3) {
        this.f122a = ceVar;
        this.f123b = ceVar2;
        this.f124c = ceVar3;
    }

    @Override // com.google.android.play.core.internal.AbstractC1154ce
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ C0959d mo94a() {
        return new C0959d(this.f122a.mo94a(), this.f123b.mo94a(), ((C0963h) this.f124c).mo94a());
    }
}
