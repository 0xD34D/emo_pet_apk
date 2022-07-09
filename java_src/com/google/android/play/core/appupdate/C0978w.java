package com.google.android.play.core.appupdate;

import android.content.Context;
import com.google.android.play.core.internal.AbstractC1154ce;
import com.google.android.play.core.internal.C1152cc;
/* renamed from: com.google.android.play.core.appupdate.w */
/* loaded from: classes.dex */
public final class C0978w {

    /* renamed from: a */
    private AbstractC1154ce<Context> f185a;

    /* renamed from: b */
    private AbstractC1154ce<C0972q> f186b;

    /* renamed from: c */
    private AbstractC1154ce<C0970o> f187c;

    /* renamed from: d */
    private AbstractC1154ce<C0956a> f188d;

    /* renamed from: e */
    private AbstractC1154ce<C0959d> f189e;

    /* renamed from: f */
    private AbstractC1154ce<AppUpdateManager> f190f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ C0978w(C0961f fVar) {
        C0963h hVar = new C0963h(fVar);
        this.f185a = hVar;
        AbstractC1154ce<C0972q> b = C1152cc.m339b(new C0962g(hVar, (char[]) null));
        this.f186b = b;
        this.f187c = C1152cc.m339b(new C0971p(this.f185a, b));
        AbstractC1154ce<C0956a> b2 = C1152cc.m339b(new C0962g(this.f185a, (byte[]) null));
        this.f188d = b2;
        AbstractC1154ce<C0959d> b3 = C1152cc.m339b(new C0960e(this.f187c, b2, this.f185a));
        this.f189e = b3;
        this.f190f = C1152cc.m339b(new C0962g(b3));
    }

    /* renamed from: a */
    public final AppUpdateManager m687a() {
        return this.f190f.mo94a();
    }
}
