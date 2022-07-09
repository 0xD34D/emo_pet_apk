package com.google.android.play.core.splitinstall;

import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
/* renamed from: com.google.android.play.core.splitinstall.h */
/* loaded from: classes.dex */
public final class C1239h {

    /* renamed from: a */
    private final Map<String, Map<String, String>> f804a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ C1239h(Map map) {
        this.f804a = map;
    }

    /* renamed from: a */
    public final Map<String, Set<String>> m156a(Collection<String> collection) {
        Set set;
        HashMap hashMap = new HashMap();
        for (String str : this.f804a.keySet()) {
            if (!this.f804a.containsKey(str)) {
                set = Collections.emptySet();
            } else {
                HashSet hashSet = new HashSet();
                for (Map.Entry<String, String> entry : this.f804a.get(str).entrySet()) {
                    if (collection.contains(entry.getKey())) {
                        hashSet.add(entry.getValue());
                    }
                }
                set = Collections.unmodifiableSet(hashSet);
            }
            hashMap.put(str, set);
        }
        return hashMap;
    }
}
