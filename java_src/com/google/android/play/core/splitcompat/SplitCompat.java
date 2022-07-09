package com.google.android.play.core.splitcompat;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.util.Log;
import com.google.android.play.core.internal.AbstractC1118aw;
import com.google.android.play.core.internal.C1115at;
import com.google.android.play.core.internal.C1117av;
import com.google.android.play.core.internal.C1119ax;
import com.google.android.play.core.internal.C1128bf;
import com.google.android.play.core.internal.C1148bz;
import com.google.android.play.core.splitinstall.C1247o;
import com.google.android.play.core.splitinstall.C1248p;
import com.google.android.play.core.splitinstall.EnumC1243l;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.atomic.AtomicReference;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
/* loaded from: classes.dex */
public class SplitCompat {

    /* renamed from: a */
    private static final AtomicReference<SplitCompat> f708a = new AtomicReference<>(null);

    /* renamed from: b */
    private final C1194c f709b;

    /* renamed from: c */
    private final Set<String> f710c = new HashSet();

    /* renamed from: d */
    private final C1192a f711d;

    private SplitCompat(Context context) {
        try {
            C1194c cVar = new C1194c(context);
            this.f709b = cVar;
            this.f711d = new C1192a(cVar);
        } catch (PackageManager.NameNotFoundException e) {
            throw new C1128bf(e);
        }
    }

    /* renamed from: a */
    public static boolean m245a(Context context) {
        return m239g(context, true);
    }

    /* renamed from: b */
    public static boolean m244b() {
        return f708a.get() != null;
    }

    /* renamed from: e */
    private static boolean m241e() {
        return Build.VERSION.SDK_INT < 21;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: f */
    public final Set<String> m240f() {
        HashSet hashSet;
        synchronized (this.f710c) {
            hashSet = new HashSet(this.f710c);
        }
        return hashSet;
    }

    /* renamed from: g */
    private static boolean m239g(Context context, boolean z) {
        if (m241e()) {
            return false;
        }
        AtomicReference<SplitCompat> atomicReference = f708a;
        boolean compareAndSet = atomicReference.compareAndSet(null, new SplitCompat(context));
        SplitCompat splitCompat = atomicReference.get();
        if (compareAndSet) {
            EnumC1243l.f812a.m149b(new C1115at(context, C1207p.m203a(), new C1117av(context, splitCompat.f709b, new C1119ax(), null), splitCompat.f709b, new C1207p()));
            C1247o.m143b(new C1203l(splitCompat));
            C1207p.m203a().execute(new RunnableC1204m(context));
        }
        try {
            splitCompat.m238h(context, z);
            return true;
        } catch (Exception e) {
            Log.e("SplitCompat", "Error installing additional splits", e);
            return false;
        }
    }

    /* renamed from: h */
    private final synchronized void m238h(Context context, boolean z) throws IOException {
        IOException e;
        ZipFile zipFile;
        if (z) {
            this.f709b.m234a();
        } else {
            C1207p.m203a().execute(new RunnableC1205n(this));
        }
        String packageName = context.getPackageName();
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(packageName, 0);
            List<String> arrayList = packageInfo.splitNames == null ? new ArrayList() : Arrays.asList(packageInfo.splitNames);
            Set<C1208q> i = this.f709b.m226i();
            HashSet hashSet = new HashSet();
            Iterator<C1208q> it = i.iterator();
            while (it.hasNext()) {
                String b = it.next().m199b();
                if (arrayList.contains(b)) {
                    if (z) {
                        this.f709b.m221n(b);
                    } else {
                        hashSet.add(b);
                    }
                    it.remove();
                }
            }
            if (!hashSet.isEmpty()) {
                C1207p.m203a().execute(new RunnableC1206o(this, hashSet));
            }
            HashSet hashSet2 = new HashSet();
            for (C1208q qVar : i) {
                String b2 = qVar.m199b();
                if (!C1248p.m138e(b2)) {
                    hashSet2.add(b2);
                }
            }
            for (String str : arrayList) {
                if (!C1248p.m138e(str)) {
                    hashSet2.add(str);
                }
            }
            HashSet<C1208q> hashSet3 = new HashSet(i.size());
            for (C1208q qVar2 : i) {
                if (!C1248p.m139d(qVar2.m199b())) {
                    String b3 = qVar2.m199b();
                    if (hashSet2.contains(C1248p.m139d(b3) ? "" : b3.split("\\.config\\.", 2)[0])) {
                    }
                }
                hashSet3.add(qVar2);
            }
            C1202k kVar = new C1202k(this.f709b);
            AbstractC1118aw a = C1119ax.m404a();
            ClassLoader classLoader = context.getClassLoader();
            if (z) {
                a.mo400a(classLoader, kVar.m209a());
            } else {
                Iterator it2 = hashSet3.iterator();
                while (it2.hasNext()) {
                    Set<File> b4 = kVar.m208b((C1208q) it2.next());
                    if (b4 == null) {
                        it2.remove();
                    } else {
                        a.mo400a(classLoader, b4);
                    }
                }
            }
            HashSet hashSet4 = new HashSet();
            for (C1208q qVar3 : hashSet3) {
                try {
                    zipFile = new ZipFile(qVar3.m200a());
                } catch (IOException e2) {
                    e = e2;
                    zipFile = null;
                }
                try {
                    ZipEntry entry = zipFile.getEntry("classes.dex");
                    zipFile.close();
                    if (entry != null && !a.mo399b(classLoader, this.f709b.m227h(qVar3.m199b()), qVar3.m200a(), z)) {
                        String valueOf = String.valueOf(qVar3.m200a());
                        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 24);
                        sb.append("split was not installed ");
                        sb.append(valueOf);
                        Log.w("SplitCompat", sb.toString());
                    }
                    hashSet4.add(qVar3.m200a());
                } catch (IOException e3) {
                    e = e3;
                    if (zipFile != null) {
                        try {
                            zipFile.close();
                        } catch (IOException e4) {
                            C1148bz.m342a(e, e4);
                        }
                    }
                    throw e;
                }
            }
            this.f711d.m236b(context, hashSet4);
            HashSet hashSet5 = new HashSet();
            for (C1208q qVar4 : hashSet3) {
                if (hashSet4.contains(qVar4.m200a())) {
                    String b5 = qVar4.m199b();
                    StringBuilder sb2 = new StringBuilder(b5.length() + 30);
                    sb2.append("Split '");
                    sb2.append(b5);
                    sb2.append("' installation emulated");
                    Log.d("SplitCompat", sb2.toString());
                    hashSet5.add(qVar4.m199b());
                } else {
                    String b6 = qVar4.m199b();
                    StringBuilder sb3 = new StringBuilder(b6.length() + 35);
                    sb3.append("Split '");
                    sb3.append(b6);
                    sb3.append("' installation not emulated.");
                    Log.d("SplitCompat", sb3.toString());
                }
            }
            synchronized (this.f710c) {
                this.f710c.addAll(hashSet5);
            }
        } catch (PackageManager.NameNotFoundException e5) {
            throw new IOException(String.format("Cannot load data for application '%s'", packageName), e5);
        }
    }

    public static boolean install(Context context) {
        return m239g(context, false);
    }

    public static boolean installActivity(Context context) {
        if (m241e()) {
            return false;
        }
        SplitCompat splitCompat = f708a.get();
        if (splitCompat != null) {
            return splitCompat.f711d.m237a(context, splitCompat.m240f());
        }
        if (context.getApplicationContext() != null) {
            install(context.getApplicationContext());
        }
        return install(context);
    }
}
