package com.google.android.play.core.assetpacks;

import android.content.Context;
import com.google.android.play.core.appupdate.C0962g;
import com.google.android.play.core.common.C1090a;
import com.google.android.play.core.common.C1092c;
import com.google.android.play.core.internal.AbstractC1154ce;
import com.google.android.play.core.internal.C1151cb;
import com.google.android.play.core.internal.C1152cc;
import com.google.android.play.core.splitinstall.C1248p;
import java.util.concurrent.Executor;
/* renamed from: com.google.android.play.core.assetpacks.bh */
/* loaded from: classes.dex */
public final class C1014bh implements AbstractC0979a {

    /* renamed from: A */
    private AbstractC1154ce<BinderC1006b> f302A;

    /* renamed from: a */
    private final C1073l f303a;

    /* renamed from: b */
    private AbstractC1154ce<Context> f304b;

    /* renamed from: c */
    private AbstractC1154ce<C1055cv> f305c;

    /* renamed from: d */
    private AbstractC1154ce<C1000au> f306d;

    /* renamed from: e */
    private AbstractC1154ce<C1021bo> f307e;

    /* renamed from: f */
    private AbstractC1154ce<C0993an> f308f;

    /* renamed from: g */
    private AbstractC1154ce<String> f309g;

    /* renamed from: h */
    private AbstractC1154ce<AbstractC1082t> f310h = new C1151cb();

    /* renamed from: i */
    private AbstractC1154ce<Executor> f311i;

    /* renamed from: j */
    private AbstractC1154ce<C1034ca> f312j;

    /* renamed from: k */
    private AbstractC1154ce<C0997ar> f313k;

    /* renamed from: l */
    private AbstractC1154ce<C1016bj> f314l;

    /* renamed from: m */
    private AbstractC1154ce<C1064dd> f315m;

    /* renamed from: n */
    private AbstractC1154ce<C1048co> f316n;

    /* renamed from: o */
    private AbstractC1154ce<C1090a> f317o;

    /* renamed from: p */
    private AbstractC1154ce<C1053ct> f318p;

    /* renamed from: q */
    private AbstractC1154ce<C1057cx> f319q;

    /* renamed from: r */
    private AbstractC1154ce<C1009bc> f320r;

    /* renamed from: s */
    private AbstractC1154ce<C1037cd> f321s;

    /* renamed from: t */
    private AbstractC1154ce<C1018bl> f322t;

    /* renamed from: u */
    private AbstractC1154ce<C1011be> f323u;

    /* renamed from: v */
    private AbstractC1154ce<Executor> f324v;

    /* renamed from: w */
    private AbstractC1154ce<C1043cj> f325w;

    /* renamed from: x */
    private AbstractC1154ce<C1248p> f326x;

    /* renamed from: y */
    private AbstractC1154ce<C1070i> f327y;

    /* renamed from: z */
    private AbstractC1154ce<AssetPackManager> f328z;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ C1014bh(C1073l lVar) {
        C1081s sVar;
        C1081s sVar2;
        C1081s sVar3;
        C1081s sVar4;
        this.f303a = lVar;
        C1078p pVar = new C1078p(lVar);
        this.f304b = pVar;
        AbstractC1154ce<C1055cv> b = C1152cc.m339b(new C1049cp(pVar, (char[]) null));
        this.f305c = b;
        this.f306d = C1152cc.m339b(new C1076n(this.f304b, b, (short[]) null));
        sVar = C1022bp.f372a;
        AbstractC1154ce<C1021bo> b2 = C1152cc.m339b(sVar);
        this.f307e = b2;
        this.f308f = C1152cc.m339b(new C1076n(this.f304b, b2, (char[]) null));
        this.f309g = C1152cc.m339b(new C1079q(this.f304b));
        sVar2 = C1074m.f558a;
        AbstractC1154ce<Executor> b3 = C1152cc.m339b(sVar2);
        this.f311i = b3;
        this.f312j = C1152cc.m339b(new C1035cb(this.f306d, this.f310h, this.f307e, b3));
        C1151cb cbVar = new C1151cb();
        this.f313k = cbVar;
        this.f314l = C1152cc.m339b(new C1035cb(this.f306d, this.f310h, cbVar, this.f307e, (byte[]) null));
        this.f315m = C1152cc.m339b(new C1049cp(this.f306d, (short[]) null));
        this.f316n = C1152cc.m339b(new C1049cp(this.f306d));
        AbstractC1154ce<C1090a> b4 = C1152cc.m339b(C1092c.m452b());
        this.f317o = b4;
        this.f318p = C1152cc.m339b(new C1054cu(this.f306d, this.f310h, this.f312j, this.f311i, this.f307e, b4));
        this.f319q = C1152cc.m339b(new C1076n(this.f306d, this.f310h, (int[]) null));
        AbstractC1154ce<C1009bc> b5 = C1152cc.m339b(new C1049cp(this.f310h, (byte[]) null));
        this.f320r = b5;
        AbstractC1154ce<C1037cd> b6 = C1152cc.m339b(new C1035cb(this.f312j, this.f306d, b5, this.f317o, (char[]) null));
        this.f321s = b6;
        this.f322t = C1152cc.m339b(new C1019bm(this.f312j, this.f310h, this.f314l, this.f315m, this.f316n, this.f318p, this.f319q, b6));
        sVar3 = C1012bf.f300a;
        this.f323u = C1152cc.m339b(sVar3);
        sVar4 = C1080r.f569a;
        AbstractC1154ce<Executor> b7 = C1152cc.m339b(sVar4);
        this.f324v = b7;
        C1151cb.m340b(this.f313k, C1152cc.m339b(new C1019bm(this.f304b, this.f312j, this.f322t, this.f310h, this.f307e, this.f323u, this.f311i, b7, null)));
        AbstractC1154ce<C1043cj> b8 = C1152cc.m339b(new C1054cu(this.f309g, this.f313k, this.f307e, this.f304b, this.f305c, this.f311i, null));
        this.f325w = b8;
        C1151cb.m340b(this.f310h, C1152cc.m339b(new C1077o(this.f304b, this.f308f, b8)));
        AbstractC1154ce<C1248p> b9 = C1152cc.m339b(C0962g.m713b(this.f304b));
        this.f326x = b9;
        AbstractC1154ce<C1070i> b10 = C1152cc.m339b(new C1071j(this.f306d, this.f310h, this.f313k, b9, this.f312j, this.f307e, this.f323u, this.f311i, this.f317o));
        this.f327y = b10;
        this.f328z = C1152cc.m339b(new C1076n(b10, this.f304b));
        this.f302A = C1152cc.m339b(new C1076n(this.f304b, this.f306d, (byte[]) null));
    }

    @Override // com.google.android.play.core.assetpacks.AbstractC0979a
    /* renamed from: a */
    public final AssetPackManager mo593a() {
        return this.f328z.mo94a();
    }

    @Override // com.google.android.play.core.assetpacks.AbstractC0979a
    /* renamed from: b */
    public final void mo592b(AssetPackExtractionService assetPackExtractionService) {
        assetPackExtractionService.f192a = this.f302A.mo94a();
    }

    @Override // com.google.android.play.core.assetpacks.AbstractC0979a
    /* renamed from: c */
    public final void mo591c(ExtractionForegroundService extractionForegroundService) {
        extractionForegroundService.f194a = C1078p.m474c(this.f303a);
        extractionForegroundService.f195b = this.f327y.mo94a();
    }
}
