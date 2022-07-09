package com.google.android.play.core.tasks;

import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.play.core.tasks.n */
/* loaded from: classes.dex */
public final class C1282n implements OnSuccessListener, OnFailureListener {

    /* renamed from: a */
    private final CountDownLatch f923a = new CountDownLatch(1);

    private C1282n() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ C1282n(byte[] bArr) {
    }

    /* renamed from: a */
    public final void m68a() throws InterruptedException {
        this.f923a.await();
    }

    /* renamed from: b */
    public final boolean m67b(long j, TimeUnit timeUnit) throws InterruptedException {
        return this.f923a.await(j, timeUnit);
    }

    @Override // com.google.android.play.core.tasks.OnFailureListener
    public final void onFailure(Exception exc) {
        this.f923a.countDown();
    }

    @Override // com.google.android.play.core.tasks.OnSuccessListener
    public final void onSuccess(Object obj) {
        this.f923a.countDown();
    }
}
