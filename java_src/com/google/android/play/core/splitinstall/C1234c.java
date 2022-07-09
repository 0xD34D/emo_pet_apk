package com.google.android.play.core.splitinstall;

import android.content.Context;
import com.google.android.play.core.appupdate.C0962g;
import com.google.android.play.core.internal.AbstractC1154ce;
import com.google.android.play.core.internal.C1152cc;
import com.google.android.play.core.splitinstall.testing.C1262j;
import com.google.android.play.core.splitinstall.testing.FakeSplitInstallManager;
import java.io.File;
/* renamed from: com.google.android.play.core.splitinstall.c */
/* loaded from: classes.dex */
public final class C1234c implements AbstractC1244m {

    /* renamed from: a */
    private AbstractC1154ce<Context> f793a;

    /* renamed from: b */
    private AbstractC1154ce<C1230au> f794b;

    /* renamed from: c */
    private AbstractC1154ce<C1251s> f795c;

    /* renamed from: d */
    private AbstractC1154ce<C1248p> f796d;

    /* renamed from: e */
    private AbstractC1154ce<C1231av> f797e;

    /* renamed from: f */
    private AbstractC1154ce<C1264v> f798f;

    /* renamed from: g */
    private AbstractC1154ce<File> f799g;

    /* renamed from: h */
    private AbstractC1154ce<FakeSplitInstallManager> f800h;

    /* renamed from: i */
    private AbstractC1154ce<C1240i> f801i;

    /* renamed from: j */
    private AbstractC1154ce<SplitInstallManager> f802j;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ C1234c(C1266x xVar) {
        C1267y yVar = new C1267y(xVar);
        this.f793a = yVar;
        this.f794b = C1152cc.m339b(new C1232aw(yVar, null));
        this.f795c = C1152cc.m339b(new C1210aa(xVar));
        this.f796d = C1152cc.m339b(C0962g.m713b(this.f793a));
        AbstractC1154ce<C1231av> b = C1152cc.m339b(new C1232aw(this.f793a));
        this.f797e = b;
        this.f798f = C1152cc.m339b(new C1265w(this.f794b, this.f795c, this.f796d, b));
        AbstractC1154ce<File> b2 = C1152cc.m339b(new C1268z(this.f793a));
        this.f799g = b2;
        AbstractC1154ce<FakeSplitInstallManager> b3 = C1152cc.m339b(new C1262j(this.f793a, b2, this.f796d));
        this.f800h = b3;
        AbstractC1154ce<C1240i> b4 = C1152cc.m339b(new C1241j(this.f798f, b3, this.f799g));
        this.f801i = b4;
        this.f802j = C1152cc.m339b(new C1211ab(xVar, b4));
    }

    @Override // com.google.android.play.core.splitinstall.AbstractC1244m
    /* renamed from: a */
    public final SplitInstallManager mo148a() {
        return this.f802j.mo94a();
    }

    @Override // com.google.android.play.core.splitinstall.AbstractC1244m
    /* renamed from: b */
    public final File mo147b() {
        return this.f799g.mo94a();
    }
}
