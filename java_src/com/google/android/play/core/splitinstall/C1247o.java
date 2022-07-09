package com.google.android.play.core.splitinstall;

import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.google.android.play.core.splitinstall.o */
/* loaded from: classes.dex */
public final class C1247o {

    /* renamed from: a */
    private static final AtomicReference<AbstractC1246n> f816a = new AtomicReference<>(null);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static AbstractC1246n m144a() {
        return f816a.get();
    }

    /* renamed from: b */
    public static void m143b(AbstractC1246n nVar) {
        f816a.compareAndSet(null, nVar);
    }
}
