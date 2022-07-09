package com.google.android.play.core.splitcompat;

import android.content.Context;
import android.content.pm.PackageManager;
import android.util.Log;
import com.google.android.play.core.internal.C1119ax;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
/* renamed from: com.google.android.play.core.splitcompat.c */
/* loaded from: classes.dex */
public final class C1194c {

    /* renamed from: a */
    private final long f713a;

    /* renamed from: b */
    private final Context f714b;

    /* renamed from: c */
    private File f715c;

    public C1194c(Context context) throws PackageManager.NameNotFoundException {
        this.f714b = context;
        this.f713a = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
    }

    /* renamed from: o */
    public static void m220o(File file) throws IOException {
        File[] listFiles;
        if (file.isDirectory() && (listFiles = file.listFiles()) != null) {
            for (File file2 : listFiles) {
                m220o(file2);
            }
        }
        if (file.exists() && !file.delete()) {
            throw new IOException(String.format("Failed to delete '%s'", file.getAbsolutePath()));
        }
    }

    /* renamed from: p */
    private final File m219p() throws IOException {
        File file = new File(m218q(), "verified-splits");
        m212w(file);
        return file;
    }

    /* renamed from: q */
    private final File m218q() throws IOException {
        File file = new File(m217r(), Long.toString(this.f713a));
        m212w(file);
        return file;
    }

    /* renamed from: r */
    private final File m217r() throws IOException {
        if (this.f715c == null) {
            Context context = this.f714b;
            if (context != null) {
                this.f715c = context.getFilesDir();
            } else {
                throw new IllegalStateException("context must be non-null to populate null filesDir");
            }
        }
        File file = new File(this.f715c, "splitcompat");
        m212w(file);
        return file;
    }

    /* renamed from: s */
    private final File m216s() throws IOException {
        File file = new File(m218q(), "native-libraries");
        m212w(file);
        return file;
    }

    /* renamed from: t */
    private final File m215t(String str) throws IOException {
        File u = m214u(m216s(), str);
        m212w(u);
        return u;
    }

    /* renamed from: u */
    private static File m214u(File file, String str) throws IOException {
        File file2 = new File(file, str);
        if (file2.getCanonicalPath().startsWith(file.getCanonicalPath())) {
            return file2;
        }
        throw new IllegalArgumentException("split ID cannot be placed in target directory");
    }

    /* renamed from: v */
    private static String m213v(String str) {
        return String.valueOf(str).concat(".apk");
    }

    /* renamed from: w */
    private static void m212w(File file) throws IOException {
        if (!file.exists()) {
            file.mkdirs();
            if (!file.isDirectory()) {
                String valueOf = String.valueOf(file.getAbsolutePath());
                throw new IOException(valueOf.length() != 0 ? "Unable to create directory: ".concat(valueOf) : new String("Unable to create directory: "));
            }
        } else if (!file.isDirectory()) {
            throw new IllegalArgumentException("File input must be directory when it exists.");
        }
    }

    /* renamed from: a */
    public final void m234a() throws IOException {
        File r = m217r();
        String[] list = r.list();
        if (list != null) {
            for (String str : list) {
                if (!str.equals(Long.toString(this.f713a))) {
                    File file = new File(r, str);
                    String valueOf = String.valueOf(file);
                    long j = this.f713a;
                    StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 118);
                    sb.append("FileStorage: removing directory for different version code (directory = ");
                    sb.append(valueOf);
                    sb.append(", current version code = ");
                    sb.append(j);
                    sb.append(")");
                    Log.d("SplitCompat", sb.toString());
                    m220o(file);
                }
            }
        }
    }

    /* renamed from: b */
    public final File m233b(String str) throws IOException {
        return m214u(m228g(), m213v(str));
    }

    /* renamed from: c */
    public final File m232c(String str) throws IOException {
        return m214u(m219p(), m213v(str));
    }

    /* renamed from: d */
    public final File m231d(File file) throws IOException {
        return m214u(m219p(), file.getName());
    }

    /* renamed from: e */
    public final File m230e(String str, String str2) throws IOException {
        return m214u(m215t(str), str2);
    }

    /* renamed from: f */
    public final File m229f() throws IOException {
        return new File(m218q(), "lock.tmp");
    }

    /* renamed from: g */
    public final File m228g() throws IOException {
        File file = new File(m218q(), "unverified-splits");
        m212w(file);
        return file;
    }

    /* renamed from: h */
    public final File m227h(String str) throws IOException {
        File file = new File(m218q(), "dex");
        m212w(file);
        File u = m214u(file, str);
        m212w(u);
        return u;
    }

    /* renamed from: i */
    public final Set<C1208q> m226i() throws IOException {
        File p = m219p();
        HashSet hashSet = new HashSet();
        File[] listFiles = p.listFiles();
        if (listFiles != null) {
            for (File file : listFiles) {
                if (file.isFile() && file.getName().endsWith(".apk")) {
                    String name = file.getName();
                    hashSet.add(new C1208q(file, name.substring(0, name.length() - 4)));
                }
            }
        }
        return hashSet;
    }

    /* renamed from: j */
    public final List<String> m225j() throws IOException {
        ArrayList arrayList = new ArrayList();
        File[] listFiles = m216s().listFiles();
        if (listFiles != null) {
            for (File file : listFiles) {
                if (file.isDirectory()) {
                    arrayList.add(file.getName());
                }
            }
        }
        return arrayList;
    }

    /* renamed from: k */
    public final void m224k(String str) throws IOException {
        m220o(m215t(str));
    }

    /* renamed from: l */
    public final void m223l(File file) throws IOException {
        C1119ax.m402c(file.getParentFile().getParentFile().equals(m216s()), "File to remove is not a native library");
        m220o(file);
    }

    /* renamed from: m */
    public final Set<File> m222m(String str) throws IOException {
        HashSet hashSet = new HashSet();
        File[] listFiles = m215t(str).listFiles();
        if (listFiles != null) {
            for (File file : listFiles) {
                if (file.isFile()) {
                    hashSet.add(file);
                }
            }
        }
        return hashSet;
    }

    /* renamed from: n */
    public final void m221n(String str) throws IOException {
        m220o(m232c(str));
    }
}
