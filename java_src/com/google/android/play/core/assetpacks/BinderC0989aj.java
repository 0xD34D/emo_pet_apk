package com.google.android.play.core.assetpacks;

import android.os.Bundle;
import com.google.android.play.core.internal.C1102ag;
import com.google.android.play.core.tasks.C1277i;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: com.google.android.play.core.assetpacks.aj */
/* loaded from: classes.dex */
final class BinderC0989aj extends BinderC0986ag<Void> {

    /* renamed from: c */
    final /* synthetic */ C0993an f228c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BinderC0989aj(C0993an anVar, C1277i<Void> iVar) {
        super(anVar, iVar);
        this.f228c = anVar;
    }

    @Override // com.google.android.play.core.assetpacks.BinderC0986ag, com.google.android.play.core.internal.AbstractC1173v
    /* renamed from: d */
    public final void mo286d(Bundle bundle, Bundle bundle2) {
        AtomicBoolean atomicBoolean;
        C1102ag agVar;
        super.mo286d(bundle, bundle2);
        atomicBoolean = this.f228c.f243g;
        if (!atomicBoolean.compareAndSet(true, false)) {
            agVar = C0993an.f237a;
            agVar.m439e("Expected keepingAlive to be true, but was false.", new Object[0]);
        }
        if (bundle.getBoolean("keep_alive")) {
            this.f228c.mo459j();
        }
    }
}
