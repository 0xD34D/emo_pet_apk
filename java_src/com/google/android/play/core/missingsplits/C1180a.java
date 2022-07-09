package com.google.android.play.core.missingsplits;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ComponentInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import com.google.android.play.core.internal.C1102ag;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* renamed from: com.google.android.play.core.missingsplits.a */
/* loaded from: classes.dex */
final class C1180a {

    /* renamed from: a */
    private static final C1102ag f685a = new C1102ag("MissingSplitsAppComponentsHelper");

    /* renamed from: b */
    private final Context f686b;

    /* renamed from: c */
    private final PackageManager f687c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1180a(Context context, PackageManager packageManager) {
        this.f686b = context;
        this.f687c = packageManager;
    }

    /* renamed from: d */
    private final void m257d(List<ComponentInfo> list, int i) {
        for (ComponentInfo componentInfo : list) {
            this.f687c.setComponentEnabledSetting(new ComponentName(componentInfo.packageName, componentInfo.name), i, 1);
        }
    }

    /* renamed from: e */
    private final List<ComponentInfo> m256e() {
        try {
            ArrayList arrayList = new ArrayList();
            PackageInfo packageInfo = this.f687c.getPackageInfo(this.f686b.getPackageName(), 526);
            if (packageInfo.providers != null) {
                Collections.addAll(arrayList, packageInfo.providers);
            }
            if (packageInfo.receivers != null) {
                Collections.addAll(arrayList, packageInfo.receivers);
            }
            if (packageInfo.services != null) {
                Collections.addAll(arrayList, packageInfo.services);
            }
            return arrayList;
        } catch (PackageManager.NameNotFoundException e) {
            f685a.m439e("Failed to resolve own package : %s", e);
            return Collections.emptyList();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final boolean m260a() {
        for (ComponentInfo componentInfo : m256e()) {
            if (this.f687c.getComponentEnabledSetting(new ComponentName(componentInfo.packageName, componentInfo.name)) != 2) {
                f685a.m443a("Not all non-activity components are disabled", new Object[0]);
                return false;
            }
        }
        f685a.m443a("All non-activity components are disabled", new Object[0]);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final void m259b() {
        f685a.m440d("Disabling all non-activity components", new Object[0]);
        m257d(m256e(), 2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public final void m258c() {
        f685a.m440d("Resetting enabled state of all non-activity components", new Object[0]);
        m257d(m256e(), 0);
    }
}
