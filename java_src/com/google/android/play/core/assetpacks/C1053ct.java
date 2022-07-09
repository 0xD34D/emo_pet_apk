package com.google.android.play.core.assetpacks;

import com.google.android.play.core.common.C1090a;
import com.google.android.play.core.internal.AbstractC1150ca;
import java.io.File;
import java.util.concurrent.Executor;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.play.core.assetpacks.ct */
/* loaded from: classes.dex */
public final class C1053ct {

    /* renamed from: a */
    private final C1000au f470a;

    /* renamed from: b */
    private final AbstractC1150ca<AbstractC1082t> f471b;

    /* renamed from: c */
    private final C1034ca f472c;

    /* renamed from: d */
    private final AbstractC1150ca<Executor> f473d;

    /* renamed from: e */
    private final C1021bo f474e;

    /* renamed from: f */
    private final C1090a f475f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1053ct(C1000au auVar, AbstractC1150ca<AbstractC1082t> caVar, C1034ca caVar2, AbstractC1150ca<Executor> caVar3, C1021bo boVar, C1090a aVar) {
        this.f470a = auVar;
        this.f471b = caVar;
        this.f472c = caVar2;
        this.f473d = caVar3;
        this.f474e = boVar;
        this.f475f = aVar;
    }

    /* renamed from: a */
    public final void m526a(final C1050cq cqVar) {
        Runnable runnable;
        Executor executor;
        File j = this.f470a.m626j(cqVar.f417k, cqVar.f465a, cqVar.f466b);
        File p = this.f470a.m620p(cqVar.f417k, cqVar.f465a, cqVar.f466b);
        if (!j.exists() || !p.exists()) {
            throw new C1017bk(String.format("Cannot find pack files to move for pack %s.", cqVar.f417k), cqVar.f416j);
        }
        File f = this.f470a.m630f(cqVar.f417k, cqVar.f465a, cqVar.f466b);
        f.mkdirs();
        if (j.renameTo(f)) {
            new File(this.f470a.m630f(cqVar.f417k, cqVar.f465a, cqVar.f466b), "merge.tmp").delete();
            File g = this.f470a.m629g(cqVar.f417k, cqVar.f465a, cqVar.f466b);
            g.mkdirs();
            if (p.renameTo(g)) {
                if (this.f475f.m455a()) {
                    executor = this.f473d.m341a();
                    runnable = new Runnable(this, cqVar) { // from class: com.google.android.play.core.assetpacks.cr

                        /* renamed from: a */
                        private final C1053ct f467a;

                        /* renamed from: b */
                        private final C1050cq f468b;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f467a = this;
                            this.f468b = cqVar;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f467a.m525b(this.f468b);
                        }
                    };
                } else {
                    executor = this.f473d.m341a();
                    C1000au auVar = this.f470a;
                    auVar.getClass();
                    runnable = RunnableC1052cs.m527a(auVar);
                }
                executor.execute(runnable);
                this.f472c.m574f(cqVar.f417k, cqVar.f465a, cqVar.f466b);
                this.f474e.m585a(cqVar.f417k);
                this.f471b.m341a().mo463f(cqVar.f416j, cqVar.f417k);
                return;
            }
            throw new C1017bk("Cannot move metadata files to final location.", cqVar.f416j);
        }
        throw new C1017bk("Cannot move merged pack files to final location.", cqVar.f416j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final /* synthetic */ void m525b(C1050cq cqVar) {
        this.f470a.m618r(cqVar.f417k, cqVar.f465a, cqVar.f466b);
    }
}
