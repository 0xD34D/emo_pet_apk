package com.google.android.play.core.splitinstall;

import com.google.android.play.core.internal.AbstractC1154ce;
import com.google.android.play.core.internal.C1152cc;
import com.google.android.play.core.splitinstall.testing.FakeSplitInstallManager;
import java.io.File;
/* renamed from: com.google.android.play.core.splitinstall.j */
/* loaded from: classes.dex */
public final class C1241j implements AbstractC1154ce<C1240i> {

    /* renamed from: a */
    private final AbstractC1154ce<C1264v> f808a;

    /* renamed from: b */
    private final AbstractC1154ce<FakeSplitInstallManager> f809b;

    /* renamed from: c */
    private final AbstractC1154ce<File> f810c;

    public C1241j(AbstractC1154ce<C1264v> ceVar, AbstractC1154ce<FakeSplitInstallManager> ceVar2, AbstractC1154ce<File> ceVar3) {
        this.f808a = ceVar;
        this.f809b = ceVar2;
        this.f810c = ceVar3;
    }

    @Override // com.google.android.play.core.internal.AbstractC1154ce
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ C1240i mo94a() {
        return new C1240i(C1152cc.m338c(this.f808a), C1152cc.m338c(this.f809b), C1152cc.m338c(this.f810c));
    }
}
