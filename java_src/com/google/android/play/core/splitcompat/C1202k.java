package com.google.android.play.core.splitcompat;

import android.os.Build;
import android.util.Log;
import com.google.android.play.core.internal.C1148bz;
import java.io.File;
import java.io.IOException;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
/* renamed from: com.google.android.play.core.splitcompat.k */
/* loaded from: classes.dex */
public final class C1202k {

    /* renamed from: a */
    public static final /* synthetic */ int f729a = 0;

    /* renamed from: b */
    private static final Pattern f730b = Pattern.compile("lib/([^/]+)/(.*\\.so)$");

    /* renamed from: c */
    private final C1194c f731c;

    public C1202k(C1194c cVar) throws IOException {
        this.f731c = cVar;
    }

    /* renamed from: d */
    public static /* synthetic */ Set m206d(C1202k kVar, Set set, C1208q qVar, ZipFile zipFile) throws IOException {
        HashSet hashSet = new HashSet();
        kVar.m204f(qVar, set, new C1198g(hashSet, qVar, zipFile));
        return hashSet;
    }

    /* renamed from: e */
    private static void m205e(C1208q qVar, AbstractC1199h hVar) throws IOException {
        IOException e;
        ZipFile zipFile;
        String format;
        try {
            zipFile = new ZipFile(qVar.m200a());
        } catch (IOException e2) {
            e = e2;
            zipFile = null;
        }
        try {
            String b = qVar.m199b();
            HashMap hashMap = new HashMap();
            Enumeration<? extends ZipEntry> entries = zipFile.entries();
            while (entries.hasMoreElements()) {
                ZipEntry zipEntry = (ZipEntry) entries.nextElement();
                Matcher matcher = f730b.matcher(zipEntry.getName());
                if (matcher.matches()) {
                    String group = matcher.group(1);
                    String group2 = matcher.group(2);
                    Log.d("SplitCompat", String.format("NativeLibraryExtractor: split '%s' has native library '%s' for ABI '%s'", b, group2, group));
                    Set set = (Set) hashMap.get(group);
                    if (set == null) {
                        set = new HashSet();
                        hashMap.put(group, set);
                    }
                    set.add(new C1201j(zipEntry, group2));
                }
            }
            HashMap hashMap2 = new HashMap();
            String[] strArr = Build.SUPPORTED_ABIS;
            for (String str : strArr) {
                if (hashMap.containsKey(str)) {
                    Log.d("SplitCompat", String.format("NativeLibraryExtractor: there are native libraries for supported ABI %s; will use this ABI", str));
                    for (C1201j jVar : (Set) hashMap.get(str)) {
                        if (hashMap2.containsKey(jVar.f727a)) {
                            format = String.format("NativeLibraryExtractor: skipping library %s for ABI %s; already present for a better ABI", jVar.f727a, str);
                        } else {
                            hashMap2.put(jVar.f727a, jVar);
                            format = String.format("NativeLibraryExtractor: using library %s for ABI %s", jVar.f727a, str);
                        }
                        Log.d("SplitCompat", format);
                    }
                } else {
                    Log.d("SplitCompat", String.format("NativeLibraryExtractor: there are no native libraries for supported ABI %s", str));
                }
            }
            hVar.mo211a(zipFile, new HashSet(hashMap2.values()));
            zipFile.close();
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

    /* renamed from: f */
    public final void m204f(C1208q qVar, Set<C1201j> set, AbstractC1200i iVar) throws IOException {
        for (C1201j jVar : set) {
            File e = this.f731c.m230e(qVar.m199b(), jVar.f727a);
            boolean z = false;
            if (e.exists() && e.length() == jVar.f728b.getSize()) {
                z = true;
            }
            iVar.mo210a(jVar, e, z);
        }
    }

    /* renamed from: a */
    public final Set<File> m209a() throws IOException {
        Log.d("SplitCompat", "NativeLibraryExtractor: synchronizing native libraries");
        Set<C1208q> i = this.f731c.m226i();
        for (String str : this.f731c.m225j()) {
            Iterator<C1208q> it = i.iterator();
            while (true) {
                if (it.hasNext()) {
                    if (it.next().m199b().equals(str)) {
                        break;
                    }
                } else {
                    Log.i("SplitCompat", String.format("NativeLibraryExtractor: extracted split '%s' has no corresponding split; deleting", str));
                    this.f731c.m224k(str);
                    break;
                }
            }
        }
        HashSet hashSet = new HashSet();
        for (C1208q qVar : i) {
            HashSet hashSet2 = new HashSet();
            m205e(qVar, new C1197f(this, hashSet2, qVar));
            for (File file : this.f731c.m222m(qVar.m199b())) {
                if (!hashSet2.contains(file)) {
                    Log.i("SplitCompat", String.format("NativeLibraryExtractor: file '%s' found in split '%s' that is not in the split file '%s'; removing", file.getAbsolutePath(), qVar.m199b(), qVar.m200a().getAbsolutePath()));
                    this.f731c.m223l(file);
                }
            }
            hashSet.addAll(hashSet2);
        }
        return hashSet;
    }

    /* renamed from: b */
    public final Set<File> m208b(C1208q qVar) throws IOException {
        AtomicBoolean atomicBoolean = new AtomicBoolean(true);
        HashSet hashSet = new HashSet();
        m205e(qVar, new C1196e(this, qVar, hashSet, atomicBoolean));
        if (atomicBoolean.get()) {
            return hashSet;
        }
        return null;
    }
}
