package com.google.android.play.core.tasks;

import java.util.concurrent.Executor;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.play.core.tasks.f */
/* loaded from: classes.dex */
public final class C1274f<ResultT> implements AbstractC1275g<ResultT> {

    /* renamed from: a */
    private final Executor f910a;

    /* renamed from: b */
    private final Object f911b = new Object();

    /* renamed from: c */
    private final OnSuccessListener<? super ResultT> f912c;

    public C1274f(Executor executor, OnSuccessListener<? super ResultT> onSuccessListener) {
        this.f910a = executor;
        this.f912c = onSuccessListener;
    }

    @Override // com.google.android.play.core.tasks.AbstractC1275g
    /* renamed from: a */
    public final void mo83a(Task<ResultT> task) {
        if (task.isSuccessful()) {
            synchronized (this.f911b) {
                if (this.f912c != null) {
                    this.f910a.execute(new RunnableC1273e(this, task));
                }
            }
        }
    }
}
