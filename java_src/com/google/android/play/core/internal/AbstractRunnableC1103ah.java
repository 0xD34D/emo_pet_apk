package com.google.android.play.core.internal;

import com.google.android.play.core.tasks.C1277i;
/* renamed from: com.google.android.play.core.internal.ah */
/* loaded from: classes.dex */
public abstract class AbstractRunnableC1103ah implements Runnable {

    /* renamed from: a */
    private final C1277i<?> f607a;

    public AbstractRunnableC1103ah() {
        this.f607a = null;
    }

    public AbstractRunnableC1103ah(C1277i<?> iVar) {
        this.f607a = iVar;
    }

    /* renamed from: a */
    protected abstract void mo191a();

    /* renamed from: b */
    public final void m436b(Exception exc) {
        C1277i<?> iVar = this.f607a;
        if (iVar != null) {
            iVar.m77d(exc);
        }
    }

    /* renamed from: c */
    public final C1277i<?> m435c() {
        return this.f607a;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            mo191a();
        } catch (Exception e) {
            m436b(e);
        }
    }
}
