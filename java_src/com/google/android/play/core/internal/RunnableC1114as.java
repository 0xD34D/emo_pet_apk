package com.google.android.play.core.internal;

import android.util.Log;
import com.google.android.play.core.splitinstall.AbstractC1235d;
import java.util.List;
/* renamed from: com.google.android.play.core.internal.as */
/* loaded from: classes.dex */
final class RunnableC1114as implements Runnable {

    /* renamed from: a */
    final /* synthetic */ List f628a;

    /* renamed from: b */
    final /* synthetic */ AbstractC1235d f629b;

    /* renamed from: c */
    final /* synthetic */ C1115at f630c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC1114as(C1115at atVar, List list, AbstractC1235d dVar) {
        this.f630c = atVar;
        this.f628a = list;
        this.f629b = dVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C1117av avVar;
        try {
            avVar = this.f630c.f633c;
            if (avVar.m407c(this.f628a)) {
                C1115at.m414c(this.f630c, this.f629b);
            } else {
                C1115at.m413d(this.f630c, this.f628a, this.f629b);
            }
        } catch (Exception e) {
            Log.e("SplitCompat", "Error checking verified files.", e);
            this.f629b.mo105c(-11);
        }
    }
}
