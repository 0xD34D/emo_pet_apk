package com.google.android.play.core.tasks;

import java.util.ArrayDeque;
import java.util.Queue;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.play.core.tasks.h */
/* loaded from: classes.dex */
public final class C1276h<ResultT> {

    /* renamed from: a */
    private final Object f913a = new Object();

    /* renamed from: b */
    private Queue<AbstractC1275g<ResultT>> f914b;

    /* renamed from: c */
    private boolean f915c;

    /* renamed from: a */
    public final void m82a(AbstractC1275g<ResultT> gVar) {
        synchronized (this.f913a) {
            if (this.f914b == null) {
                this.f914b = new ArrayDeque();
            }
            this.f914b.add(gVar);
        }
    }

    /* renamed from: b */
    public final void m81b(Task<ResultT> task) {
        AbstractC1275g<ResultT> poll;
        synchronized (this.f913a) {
            if (this.f914b != null && !this.f915c) {
                this.f915c = true;
                while (true) {
                    synchronized (this.f913a) {
                        poll = this.f914b.poll();
                        if (poll == null) {
                            this.f915c = false;
                            return;
                        }
                    }
                    poll.mo83a(task);
                }
            }
        }
    }
}
