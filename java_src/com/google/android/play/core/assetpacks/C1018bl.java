package com.google.android.play.core.assetpacks;

import com.google.android.play.core.internal.AbstractC1150ca;
import com.google.android.play.core.internal.C1102ag;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: com.google.android.play.core.assetpacks.bl */
/* loaded from: classes.dex */
public final class C1018bl {

    /* renamed from: a */
    private static final C1102ag f345a = new C1102ag("ExtractorLooper");

    /* renamed from: b */
    private final C1034ca f346b;

    /* renamed from: c */
    private final C1016bj f347c;

    /* renamed from: d */
    private final C1064dd f348d;

    /* renamed from: e */
    private final C1048co f349e;

    /* renamed from: f */
    private final C1053ct f350f;

    /* renamed from: g */
    private final C1057cx f351g;

    /* renamed from: h */
    private final AbstractC1150ca<AbstractC1082t> f352h;

    /* renamed from: i */
    private final C1037cd f353i;

    /* renamed from: j */
    private final AtomicBoolean f354j = new AtomicBoolean(false);

    public C1018bl(C1034ca caVar, AbstractC1150ca<AbstractC1082t> caVar2, C1016bj bjVar, C1064dd ddVar, C1048co coVar, C1053ct ctVar, C1057cx cxVar, C1037cd cdVar) {
        this.f346b = caVar;
        this.f352h = caVar2;
        this.f347c = bjVar;
        this.f348d = ddVar;
        this.f349e = coVar;
        this.f350f = ctVar;
        this.f351g = cxVar;
        this.f353i = cdVar;
    }

    /* renamed from: b */
    private final void m586b(int i, Exception exc) {
        try {
            this.f346b.m564p(i);
            this.f346b.m573g(i);
        } catch (C1017bk unused) {
            f345a.m442b("Error during error handling: %s", exc.getMessage());
        }
    }

    /* renamed from: a */
    public final void m587a() {
        C1102ag agVar = f345a;
        agVar.m443a("Run extractor loop", new Object[0]);
        if (this.f354j.compareAndSet(false, true)) {
            while (true) {
                C1036cc ccVar = null;
                try {
                    ccVar = this.f353i.m558a();
                } catch (C1017bk e) {
                    f345a.m442b("Error while getting next extraction task: %s", e.getMessage());
                    if (e.f344a >= 0) {
                        this.f352h.m341a().mo462g(e.f344a);
                        m586b(e.f344a, e);
                    }
                }
                if (ccVar != null) {
                    try {
                        if (ccVar instanceof C1015bi) {
                            this.f347c.m589a((C1015bi) ccVar);
                        } else if (ccVar instanceof C1063dc) {
                            this.f348d.m500a((C1063dc) ccVar);
                        } else if (ccVar instanceof C1047cn) {
                            this.f349e.m529a((C1047cn) ccVar);
                        } else if (ccVar instanceof C1050cq) {
                            this.f350f.m526a((C1050cq) ccVar);
                        } else if (ccVar instanceof C1056cw) {
                            this.f351g.m523a((C1056cw) ccVar);
                        } else {
                            f345a.m442b("Unknown task type: %s", ccVar.getClass().getName());
                        }
                    } catch (Exception e2) {
                        f345a.m442b("Error during extraction task: %s", e2.getMessage());
                        this.f352h.m341a().mo462g(ccVar.f416j);
                        m586b(ccVar.f416j, e2);
                    }
                } else {
                    this.f354j.set(false);
                    return;
                }
            }
        } else {
            agVar.m439e("runLoop already looping; return", new Object[0]);
        }
    }
}
