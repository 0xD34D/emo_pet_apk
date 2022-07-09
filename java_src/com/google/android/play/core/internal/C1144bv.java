package com.google.android.play.core.internal;

import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.util.List;
import java.util.Vector;
import java.util.concurrent.ConcurrentHashMap;
/* renamed from: com.google.android.play.core.internal.bv */
/* loaded from: classes.dex */
final class C1144bv {

    /* renamed from: a */
    private final ConcurrentHashMap<C1143bu, List<Throwable>> f657a = new ConcurrentHashMap<>(16, 0.75f, 10);

    /* renamed from: b */
    private final ReferenceQueue<Throwable> f658b = new ReferenceQueue<>();

    /* renamed from: a */
    public final List<Throwable> m344a(Throwable th) {
        while (true) {
            Reference<? extends Throwable> poll = this.f658b.poll();
            if (poll == null) {
                break;
            }
            this.f657a.remove(poll);
        }
        List<Throwable> list = this.f657a.get(new C1143bu(th, null));
        if (list != null) {
            return list;
        }
        Vector vector = new Vector(2);
        List<Throwable> putIfAbsent = this.f657a.putIfAbsent(new C1143bu(th, this.f658b), vector);
        return putIfAbsent == null ? vector : putIfAbsent;
    }
}
