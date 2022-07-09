package com.google.android.play.core.splitcompat;

import android.util.Log;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.play.core.splitcompat.o */
/* loaded from: classes.dex */
public final class RunnableC1206o implements Runnable {

    /* renamed from: a */
    final /* synthetic */ Set f735a;

    /* renamed from: b */
    final /* synthetic */ SplitCompat f736b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC1206o(SplitCompat splitCompat, Set set) {
        this.f736b = splitCompat;
        this.f735a = set;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C1194c cVar;
        try {
            for (String str : this.f735a) {
                cVar = this.f736b.f709b;
                cVar.m221n(str);
            }
        } catch (Exception e) {
            Log.e("SplitCompat", "Failed to remove from splitcompat storage split that is already installed", e);
        }
    }
}
