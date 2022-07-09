package com.google.android.play.core.tasks;
/* renamed from: com.google.android.play.core.tasks.e */
/* loaded from: classes.dex */
final class RunnableC1273e implements Runnable {

    /* renamed from: a */
    final /* synthetic */ Task f908a;

    /* renamed from: b */
    final /* synthetic */ C1274f f909b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC1273e(C1274f fVar, Task task) {
        this.f909b = fVar;
        this.f908a = task;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        OnSuccessListener onSuccessListener;
        OnSuccessListener onSuccessListener2;
        obj = this.f909b.f911b;
        synchronized (obj) {
            onSuccessListener = this.f909b.f912c;
            if (onSuccessListener != null) {
                onSuccessListener2 = this.f909b.f912c;
                onSuccessListener2.onSuccess(this.f908a.getResult());
            }
        }
    }
}
