package com.google.android.play.core.tasks;

import java.util.concurrent.Executor;
/* renamed from: com.google.android.play.core.tasks.b */
/* loaded from: classes.dex */
final class C1270b<ResultT> implements AbstractC1275g<ResultT> {

    /* renamed from: a */
    private final Executor f900a;

    /* renamed from: b */
    private final Object f901b = new Object();

    /* renamed from: c */
    private final OnCompleteListener<ResultT> f902c;

    public C1270b(Executor executor, OnCompleteListener<ResultT> onCompleteListener) {
        this.f900a = executor;
        this.f902c = onCompleteListener;
    }

    @Override // com.google.android.play.core.tasks.AbstractC1275g
    /* renamed from: a */
    public final void mo83a(Task<ResultT> task) {
        synchronized (this.f901b) {
            if (this.f902c != null) {
                this.f900a.execute(new RunnableC1269a(this, task));
            }
        }
    }
}
