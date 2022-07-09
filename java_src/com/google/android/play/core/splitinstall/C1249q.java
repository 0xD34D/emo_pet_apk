package com.google.android.play.core.splitinstall;

import android.content.Context;
import android.content.Intent;
import com.google.android.play.core.internal.C1102ag;
/* renamed from: com.google.android.play.core.splitinstall.q */
/* loaded from: classes.dex */
final class C1249q implements AbstractC1235d {

    /* renamed from: a */
    final /* synthetic */ SplitInstallSessionState f820a;

    /* renamed from: b */
    final /* synthetic */ Intent f821b;

    /* renamed from: c */
    final /* synthetic */ Context f822c;

    /* renamed from: d */
    final /* synthetic */ C1251s f823d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1249q(C1251s sVar, SplitInstallSessionState splitInstallSessionState, Intent intent, Context context) {
        this.f823d = sVar;
        this.f820a = splitInstallSessionState;
        this.f821b = intent;
        this.f822c = context;
    }

    @Override // com.google.android.play.core.splitinstall.AbstractC1235d
    /* renamed from: a */
    public final void mo107a() {
        r0.f829d.post(new RunnableC1250r(this.f823d, this.f820a, 5, 0));
    }

    @Override // com.google.android.play.core.splitinstall.AbstractC1235d
    /* renamed from: b */
    public final void mo106b() {
        C1102ag agVar;
        if (!this.f821b.getBooleanExtra("triggered_from_app_after_verification", false)) {
            this.f821b.putExtra("triggered_from_app_after_verification", true);
            this.f822c.sendBroadcast(this.f821b);
            return;
        }
        agVar = this.f823d.f678a;
        agVar.m442b("Splits copied and verified more than once.", new Object[0]);
    }

    @Override // com.google.android.play.core.splitinstall.AbstractC1235d
    /* renamed from: c */
    public final void mo105c(int i) {
        r0.f829d.post(new RunnableC1250r(this.f823d, this.f820a, 6, i));
    }
}
