package com.google.android.play.core.splitcompat;

import java.util.concurrent.ThreadFactory;
/* renamed from: com.google.android.play.core.splitcompat.b */
/* loaded from: classes.dex */
final class ThreadFactoryC1193b implements ThreadFactory {
    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        return new Thread(runnable, "SplitCompatBackgroundThread");
    }
}
