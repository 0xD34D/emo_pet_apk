package com.google.android.play.core.assetpacks;

import android.content.ComponentName;
import android.content.Context;
import com.google.android.play.core.common.PlayCoreDialogWrapperActivity;
import com.google.android.play.core.internal.AbstractC1154ce;
import com.google.android.play.core.internal.C1130bh;
import com.google.android.play.core.internal.C1152cc;
/* renamed from: com.google.android.play.core.assetpacks.n */
/* loaded from: classes.dex */
public final class C1076n implements AbstractC1154ce<AssetPackManager> {

    /* renamed from: a */
    private final AbstractC1154ce f561a;

    /* renamed from: b */
    private final AbstractC1154ce f562b;

    /* renamed from: c */
    private final /* synthetic */ int f563c = 0;

    public C1076n(AbstractC1154ce<C1070i> ceVar, AbstractC1154ce<Context> ceVar2) {
        this.f561a = ceVar;
        this.f562b = ceVar2;
    }

    public C1076n(AbstractC1154ce<Context> ceVar, AbstractC1154ce<C1000au> ceVar2, byte[] bArr) {
        this.f562b = ceVar;
        this.f561a = ceVar2;
    }

    public C1076n(AbstractC1154ce<Context> ceVar, AbstractC1154ce<C1021bo> ceVar2, char[] cArr) {
        this.f561a = ceVar;
        this.f562b = ceVar2;
    }

    public C1076n(AbstractC1154ce<C1000au> ceVar, AbstractC1154ce<AbstractC1082t> ceVar2, int[] iArr) {
        this.f562b = ceVar;
        this.f561a = ceVar2;
    }

    public C1076n(AbstractC1154ce<Context> ceVar, AbstractC1154ce<C1055cv> ceVar2, short[] sArr) {
        this.f561a = ceVar;
        this.f562b = ceVar2;
    }

    /* JADX WARN: Type inference failed for: r2v2, types: [com.google.android.play.core.assetpacks.AssetPackManager, com.google.android.play.core.assetpacks.b] */
    /* JADX WARN: Type inference failed for: r2v3, types: [com.google.android.play.core.assetpacks.an, com.google.android.play.core.assetpacks.AssetPackManager] */
    /* JADX WARN: Type inference failed for: r2v4, types: [com.google.android.play.core.assetpacks.au, com.google.android.play.core.assetpacks.AssetPackManager] */
    /* JADX WARN: Type inference failed for: r2v5, types: [com.google.android.play.core.assetpacks.cx, com.google.android.play.core.assetpacks.AssetPackManager] */
    @Override // com.google.android.play.core.internal.AbstractC1154ce
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ AssetPackManager mo94a() {
        int i = this.f563c;
        if (i == 0) {
            Object a = this.f561a.mo94a();
            Context b = ((C1078p) this.f562b).mo94a();
            C1070i iVar = (C1070i) a;
            C1130bh.m371h(b.getPackageManager(), new ComponentName(b.getPackageName(), "com.google.android.play.core.assetpacks.AssetPackExtractionService"), 4);
            C1130bh.m371h(b.getPackageManager(), new ComponentName(b.getPackageName(), "com.google.android.play.core.assetpacks.ExtractionForegroundService"), 4);
            PlayCoreDialogWrapperActivity.m458a(b);
            C1130bh.m368k(iVar);
            return iVar;
        } else if (i == 1) {
            return new BinderC1006b(((C1078p) this.f562b).mo94a(), (C1000au) this.f561a.mo94a());
        } else {
            if (i == 2) {
                return new C0993an(((C1078p) this.f561a).mo94a(), (C1021bo) this.f562b.mo94a());
            }
            if (i == 3) {
                return new C1000au(((C1078p) this.f561a).mo94a(), (C1055cv) this.f562b.mo94a());
            }
            return new C1057cx((C1000au) this.f562b.mo94a(), C1152cc.m338c(this.f561a));
        }
    }
}
