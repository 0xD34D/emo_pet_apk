package com.google.android.play.core.common;

import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: com.google.android.play.core.common.a */
/* loaded from: classes.dex */
public final class C1090a {

    /* renamed from: a */
    private final Map<String, Object> f594a = new HashMap();

    /* renamed from: b */
    private final AtomicBoolean f595b = new AtomicBoolean(false);

    /* renamed from: b */
    private final synchronized void m454b() {
        this.f594a.put("assetOnlyUpdates", false);
    }

    /* renamed from: a */
    public final synchronized boolean m455a() {
        if (!this.f595b.get()) {
            m454b();
        }
        Object obj = this.f594a.get("assetOnlyUpdates");
        if (!(obj instanceof Boolean)) {
            return false;
        }
        return ((Boolean) obj).booleanValue();
    }
}
