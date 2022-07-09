package com.google.android.play.core.splitinstall.testing;

import android.content.Context;
import com.google.android.play.core.internal.AbstractC1154ce;
import com.google.android.play.core.splitinstall.C1248p;
import com.google.android.play.core.splitinstall.C1267y;
import java.io.File;
/* renamed from: com.google.android.play.core.splitinstall.testing.j */
/* loaded from: classes.dex */
public final class C1262j implements AbstractC1154ce<FakeSplitInstallManager> {

    /* renamed from: a */
    private final AbstractC1154ce<Context> f879a;

    /* renamed from: b */
    private final AbstractC1154ce<File> f880b;

    /* renamed from: c */
    private final AbstractC1154ce<C1248p> f881c;

    public C1262j(AbstractC1154ce<Context> ceVar, AbstractC1154ce<File> ceVar2, AbstractC1154ce<C1248p> ceVar3) {
        this.f879a = ceVar;
        this.f880b = ceVar2;
        this.f881c = ceVar3;
    }

    @Override // com.google.android.play.core.internal.AbstractC1154ce
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ FakeSplitInstallManager mo94a() {
        return new FakeSplitInstallManager(((C1267y) this.f879a).mo94a(), this.f880b.mo94a(), this.f881c.mo94a());
    }
}
