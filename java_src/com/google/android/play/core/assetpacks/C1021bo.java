package com.google.android.play.core.assetpacks;

import java.util.HashMap;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.play.core.assetpacks.bo */
/* loaded from: classes.dex */
public final class C1021bo {

    /* renamed from: a */
    private final Map<String, Double> f371a = new HashMap();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final synchronized void m585a(String str) {
        this.f371a.put(str, Double.valueOf(0.0d));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final synchronized double m584b(String str) {
        Double d = this.f371a.get(str);
        if (d == null) {
            return 0.0d;
        }
        return d.doubleValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public final synchronized double m583c(String str, C1036cc ccVar) {
        double d;
        d = (((C1015bi) ccVar).f333e + 1.0d) / ((C1015bi) ccVar).f334f;
        this.f371a.put(str, Double.valueOf(d));
        return d;
    }
}
