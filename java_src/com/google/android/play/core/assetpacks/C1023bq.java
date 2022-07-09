package com.google.android.play.core.assetpacks;

import android.os.Bundle;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.play.core.assetpacks.bq */
/* loaded from: classes.dex */
public final /* synthetic */ class C1023bq implements AbstractC1032bz {

    /* renamed from: a */
    private final C1034ca f373a;

    /* renamed from: b */
    private final Bundle f374b;

    /* renamed from: c */
    private final /* synthetic */ int f375c = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1023bq(C1034ca caVar, Bundle bundle) {
        this.f373a = caVar;
        this.f374b = bundle;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1023bq(C1034ca caVar, Bundle bundle, byte[] bArr) {
        this.f373a = caVar;
        this.f374b = bundle;
    }

    @Override // com.google.android.play.core.assetpacks.AbstractC1032bz
    /* renamed from: a */
    public final Object mo581a() {
        return this.f375c != 0 ? this.f373a.m568l(this.f374b) : this.f373a.m569k(this.f374b);
    }
}
