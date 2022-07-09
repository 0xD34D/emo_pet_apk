package com.google.android.play.core.splitinstall;

import android.content.Context;
import android.content.SharedPreferences;
import java.util.Collection;
import java.util.HashSet;
import java.util.Set;
/* renamed from: com.google.android.play.core.splitinstall.av */
/* loaded from: classes.dex */
final class C1231av {

    /* renamed from: a */
    private final Context f789a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1231av(Context context) {
        this.f789a = context;
    }

    /* renamed from: c */
    private final SharedPreferences m162c() {
        return this.f789a.getSharedPreferences("playcore_split_install_internal", 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final synchronized Set<String> m164a() {
        Set<String> stringSet;
        try {
            stringSet = m162c().getStringSet("deferred_uninstall_module_list", new HashSet());
            if (stringSet == null) {
                stringSet = new HashSet<>();
            }
        } catch (Exception unused) {
            return new HashSet();
        }
        return stringSet;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final synchronized void m163b(Collection<String> collection) {
        Set<String> a = m164a();
        boolean z = false;
        for (String str : collection) {
            z |= a.add(str);
        }
        if (z) {
            try {
                m162c().edit().putStringSet("deferred_uninstall_module_list", a).apply();
            } catch (Exception unused) {
            }
        }
    }
}
