package com.google.android.play.core.tasks;
/* renamed from: com.google.android.play.core.tasks.a */
/* loaded from: classes.dex */
final class RunnableC1269a implements Runnable {

    /* renamed from: a */
    final /* synthetic */ Task f898a;

    /* renamed from: b */
    final /* synthetic */ C1270b f899b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC1269a(C1270b bVar, Task task) {
        this.f899b = bVar;
        this.f898a = task;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        OnCompleteListener onCompleteListener;
        OnCompleteListener onCompleteListener2;
        obj = this.f899b.f901b;
        synchronized (obj) {
            onCompleteListener = this.f899b.f902c;
            if (onCompleteListener != null) {
                onCompleteListener2 = this.f899b.f902c;
                onCompleteListener2.onComplete(this.f898a);
            }
        }
    }
}
