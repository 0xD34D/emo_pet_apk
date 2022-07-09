package com.google.android.play.core.splitinstall;

import com.google.android.play.core.internal.AbstractC1154ce;
import com.google.android.play.core.internal.C1130bh;
/* renamed from: com.google.android.play.core.splitinstall.ab */
/* loaded from: classes.dex */
public final class C1211ab implements AbstractC1154ce<SplitInstallManager> {

    /* renamed from: a */
    private final C1266x f756a;

    /* renamed from: b */
    private final AbstractC1154ce<C1240i> f757b;

    public C1211ab(C1266x xVar, AbstractC1154ce<C1240i> ceVar) {
        this.f756a = xVar;
        this.f757b = ceVar;
    }

    @Override // com.google.android.play.core.internal.AbstractC1154ce
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ SplitInstallManager mo94a() {
        C1240i a = this.f757b.mo94a();
        C1130bh.m368k(a);
        return a;
    }
}
