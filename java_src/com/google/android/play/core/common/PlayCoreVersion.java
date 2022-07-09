package com.google.android.play.core.common;

import android.os.Bundle;
import com.google.android.play.core.internal.C1102ag;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
/* loaded from: classes.dex */
public class PlayCoreVersion {

    /* renamed from: a */
    private static final Set<String> f590a = new HashSet(Arrays.asList("app_update", "review"));

    /* renamed from: b */
    private static final Set<String> f591b = new HashSet(Arrays.asList("native", "unity"));

    /* renamed from: c */
    private static final Map<String, Map<String, Integer>> f592c = new HashMap();

    /* renamed from: d */
    private static final C1102ag f593d = new C1102ag("PlayCoreVersion");

    private PlayCoreVersion() {
    }

    /* renamed from: a */
    public static synchronized Map<String, Integer> m457a(String str) {
        Map<String, Integer> map;
        synchronized (PlayCoreVersion.class) {
            Map<String, Map<String, Integer>> map2 = f592c;
            if (!map2.containsKey(str)) {
                HashMap hashMap = new HashMap();
                hashMap.put("java", 11000);
                map2.put(str, hashMap);
            }
            map = map2.get(str);
        }
        return map;
    }

    public static synchronized void addVersion(String str, String str2, int i) {
        synchronized (PlayCoreVersion.class) {
            if (!f590a.contains(str)) {
                f593d.m439e("Illegal module name: %s", str);
            } else if (!f591b.contains(str2)) {
                f593d.m439e("Illegal platform name: %s", str2);
            } else {
                m457a(str).put(str2, Integer.valueOf(i));
            }
        }
    }

    /* renamed from: b */
    public static Bundle m456b(String str) {
        Bundle bundle = new Bundle();
        Map<String, Integer> a = m457a(str);
        bundle.putInt("playcore_version_code", a.get("java").intValue());
        if (a.containsKey("native")) {
            bundle.putInt("playcore_native_version", a.get("native").intValue());
        }
        if (a.containsKey("unity")) {
            bundle.putInt("playcore_unity_version", a.get("unity").intValue());
        }
        return bundle;
    }
}
