package com.google.android.play.core.internal;

import java.util.Objects;
/* renamed from: com.google.android.play.core.internal.bw */
/* loaded from: classes.dex */
final class C1145bw extends AbstractC1142bt {

    /* renamed from: a */
    private final C1144bv f659a = new C1144bv();

    @Override // com.google.android.play.core.internal.AbstractC1142bt
    /* renamed from: a */
    public final void mo343a(Throwable th, Throwable th2) {
        if (th2 != th) {
            Objects.requireNonNull(th2, "The suppressed exception cannot be null.");
            this.f659a.m344a(th).add(th2);
            return;
        }
        throw new IllegalArgumentException("Self suppression is not allowed.", th2);
    }
}
