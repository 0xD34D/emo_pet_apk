package com.google.android.play.core.splitcompat;

import android.util.Log;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.play.core.splitcompat.n */
/* loaded from: classes.dex */
public final class RunnableC1205n implements Runnable {

    /* renamed from: a */
    final /* synthetic */ SplitCompat f734a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC1205n(SplitCompat splitCompat) {
        this.f734a = splitCompat;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C1194c cVar;
        try {
            cVar = this.f734a.f709b;
            cVar.m234a();
        } catch (Exception e) {
            Log.e("SplitCompat", "Failed to cleanup splitcompat storage", e);
        }
    }
}
