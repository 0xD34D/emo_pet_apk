package com.google.android.play.core.internal;
/* renamed from: com.google.android.play.core.internal.cb */
/* loaded from: classes.dex */
public final class C1151cb<T> implements AbstractC1154ce<T> {

    /* renamed from: a */
    private AbstractC1154ce<T> f661a;

    /* renamed from: b */
    public static <T> void m340b(AbstractC1154ce<T> ceVar, AbstractC1154ce<T> ceVar2) {
        C1130bh.m369j(ceVar2);
        C1151cb cbVar = (C1151cb) ceVar;
        if (cbVar.f661a == null) {
            cbVar.f661a = ceVar2;
            return;
        }
        throw new IllegalStateException();
    }

    @Override // com.google.android.play.core.internal.AbstractC1154ce
    /* renamed from: a */
    public final T mo94a() {
        AbstractC1154ce<T> ceVar = this.f661a;
        if (ceVar != null) {
            return ceVar.mo94a();
        }
        throw new IllegalStateException();
    }
}
