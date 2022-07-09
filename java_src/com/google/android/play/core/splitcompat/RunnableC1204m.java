package com.google.android.play.core.splitcompat;

import android.content.Context;
import com.google.android.play.core.splitinstall.C1251s;
/* renamed from: com.google.android.play.core.splitcompat.m */
/* loaded from: classes.dex */
final class RunnableC1204m implements Runnable {

    /* renamed from: a */
    final /* synthetic */ Context f733a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC1204m(Context context) {
        this.f733a = context;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C1251s.m134b(this.f733a).m268e(true);
    }
}
