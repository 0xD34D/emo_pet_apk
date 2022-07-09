package com.google.android.play.core.assetpacks;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import com.google.android.play.core.internal.C1102ag;
import com.google.android.play.core.internal.C1148bz;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.concurrent.TimeUnit;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.play.core.assetpacks.au */
/* loaded from: classes.dex */
public final class C1000au {

    /* renamed from: a */
    private static final C1102ag f262a = new C1102ag("AssetPackStorage");

    /* renamed from: b */
    private static final long f263b = TimeUnit.DAYS.toMillis(14);

    /* renamed from: c */
    private static final long f264c = TimeUnit.DAYS.toMillis(28);

    /* renamed from: d */
    private final Context f265d;

    /* renamed from: e */
    private final C1055cv f266e;

    public C1000au(Context context, C1055cv cvVar) {
        this.f265d = context;
        this.f266e = cvVar;
    }

    /* renamed from: D */
    private final File m648D(String str, int i) {
        return new File(m647E(str), String.valueOf(i));
    }

    /* renamed from: E */
    private final File m647E(String str) {
        return new File(m637O(), str);
    }

    /* renamed from: F */
    private final File m646F(String str, int i, long j) {
        return new File(m626j(str, i, j), "merge.tmp");
    }

    /* renamed from: G */
    private static void m645G(File file) {
        if (file.listFiles() != null && file.listFiles().length > 1) {
            long J = m642J(file);
            File[] listFiles = file.listFiles();
            for (File file2 : listFiles) {
                if (!file2.getName().equals(String.valueOf(J)) && !file2.getName().equals("stale.tmp")) {
                    m636P(file2);
                }
            }
        }
    }

    /* renamed from: H */
    private static long m644H(File file) {
        return m643I(file, true);
    }

    /* renamed from: I */
    private static long m643I(File file, boolean z) {
        if (!file.exists()) {
            return -1L;
        }
        ArrayList arrayList = new ArrayList();
        if (z && file.listFiles().length > 1) {
            f262a.m439e("Multiple pack versions found, using highest version code.", new Object[0]);
        }
        try {
            File[] listFiles = file.listFiles();
            for (File file2 : listFiles) {
                if (!file2.getName().equals("stale.tmp")) {
                    arrayList.add(Long.valueOf(file2.getName()));
                }
            }
        } catch (NumberFormatException e) {
            f262a.m441c(e, "Corrupt asset pack directories.", new Object[0]);
        }
        if (arrayList.isEmpty()) {
            return -1L;
        }
        Collections.sort(arrayList);
        return ((Long) arrayList.get(arrayList.size() - 1)).longValue();
    }

    /* renamed from: J */
    private static long m642J(File file) {
        return m643I(file, false);
    }

    /* renamed from: K */
    private static List<String> m641K(PackageInfo packageInfo, String str) {
        ArrayList arrayList = new ArrayList();
        if (packageInfo.splitNames == null) {
            return arrayList;
        }
        for (int i = (-Arrays.binarySearch(packageInfo.splitNames, str)) - 1; i < packageInfo.splitNames.length && packageInfo.splitNames[i].startsWith(str); i++) {
            arrayList.add(packageInfo.applicationInfo.splitSourceDirs[i]);
        }
        return arrayList;
    }

    /* renamed from: L */
    private final List<File> m640L() {
        ArrayList arrayList = new ArrayList();
        try {
        } catch (IOException e) {
            f262a.m442b("Could not process directory while scanning installed packs. %s", e);
        }
        if (m637O().exists() && m637O().listFiles() != null) {
            File[] listFiles = m637O().listFiles();
            for (File file : listFiles) {
                if (!file.getCanonicalPath().equals(m638N().getCanonicalPath())) {
                    arrayList.add(file);
                }
            }
            return arrayList;
        }
        return arrayList;
    }

    /* renamed from: M */
    private final File m639M(String str, int i, long j) {
        return new File(new File(new File(m638N(), str), String.valueOf(i)), String.valueOf(j));
    }

    /* renamed from: N */
    private final File m638N() {
        return new File(m637O(), "_tmp");
    }

    /* renamed from: O */
    private final File m637O() {
        return new File(this.f265d.getFilesDir(), "assetpacks");
    }

    /* renamed from: P */
    private static boolean m636P(File file) {
        boolean z;
        File[] listFiles = file.listFiles();
        if (listFiles != null) {
            z = true;
            for (File file2 : listFiles) {
                z &= m636P(file2);
            }
        } else {
            z = true;
        }
        return file.delete() && true == z;
    }

    /* renamed from: A */
    public final void m651A(List<String> list) {
        int a = this.f266e.m524a();
        for (File file : m640L()) {
            if (!list.contains(file.getName()) && m644H(file) != a) {
                m636P(file);
            }
        }
    }

    /* renamed from: B */
    public final void m650B(String str, int i, long j) {
        if (m639M(str, i, j).exists()) {
            m636P(m639M(str, i, j));
        }
    }

    /* renamed from: C */
    public final void m649C(String str, int i, long j) {
        if (m630f(str, i, j).exists()) {
            m636P(m630f(str, i, j));
        }
    }

    /* renamed from: a */
    public final boolean m635a(String str) {
        return m631e(str) != null;
    }

    /* renamed from: b */
    public final Map<String, AssetPackLocation> m634b() {
        HashMap hashMap = new HashMap();
        try {
            for (File file : m640L()) {
                AssetPackLocation d = m632d(file.getName());
                if (d != null) {
                    hashMap.put(file.getName(), d);
                }
            }
        } catch (IOException e) {
            f262a.m442b("Could not process directory while scanning installed packs: %s", e);
        }
        return hashMap;
    }

    /* renamed from: c */
    public final Map<String, Long> m633c() {
        HashMap hashMap = new HashMap();
        for (String str : m634b().keySet()) {
            hashMap.put(str, Long.valueOf(m615u(str)));
        }
        return hashMap;
    }

    /* renamed from: d */
    public final AssetPackLocation m632d(String str) throws IOException {
        String e = m631e(str);
        if (e == null) {
            return null;
        }
        File file = new File(e, "assets");
        if (file.isDirectory()) {
            return AssetPackLocation.m684b(e, file.getCanonicalPath());
        }
        f262a.m442b("Failed to find assets directory: %s", file);
        return null;
    }

    /* renamed from: e */
    final String m631e(String str) throws IOException {
        int length;
        File file = new File(m637O(), str);
        if (!file.exists()) {
            f262a.m443a("Pack not found with pack name: %s", str);
            return null;
        }
        File file2 = new File(file, String.valueOf(this.f266e.m524a()));
        if (!file2.exists()) {
            f262a.m443a("Pack not found with pack name: %s app version: %s", str, Integer.valueOf(this.f266e.m524a()));
            return null;
        }
        File[] listFiles = file2.listFiles();
        if (listFiles == null || (length = listFiles.length) == 0) {
            f262a.m443a("No pack version found for pack name: %s app version: %s", str, Integer.valueOf(this.f266e.m524a()));
            return null;
        } else if (length <= 1) {
            return listFiles[0].getCanonicalPath();
        } else {
            f262a.m442b("Multiple pack versions found for pack name: %s app version: %s", str, Integer.valueOf(this.f266e.m524a()));
            return null;
        }
    }

    /* renamed from: f */
    public final File m630f(String str, int i, long j) {
        return new File(m648D(str, i), String.valueOf(j));
    }

    /* renamed from: g */
    public final File m629g(String str, int i, long j) {
        return new File(m630f(str, i, j), "_metadata");
    }

    /* renamed from: h */
    public final File m628h(String str, int i, long j, String str2) {
        return new File(new File(new File(m639M(str, i, j), "_slices"), "_unverified"), str2);
    }

    /* renamed from: i */
    public final File m627i(String str, int i, long j, String str2) {
        return new File(new File(new File(m639M(str, i, j), "_slices"), "_verified"), str2);
    }

    /* renamed from: j */
    public final File m626j(String str, int i, long j) {
        return new File(m639M(str, i, j), "_packs");
    }

    /* renamed from: k */
    public final int m625k(String str, int i, long j) throws IOException {
        File F = m646F(str, i, j);
        if (!F.exists()) {
            return 0;
        }
        Properties properties = new Properties();
        FileInputStream fileInputStream = new FileInputStream(F);
        try {
            properties.load(fileInputStream);
            fileInputStream.close();
            if (properties.getProperty("numberOfMerges") != null) {
                try {
                    return Integer.parseInt(properties.getProperty("numberOfMerges"));
                } catch (NumberFormatException e) {
                    throw new C1017bk("Merge checkpoint file corrupt.", e);
                }
            } else {
                throw new C1017bk("Merge checkpoint file corrupt.");
            }
        } catch (Throwable th) {
            try {
                fileInputStream.close();
            } catch (Throwable th2) {
                C1148bz.m342a(th, th2);
            }
            throw th;
        }
    }

    /* renamed from: l */
    public final void m624l(String str, int i, long j, int i2) throws IOException {
        File F = m646F(str, i, j);
        Properties properties = new Properties();
        properties.put("numberOfMerges", String.valueOf(i2));
        F.getParentFile().mkdirs();
        F.createNewFile();
        FileOutputStream fileOutputStream = new FileOutputStream(F);
        properties.store(fileOutputStream, (String) null);
        fileOutputStream.close();
    }

    /* renamed from: m */
    public final File m623m(String str, int i, long j, String str2) {
        return new File(m621o(str, i, j, str2), "checkpoint.dat");
    }

    /* renamed from: n */
    public final File m622n(String str, int i, long j, String str2) {
        return new File(m621o(str, i, j, str2), "checkpoint_ext.dat");
    }

    /* renamed from: o */
    public final File m621o(String str, int i, long j, String str2) {
        return new File(m620p(str, i, j), str2);
    }

    /* renamed from: p */
    public final File m620p(String str, int i, long j) {
        return new File(new File(m639M(str, i, j), "_slices"), "_metadata");
    }

    /* renamed from: q */
    public final boolean m619q(String str) {
        if (!m647E(str).exists()) {
            return true;
        }
        return m636P(m647E(str));
    }

    /* renamed from: r */
    public final void m618r(String str, int i, long j) {
        File E = m647E(str);
        if (E.exists()) {
            File[] listFiles = E.listFiles();
            for (File file : listFiles) {
                if (!file.getName().equals(String.valueOf(i)) && !file.getName().equals("stale.tmp")) {
                    m636P(file);
                } else if (file.getName().equals(String.valueOf(i))) {
                    File[] listFiles2 = file.listFiles();
                    for (File file2 : listFiles2) {
                        if (!file2.getName().equals(String.valueOf(j))) {
                            m636P(file2);
                        }
                    }
                }
            }
        }
    }

    /* renamed from: s */
    public final void m617s() {
        for (File file : m640L()) {
            if (file.listFiles() != null) {
                m645G(file);
                long J = m642J(file);
                if (this.f266e.m524a() != J) {
                    try {
                        new File(new File(file, String.valueOf(J)), "stale.tmp").createNewFile();
                    } catch (IOException unused) {
                        f262a.m442b("Could not write staleness marker.", new Object[0]);
                    }
                }
                for (File file2 : file.listFiles()) {
                    m645G(file2);
                }
            }
        }
    }

    /* renamed from: t */
    public final int m616t(String str) {
        return (int) m644H(m647E(str));
    }

    /* renamed from: u */
    public final long m615u(String str) {
        return m644H(m648D(str, m616t(str)));
    }

    /* renamed from: v */
    public final void m614v() {
        for (File file : m640L()) {
            if (file.listFiles() != null) {
                File[] listFiles = file.listFiles();
                for (File file2 : listFiles) {
                    File file3 = new File(file2, "stale.tmp");
                    if (file3.exists() && System.currentTimeMillis() - file3.lastModified() > f264c) {
                        m636P(file2);
                    }
                }
            }
        }
    }

    /* renamed from: w */
    public final void m613w() {
        if (m638N().exists()) {
            File[] listFiles = m638N().listFiles();
            for (File file : listFiles) {
                if (System.currentTimeMillis() - file.lastModified() > f263b) {
                    m636P(file);
                } else {
                    m645G(file);
                }
            }
        }
    }

    /* renamed from: x */
    public final void m612x() {
        m636P(m637O());
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0073  */
    /* renamed from: y */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final AssetLocation m611y(String str, String str2) {
        PackageInfo packageInfo;
        ArrayList<String> arrayList;
        String str3;
        String str4;
        try {
            packageInfo = this.f265d.getPackageManager().getPackageInfo(this.f265d.getPackageName(), 0);
        } catch (PackageManager.NameNotFoundException unused) {
            f262a.m442b("Could not find PackageInfo.", new Object[0]);
            packageInfo = null;
        }
        if (packageInfo == null) {
            arrayList = null;
        } else {
            arrayList = new ArrayList();
            if (Build.VERSION.SDK_INT < 21) {
                arrayList.add(packageInfo.applicationInfo.sourceDir);
            } else {
                if (packageInfo.splitNames == null || packageInfo.applicationInfo.splitSourceDirs == null) {
                    f262a.m443a("No splits present for package %s.", str);
                } else {
                    int binarySearch = Arrays.binarySearch(packageInfo.splitNames, str);
                    if (binarySearch < 0) {
                        f262a.m443a("Asset Pack '%s' is not installed.", str);
                    } else {
                        str3 = packageInfo.applicationInfo.splitSourceDirs[binarySearch];
                        if (str3 != null) {
                            arrayList.add(packageInfo.applicationInfo.sourceDir);
                            str4 = "config.";
                        } else {
                            arrayList.add(str3);
                            str4 = String.valueOf(str).concat(".config.");
                        }
                        arrayList.addAll(m641K(packageInfo, str4));
                    }
                }
                str3 = null;
                if (str3 != null) {
                }
                arrayList.addAll(m641K(packageInfo, str4));
            }
        }
        if (arrayList == null) {
            return null;
        }
        String path = new File("assets", str2).getPath();
        for (String str5 : arrayList) {
            try {
                AssetLocation b = C1044ck.m545b(str5, path);
                if (b != null) {
                    return b;
                }
            } catch (IOException e) {
                f262a.m441c(e, "Failed to parse APK file '%s' looking for asset '%s'.", str5, str2);
                return null;
            }
        }
        f262a.m443a("The asset %s is not present in Asset Pack %s. Searched in APKs: %s", str2, str, arrayList);
        return null;
    }

    /* renamed from: z */
    public final AssetLocation m610z(String str, String str2, AssetPackLocation assetPackLocation) {
        File file = new File(assetPackLocation.assetsPath(), str2);
        if (file.exists()) {
            return AssetLocation.m686a(file.getPath(), 0L, file.length());
        }
        f262a.m443a("The asset %s is not present in Asset Pack %s. Searched in folder: %s", str2, str, assetPackLocation.assetsPath());
        return null;
    }
}
