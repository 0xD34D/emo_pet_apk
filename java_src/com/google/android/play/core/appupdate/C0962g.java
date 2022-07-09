package com.google.android.play.core.appupdate;

import android.content.Context;
import com.google.android.play.core.internal.AbstractC1154ce;
import com.google.android.play.core.internal.C1130bh;
import com.google.android.play.core.splitinstall.C1248p;
/* renamed from: com.google.android.play.core.appupdate.g */
/* loaded from: classes.dex */
public final class C0962g implements AbstractC1154ce<AppUpdateManager> {

    /* renamed from: a */
    private final AbstractC1154ce f126a;

    /* renamed from: b */
    private final /* synthetic */ int f127b = 0;

    public C0962g(AbstractC1154ce<C0959d> ceVar) {
        this.f126a = ceVar;
    }

    public C0962g(AbstractC1154ce<Context> ceVar, byte[] bArr) {
        this.f126a = ceVar;
    }

    public C0962g(AbstractC1154ce<Context> ceVar, char[] cArr) {
        this.f126a = ceVar;
    }

    public C0962g(AbstractC1154ce<Context> ceVar, short[] sArr) {
        this.f126a = ceVar;
    }

    /* renamed from: b */
    public static C0962g m713b(AbstractC1154ce<Context> ceVar) {
        return new C0962g(ceVar, (short[]) null);
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [com.google.android.play.core.appupdate.AppUpdateManager, com.google.android.play.core.appupdate.a] */
    /* JADX WARN: Type inference failed for: r1v3, types: [com.google.android.play.core.appupdate.AppUpdateManager, com.google.android.play.core.appupdate.q] */
    /* JADX WARN: Type inference failed for: r1v4, types: [com.google.android.play.core.appupdate.AppUpdateManager, com.google.android.play.core.splitinstall.p] */
    @Override // com.google.android.play.core.internal.AbstractC1154ce
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ AppUpdateManager mo94a() {
        int i = this.f127b;
        if (i != 0) {
            return i != 1 ? i != 2 ? new C1248p((Context) this.f126a.mo94a()) : new C0972q(((C0963h) this.f126a).mo94a()) : new C0956a(((C0963h) this.f126a).mo94a());
        }
        C0959d dVar = (C0959d) this.f126a.mo94a();
        C1130bh.m368k(dVar);
        return dVar;
    }
}
