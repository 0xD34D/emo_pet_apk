package com.google.android.play.core.tasks;

import java.util.concurrent.Executor;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.play.core.tasks.d */
/* loaded from: classes.dex */
public final class C1272d<ResultT> implements AbstractC1275g<ResultT> {

    /* renamed from: a */
    private final Executor f905a;

    /* renamed from: b */
    private final Object f906b = new Object();

    /* renamed from: c */
    private final OnFailureListener f907c;

    public C1272d(Executor executor, OnFailureListener onFailureListener) {
        this.f905a = executor;
        this.f907c = onFailureListener;
    }

    @Override // com.google.android.play.core.tasks.AbstractC1275g
    /* renamed from: a */
    public final void mo83a(Task<ResultT> task) {
        if (!task.isSuccessful()) {
            synchronized (this.f906b) {
                if (this.f907c != null) {
                    this.f905a.execute(new RunnableC1271c(this, task));
                }
            }
        }
    }
}
