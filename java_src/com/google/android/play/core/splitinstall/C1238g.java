package com.google.android.play.core.splitinstall;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.google.android.play.core.splitinstall.g */
/* loaded from: classes.dex */
public final class C1238g {

    /* renamed from: a */
    private final Map<String, Map<String, String>> f803a = new HashMap();

    /* renamed from: a */
    public final C1239h m158a() {
        HashMap hashMap = new HashMap();
        for (Map.Entry<String, Map<String, String>> entry : this.f803a.entrySet()) {
            hashMap.put(entry.getKey(), Collections.unmodifiableMap(new HashMap(entry.getValue())));
        }
        return new C1239h(Collections.unmodifiableMap(hashMap));
    }

    /* renamed from: b */
    public final void m157b(String str, String str2, String str3) {
        if (!this.f803a.containsKey(str2)) {
            this.f803a.put(str2, new HashMap());
        }
        this.f803a.get(str2).put(str, str3);
    }
}
