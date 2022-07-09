package com.google.android.play.core.internal;

import com.google.android.play.core.listener.StateUpdatedListener;
import java.util.HashSet;
import java.util.Set;
/* renamed from: com.google.android.play.core.internal.af */
/* loaded from: classes.dex */
public final class C1101af<StateT> {

    /* renamed from: a */
    protected final Set<StateUpdatedListener<StateT>> f605a = new HashSet();

    /* renamed from: a */
    public final synchronized void m446a(StateUpdatedListener<StateT> stateUpdatedListener) {
        this.f605a.add(stateUpdatedListener);
    }

    /* renamed from: b */
    public final synchronized void m445b(StateUpdatedListener<StateT> stateUpdatedListener) {
        this.f605a.remove(stateUpdatedListener);
    }

    /* renamed from: c */
    public final synchronized void m444c(StateT statet) {
        for (StateUpdatedListener<StateT> stateUpdatedListener : this.f605a) {
            stateUpdatedListener.onStateUpdate(statet);
        }
    }
}
