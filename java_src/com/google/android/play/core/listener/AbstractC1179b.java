package com.google.android.play.core.listener;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.google.android.play.core.internal.C1102ag;
import com.google.android.play.core.internal.C1119ax;
import com.google.android.play.core.splitcompat.C1207p;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
/* renamed from: com.google.android.play.core.listener.b */
/* loaded from: classes.dex */
public abstract class AbstractC1179b<StateT> {

    /* renamed from: a */
    protected final C1102ag f678a;

    /* renamed from: c */
    private final IntentFilter f680c;

    /* renamed from: d */
    private final Context f681d;

    /* renamed from: b */
    protected final Set<StateUpdatedListener<StateT>> f679b = new HashSet();

    /* renamed from: e */
    private C1178a f682e = null;

    /* renamed from: f */
    private volatile boolean f683f = false;

    public AbstractC1179b(C1102ag agVar, IntentFilter intentFilter, Context context) {
        this.f678a = agVar;
        this.f680c = intentFilter;
        this.f681d = C1207p.m201c(context);
    }

    /* renamed from: b */
    private final void m269b() {
        C1178a aVar;
        if ((this.f683f || !this.f679b.isEmpty()) && this.f682e == null) {
            C1178a aVar2 = new C1178a(this);
            this.f682e = aVar2;
            this.f681d.registerReceiver(aVar2, this.f680c);
        }
        if (!this.f683f && this.f679b.isEmpty() && (aVar = this.f682e) != null) {
            this.f681d.unregisterReceiver(aVar);
            this.f682e = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public abstract void mo135a(Context context, Intent intent);

    /* renamed from: e */
    public final synchronized void m268e(boolean z) {
        this.f683f = z;
        m269b();
    }

    /* renamed from: f */
    public final synchronized void m267f(StateUpdatedListener<StateT> stateUpdatedListener) {
        this.f678a.m440d("registerListener", new Object[0]);
        C1119ax.m401d(stateUpdatedListener, "Registered Play Core listener should not be null.");
        this.f679b.add(stateUpdatedListener);
        m269b();
    }

    /* renamed from: g */
    public final synchronized void m266g(StateUpdatedListener<StateT> stateUpdatedListener) {
        this.f678a.m440d("unregisterListener", new Object[0]);
        C1119ax.m401d(stateUpdatedListener, "Unregistered Play Core listener should not be null.");
        this.f679b.remove(stateUpdatedListener);
        m269b();
    }

    /* renamed from: h */
    public final synchronized void m265h() {
        this.f678a.m440d("clearListeners", new Object[0]);
        this.f679b.clear();
        m269b();
    }

    /* renamed from: i */
    public final synchronized void m264i(StateT statet) {
        Iterator it = new HashSet(this.f679b).iterator();
        while (it.hasNext()) {
            ((StateUpdatedListener) it.next()).onStateUpdate(statet);
        }
    }

    /* renamed from: j */
    public final synchronized boolean m263j() {
        return this.f682e != null;
    }
}
