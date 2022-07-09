package com.google.android.play.core.assetpacks;

import android.os.Bundle;
import com.google.android.play.core.internal.C1102ag;
import com.google.android.play.core.internal.C1112aq;
import com.google.android.play.core.tasks.C1277i;
/* renamed from: com.google.android.play.core.assetpacks.ak */
/* loaded from: classes.dex */
final class BinderC0990ak extends BinderC0986ag<Void> {

    /* renamed from: c */
    final int f229c;

    /* renamed from: d */
    final String f230d;

    /* renamed from: e */
    final int f231e;

    /* renamed from: f */
    final /* synthetic */ C0993an f232f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BinderC0990ak(C0993an anVar, C1277i<Void> iVar, int i, String str, int i2) {
        super(anVar, iVar);
        this.f232f = anVar;
        this.f229c = i;
        this.f230d = str;
        this.f231e = i2;
    }

    @Override // com.google.android.play.core.assetpacks.BinderC0986ag, com.google.android.play.core.internal.AbstractC1173v
    /* renamed from: g */
    public final void mo283g(Bundle bundle) {
        C1112aq aqVar;
        C1102ag agVar;
        aqVar = this.f232f.f241e;
        aqVar.m432b();
        int i = bundle.getInt("error_code");
        agVar = C0993an.f237a;
        agVar.m442b("onError(%d), retrying notifyModuleCompleted...", Integer.valueOf(i));
        int i2 = this.f231e;
        if (i2 > 0) {
            this.f232f.m656y(this.f229c, this.f230d, i2 - 1);
        }
    }
}
