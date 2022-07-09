package com.google.android.play.core.tasks;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;
/* renamed from: com.google.android.play.core.tasks.l */
/* loaded from: classes.dex */
final class ExecutorC1280l implements Executor {

    /* renamed from: a */
    private final Handler f917a = new Handler(Looper.getMainLooper());

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.f917a.post(runnable);
    }
}
