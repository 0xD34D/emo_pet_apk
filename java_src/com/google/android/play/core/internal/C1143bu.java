package com.google.android.play.core.internal;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
/* renamed from: com.google.android.play.core.internal.bu */
/* loaded from: classes.dex */
final class C1143bu extends WeakReference<Throwable> {

    /* renamed from: a */
    private final int f656a;

    public C1143bu(Throwable th, ReferenceQueue<Throwable> referenceQueue) {
        super(th, referenceQueue);
        this.f656a = System.identityHashCode(th);
    }

    public final boolean equals(Object obj) {
        if (obj != null && obj.getClass() == getClass()) {
            if (this == obj) {
                return true;
            }
            C1143bu buVar = (C1143bu) obj;
            if (this.f656a == buVar.f656a && get() == buVar.get()) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f656a;
    }
}
