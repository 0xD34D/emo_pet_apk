package com.google.android.play.core.splitinstall;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.os.Build;
import android.os.Bundle;
import com.google.android.play.core.internal.C1102ag;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
/* renamed from: com.google.android.play.core.splitinstall.p */
/* loaded from: classes.dex */
public final class C1248p {

    /* renamed from: a */
    private static final C1102ag f817a = new C1102ag("SplitInstallInfoProvider");

    /* renamed from: b */
    private final Context f818b;

    /* renamed from: c */
    private final String f819c;

    public C1248p(Context context) {
        this.f818b = context;
        this.f819c = context.getPackageName();
    }

    public C1248p(Context context, String str) {
        this.f818b = context;
        this.f819c = str;
    }

    /* renamed from: d */
    public static boolean m139d(String str) {
        return str.startsWith("config.");
    }

    /* renamed from: e */
    public static boolean m138e(String str) {
        return m139d(str) || str.contains(".config.");
    }

    /* renamed from: f */
    private final Set<String> m137f() {
        HashSet hashSet = new HashSet();
        Bundle g = m136g();
        if (g != null) {
            String string = g.getString("com.android.dynamic.apk.fused.modules");
            if (string == null || string.isEmpty()) {
                f817a.m443a("App has no fused modules.", new Object[0]);
            } else {
                Collections.addAll(hashSet, string.split(",", -1));
                hashSet.remove("");
                hashSet.remove("base");
            }
        }
        if (Build.VERSION.SDK_INT >= 21) {
            String[] strArr = null;
            try {
                PackageInfo packageInfo = this.f818b.getPackageManager().getPackageInfo(this.f819c, 0);
                if (packageInfo != null) {
                    strArr = packageInfo.splitNames;
                }
            } catch (PackageManager.NameNotFoundException unused) {
                f817a.m439e("App is not found in PackageManager", new Object[0]);
            }
            if (strArr != null) {
                f817a.m443a("Adding splits from package manager: %s", Arrays.toString(strArr));
                Collections.addAll(hashSet, strArr);
            } else {
                f817a.m443a("No splits are found or app cannot be found in package manager.", new Object[0]);
            }
            AbstractC1246n a = C1247o.m144a();
            if (a != null) {
                hashSet.addAll(a.mo145a());
            }
        }
        return hashSet;
    }

    /* renamed from: g */
    private final Bundle m136g() {
        try {
            ApplicationInfo applicationInfo = this.f818b.getPackageManager().getApplicationInfo(this.f819c, 128);
            if (applicationInfo != null && applicationInfo.metaData != null) {
                return applicationInfo.metaData;
            }
            f817a.m443a("App has no applicationInfo or metaData", new Object[0]);
            return null;
        } catch (PackageManager.NameNotFoundException unused) {
            f817a.m439e("App is not found in PackageManager", new Object[0]);
            return null;
        }
    }

    /* renamed from: a */
    public final Set<String> m142a() {
        HashSet hashSet = new HashSet();
        for (String str : m137f()) {
            if (!m138e(str)) {
                hashSet.add(str);
            }
        }
        return hashSet;
    }

    /* renamed from: b */
    public final Set<String> m141b() {
        C1239h c = m140c();
        if (c == null) {
            return null;
        }
        HashSet hashSet = new HashSet();
        Set<String> f = m137f();
        f.add("");
        Set<String> a = m142a();
        a.add("");
        for (Map.Entry<String, Set<String>> entry : c.m156a(a).entrySet()) {
            if (f.containsAll(entry.getValue())) {
                hashSet.add(entry.getKey());
            }
        }
        return hashSet;
    }

    /* renamed from: c */
    public final C1239h m140c() {
        Bundle g = m136g();
        if (g == null) {
            f817a.m439e("No metadata found in Context.", new Object[0]);
            return null;
        }
        int i = g.getInt("com.android.vending.splits");
        if (i == 0) {
            f817a.m439e("No metadata found in AndroidManifest.", new Object[0]);
            return null;
        }
        try {
            C1239h b = C1242k.m153b(this.f818b.getResources().getXml(i), new C1238g());
            if (b == null) {
                f817a.m439e("Can't parse languages metadata.", new Object[0]);
            }
            return b;
        } catch (Resources.NotFoundException unused) {
            f817a.m439e("Resource with languages metadata doesn't exist.", new Object[0]);
            return null;
        }
    }
}
