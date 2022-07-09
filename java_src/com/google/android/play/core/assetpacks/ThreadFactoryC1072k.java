package com.google.android.play.core.assetpacks;

import java.util.concurrent.ThreadFactory;
/* renamed from: com.google.android.play.core.assetpacks.k */
/* loaded from: classes.dex */
final /* synthetic */ class ThreadFactoryC1072k implements ThreadFactory {

    /* renamed from: c */
    private final /* synthetic */ int f556c = 0;

    /* renamed from: b */
    static final ThreadFactory f555b = new ThreadFactoryC1072k(null);

    /* renamed from: a */
    static final ThreadFactory f554a = new ThreadFactoryC1072k();

    private ThreadFactoryC1072k() {
    }

    private ThreadFactoryC1072k(byte[] bArr) {
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        return this.f556c != 0 ? new Thread(runnable, "AssetPackBackgroundExecutor") : new Thread(runnable, "UpdateListenerExecutor");
    }
}
