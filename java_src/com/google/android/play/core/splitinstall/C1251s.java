package com.google.android.play.core.splitinstall;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import com.google.android.play.core.internal.C1102ag;
import com.google.android.play.core.listener.AbstractC1179b;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;
/* renamed from: com.google.android.play.core.splitinstall.s */
/* loaded from: classes.dex */
public final class C1251s extends AbstractC1179b<SplitInstallSessionState> {

    /* renamed from: c */
    private static C1251s f828c;

    /* renamed from: e */
    private final AbstractC1236e f830e;

    /* renamed from: d */
    private final Handler f829d = new Handler(Looper.getMainLooper());

    /* renamed from: f */
    private final Set<SplitInstallStateUpdatedListener> f831f = new LinkedHashSet();

    public C1251s(Context context, AbstractC1236e eVar) {
        super(new C1102ag("SplitInstallListenerRegistry"), new IntentFilter("com.google.android.play.core.splitinstall.receiver.SplitInstallUpdateIntentService"), context);
        this.f830e = eVar;
    }

    /* renamed from: b */
    public static synchronized C1251s m134b(Context context) {
        C1251s sVar;
        synchronized (C1251s.class) {
            if (f828c == null) {
                f828c = new C1251s(context, EnumC1243l.f812a);
            }
            sVar = f828c;
        }
        return sVar;
    }

    @Override // com.google.android.play.core.listener.AbstractC1179b
    /* renamed from: a */
    public final void mo135a(Context context, Intent intent) {
        Bundle bundleExtra = intent.getBundleExtra("session_state");
        if (bundleExtra != null) {
            SplitInstallSessionState d = SplitInstallSessionState.m196d(bundleExtra);
            this.f678a.m443a("ListenerRegistryBroadcastReceiver.onReceive: %s", d);
            AbstractC1237f a = this.f830e.mo150a();
            if (d.status() != 3 || a == null) {
                m131k(d);
            } else {
                a.mo159a(d.mo193c(), new C1249q(this, d, intent, context));
            }
        }
    }

    /* renamed from: c */
    public final synchronized void m133c(SplitInstallStateUpdatedListener splitInstallStateUpdatedListener) {
        this.f831f.add(splitInstallStateUpdatedListener);
    }

    /* renamed from: d */
    public final synchronized void m132d(SplitInstallStateUpdatedListener splitInstallStateUpdatedListener) {
        this.f831f.remove(splitInstallStateUpdatedListener);
    }

    /* renamed from: k */
    public final synchronized void m131k(SplitInstallSessionState splitInstallSessionState) {
        Iterator it = new LinkedHashSet(this.f831f).iterator();
        while (it.hasNext()) {
            ((SplitInstallStateUpdatedListener) it.next()).onStateUpdate(splitInstallSessionState);
        }
        super.m264i(splitInstallSessionState);
    }
}
