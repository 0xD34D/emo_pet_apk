package com.google.android.play.core.splitinstall;

import java.util.concurrent.atomic.AtomicReference;
/* JADX WARN: Failed to restore enum class, 'enum' modifier removed */
/* renamed from: com.google.android.play.core.splitinstall.l */
/* loaded from: classes.dex */
public final class EnumC1243l extends Enum<EnumC1243l> implements AbstractC1236e {

    /* renamed from: a */
    public static final EnumC1243l f812a = new EnumC1243l();

    /* renamed from: b */
    private static final AtomicReference<AbstractC1237f> f813b = new AtomicReference<>(null);

    private EnumC1243l() {
    }

    @Override // com.google.android.play.core.splitinstall.AbstractC1236e
    /* renamed from: a */
    public final AbstractC1237f mo150a() {
        return f813b.get();
    }

    /* renamed from: b */
    public final void m149b(AbstractC1237f fVar) {
        f813b.set(fVar);
    }
}
