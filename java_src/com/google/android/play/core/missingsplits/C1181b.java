package com.google.android.play.core.missingsplits;

import android.app.Activity;
import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import com.google.android.play.core.internal.C1102ag;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.google.android.play.core.missingsplits.b */
/* loaded from: classes.dex */
final class C1181b implements MissingSplitsManager {

    /* renamed from: a */
    private static final C1102ag f688a = new C1102ag("MissingSplitsManagerImpl");

    /* renamed from: b */
    private final Context f689b;

    /* renamed from: c */
    private final Runtime f690c;

    /* renamed from: d */
    private final C1180a f691d;

    /* renamed from: e */
    private final AtomicReference<Boolean> f692e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1181b(Context context, Runtime runtime, C1180a aVar, AtomicReference<Boolean> atomicReference) {
        this.f689b = context;
        this.f690c = runtime;
        this.f691d = aVar;
        this.f692e = atomicReference;
    }

    /* renamed from: a */
    private final boolean m255a() {
        try {
            ApplicationInfo applicationInfo = this.f689b.getPackageManager().getApplicationInfo(this.f689b.getPackageName(), 128);
            if (!(applicationInfo == null || applicationInfo.metaData == null)) {
                if (Boolean.TRUE.equals(applicationInfo.metaData.get("com.android.vending.splits.required"))) {
                    return true;
                }
            }
            return false;
        } catch (PackageManager.NameNotFoundException unused) {
            f688a.m439e("App '%s' is not found in the PackageManager", this.f689b.getPackageName());
            return false;
        }
    }

    /* renamed from: b */
    private final Set<String> m254b() {
        if (Build.VERSION.SDK_INT < 21) {
            return Collections.emptySet();
        }
        try {
            PackageInfo packageInfo = this.f689b.getPackageManager().getPackageInfo(this.f689b.getPackageName(), 0);
            HashSet hashSet = new HashSet();
            if (packageInfo == null || packageInfo.splitNames == null) {
                return hashSet;
            }
            Collections.addAll(hashSet, packageInfo.splitNames);
            return hashSet;
        } catch (PackageManager.NameNotFoundException unused) {
            f688a.m439e("App '%s' is not found in PackageManager", this.f689b.getPackageName());
            return Collections.emptySet();
        }
    }

    /* renamed from: c */
    private static boolean m253c(Set<String> set) {
        return set.isEmpty() || (set.size() == 1 && set.contains(""));
    }

    /* renamed from: d */
    private final List<ActivityManager.AppTask> m252d() {
        List<ActivityManager.AppTask> appTasks = ((ActivityManager) this.f689b.getSystemService("activity")).getAppTasks();
        return appTasks != null ? appTasks : Collections.emptyList();
    }

    @Override // com.google.android.play.core.missingsplits.MissingSplitsManager
    public final boolean disableAppIfMissingRequiredSplits() {
        boolean booleanValue;
        boolean z;
        Class<?> cls;
        boolean z2;
        ApplicationInfo applicationInfo;
        Set set;
        if (Build.VERSION.SDK_INT < 21) {
            return false;
        }
        synchronized (this.f692e) {
            if (this.f692e.get() == null) {
                AtomicReference<Boolean> atomicReference = this.f692e;
                if (Build.VERSION.SDK_INT >= 21) {
                    try {
                        applicationInfo = this.f689b.getPackageManager().getApplicationInfo(this.f689b.getPackageName(), 128);
                    } catch (PackageManager.NameNotFoundException unused) {
                        f688a.m439e("App '%s' is not found in the PackageManager", this.f689b.getPackageName());
                    }
                    if (!(applicationInfo == null || applicationInfo.metaData == null)) {
                        if (Boolean.TRUE.equals(applicationInfo.metaData.get("com.android.vending.splits.required"))) {
                            if (Build.VERSION.SDK_INT >= 21) {
                                try {
                                    PackageInfo packageInfo = this.f689b.getPackageManager().getPackageInfo(this.f689b.getPackageName(), 0);
                                    HashSet hashSet = new HashSet();
                                    if (!(packageInfo == null || packageInfo.splitNames == null)) {
                                        Collections.addAll(hashSet, packageInfo.splitNames);
                                    }
                                    set = hashSet;
                                } catch (PackageManager.NameNotFoundException unused2) {
                                    f688a.m439e("App '%s' is not found in PackageManager", this.f689b.getPackageName());
                                }
                                if (!set.isEmpty() || (set.size() == 1 && set.contains(""))) {
                                    z2 = true;
                                    atomicReference.set(Boolean.valueOf(z2));
                                }
                            }
                            set = Collections.emptySet();
                            if (!set.isEmpty()) {
                            }
                            z2 = true;
                            atomicReference.set(Boolean.valueOf(z2));
                        }
                    }
                }
                z2 = false;
                atomicReference.set(Boolean.valueOf(z2));
            }
            booleanValue = this.f692e.get().booleanValue();
        }
        if (booleanValue) {
            Iterator<ActivityManager.AppTask> it = m252d().iterator();
            while (true) {
                if (it.hasNext()) {
                    ActivityManager.AppTask next = it.next();
                    if (!(next.getTaskInfo() == null || next.getTaskInfo().baseIntent == null || next.getTaskInfo().baseIntent.getComponent() == null || !PlayCoreMissingSplitsActivity.class.getName().equals(next.getTaskInfo().baseIntent.getComponent().getClassName()))) {
                        break;
                    }
                } else {
                    loop1: for (ActivityManager.AppTask appTask : m252d()) {
                        ActivityManager.RecentTaskInfo taskInfo = appTask.getTaskInfo();
                        if (!(taskInfo == null || taskInfo.baseIntent == null || taskInfo.baseIntent.getComponent() == null)) {
                            ComponentName component = taskInfo.baseIntent.getComponent();
                            String className = component.getClassName();
                            try {
                                cls = Class.forName(className);
                            } catch (ClassNotFoundException unused3) {
                                f688a.m439e("ClassNotFoundException when scanning class hierarchy of '%s'", className);
                                try {
                                    if (this.f689b.getPackageManager().getActivityInfo(component, 0) != null) {
                                    }
                                } catch (PackageManager.NameNotFoundException unused4) {
                                    continue;
                                }
                            }
                            while (cls != null) {
                                if (cls.equals(Activity.class)) {
                                    z = true;
                                    break loop1;
                                }
                                Class<? super Object> superclass = cls.getSuperclass();
                                cls = superclass != cls ? superclass : null;
                            }
                            continue;
                        }
                    }
                    z = false;
                    this.f691d.m259b();
                    for (ActivityManager.AppTask appTask2 : m252d()) {
                        appTask2.finishAndRemoveTask();
                    }
                    if (z) {
                        this.f689b.getPackageManager().setComponentEnabledSetting(new ComponentName(this.f689b, PlayCoreMissingSplitsActivity.class), 1, 1);
                        this.f689b.startActivity(new Intent(this.f689b, PlayCoreMissingSplitsActivity.class).addFlags(884998144));
                    }
                    this.f690c.exit(0);
                }
            }
            return true;
        }
        if (this.f691d.m260a()) {
            this.f691d.m258c();
            this.f690c.exit(0);
        }
        return false;
    }

    @Override // com.google.android.play.core.missingsplits.MissingSplitsManager
    public final boolean isMissingRequiredSplits() {
        boolean booleanValue;
        synchronized (this.f692e) {
            if (this.f692e.get() == null) {
                AtomicReference<Boolean> atomicReference = this.f692e;
                boolean z = false;
                if (Build.VERSION.SDK_INT >= 21 && m255a() && m253c(m254b())) {
                    z = true;
                }
                atomicReference.set(Boolean.valueOf(z));
            }
            booleanValue = this.f692e.get().booleanValue();
        }
        return booleanValue;
    }
}
