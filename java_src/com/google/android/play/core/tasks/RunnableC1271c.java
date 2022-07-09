package com.google.android.play.core.tasks;
/* renamed from: com.google.android.play.core.tasks.c */
/* loaded from: classes.dex */
final class RunnableC1271c implements Runnable {

    /* renamed from: a */
    final /* synthetic */ Task f903a;

    /* renamed from: b */
    final /* synthetic */ C1272d f904b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC1271c(C1272d dVar, Task task) {
        this.f904b = dVar;
        this.f903a = task;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        OnFailureListener onFailureListener;
        OnFailureListener onFailureListener2;
        obj = this.f904b.f906b;
        synchronized (obj) {
            onFailureListener = this.f904b.f907c;
            if (onFailureListener != null) {
                onFailureListener2 = this.f904b.f907c;
                onFailureListener2.onFailure(this.f903a.getException());
            }
        }
    }
}
