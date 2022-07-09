package com.google.android.play.core.appupdate;

import android.content.Context;
import com.google.android.play.core.internal.AbstractC1154ce;
/* renamed from: com.google.android.play.core.appupdate.p */
/* loaded from: classes.dex */
public final class C0971p implements AbstractC1154ce<C0970o> {

    /* renamed from: a */
    private final AbstractC1154ce<Context> f147a;

    /* renamed from: b */
    private final AbstractC1154ce<C0972q> f148b;

    public C0971p(AbstractC1154ce<Context> ceVar, AbstractC1154ce<C0972q> ceVar2) {
        this.f147a = ceVar;
        this.f148b = ceVar2;
    }

    @Override // com.google.android.play.core.internal.AbstractC1154ce
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ C0970o mo94a() {
        return new C0970o(((C0963h) this.f147a).mo94a(), this.f148b.mo94a());
    }
}
