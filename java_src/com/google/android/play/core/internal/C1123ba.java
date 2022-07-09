package com.google.android.play.core.internal;

import android.util.Log;
import com.google.android.play.core.splitinstall.C1242k;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.play.core.internal.ba */
/* loaded from: classes.dex */
public final class C1123ba implements AbstractC1118aw {

    /* renamed from: a */
    private final /* synthetic */ int f644a = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1123ba() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1123ba(byte[] bArr) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1123ba(char[] cArr) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1123ba(float[] fArr) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1123ba(int[] iArr) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1123ba(short[] sArr) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1123ba(boolean[] zArr) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1123ba(byte[][] bArr) {
    }

    /* renamed from: c */
    static void m398c(ClassLoader classLoader, Set<File> set) {
        if (!set.isEmpty()) {
            HashSet hashSet = new HashSet();
            for (File file : set) {
                String valueOf = String.valueOf(file.getParentFile().getAbsolutePath());
                Log.d("Splitcompat", valueOf.length() != 0 ? "Adding native library parent directory: ".concat(valueOf) : new String("Adding native library parent directory: "));
                hashSet.add(file.getParentFile());
            }
            C1129bg e = C1130bh.m374e(m396e(classLoader), "nativeLibraryDirectories", File.class);
            hashSet.removeAll(Arrays.asList((File[]) e.m384a()));
            synchronized (C1242k.class) {
                int size = hashSet.size();
                StringBuilder sb = new StringBuilder(30);
                sb.append("Adding directories ");
                sb.append(size);
                Log.d("Splitcompat", sb.toString());
                e.m380e(hashSet);
            }
        }
    }

    /* renamed from: d */
    static boolean m397d(ClassLoader classLoader, File file, File file2, boolean z, AbstractC1121az azVar, String str, AbstractC1120ay ayVar) {
        ArrayList<IOException> arrayList = new ArrayList<>();
        Object e = m396e(classLoader);
        C1129bg e2 = C1130bh.m374e(e, "dexElements", Object.class);
        List<Object> asList = Arrays.asList((Object[]) e2.m384a());
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : asList) {
            arrayList2.add((File) C1130bh.m375d(obj, str, File.class).m384a());
        }
        if (arrayList2.contains(file2)) {
            return true;
        }
        if (z || ayVar.mo385a(e, file2, file)) {
            e2.m381d(Arrays.asList(azVar.mo387a(e, new ArrayList<>(Collections.singleton(file2)), file, arrayList)));
            if (arrayList.isEmpty()) {
                return true;
            }
            C1128bf bfVar = new C1128bf("DexPathList.makeDexElement failed");
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                IOException iOException = arrayList.get(i);
                Log.e("SplitCompat", "DexPathList.makeDexElement failed", iOException);
                C1148bz.m342a(bfVar, iOException);
            }
            C1130bh.m374e(e, "dexElementsSuppressedExceptions", IOException.class).m381d(arrayList);
            throw bfVar;
        }
        String valueOf = String.valueOf(file2.getPath());
        Log.w("SplitCompat", valueOf.length() != 0 ? "Should be optimized ".concat(valueOf) : new String("Should be optimized "));
        return false;
    }

    /* renamed from: e */
    static Object m396e(ClassLoader classLoader) {
        return C1130bh.m375d(classLoader, "pathList", Object.class).m384a();
    }

    /* renamed from: f */
    static AbstractC1121az m395f() {
        return new C1124bb(null);
    }

    /* renamed from: g */
    static AbstractC1120ay m394g() {
        return new C1127be((byte[]) null);
    }

    /* renamed from: h */
    public static void m393h(ClassLoader classLoader, Set<File> set, AbstractC1125bc bcVar) {
        if (!set.isEmpty()) {
            HashSet hashSet = new HashSet();
            for (File file : set) {
                hashSet.add(file.getParentFile());
            }
            Object e = m396e(classLoader);
            C1129bg d = C1130bh.m375d(e, "nativeLibraryDirectories", List.class);
            synchronized (C1242k.class) {
                ArrayList arrayList = new ArrayList((Collection) d.m384a());
                hashSet.removeAll(arrayList);
                arrayList.addAll(hashSet);
                d.m383b(arrayList);
            }
            ArrayList arrayList2 = new ArrayList();
            Object[] a = bcVar.mo386a(e, new ArrayList(hashSet), arrayList2);
            if (!arrayList2.isEmpty()) {
                C1128bf bfVar = new C1128bf("Error in makePathElements");
                int size = arrayList2.size();
                for (int i = 0; i < size; i++) {
                    C1148bz.m342a(bfVar, arrayList2.get(i));
                }
                throw bfVar;
            }
            synchronized (C1242k.class) {
                C1130bh.m374e(e, "nativeLibraryPathElements", Object.class).m380e(Arrays.asList(a));
            }
        }
    }

    /* renamed from: i */
    static AbstractC1121az m392i() {
        return new C1124bb();
    }

    /* renamed from: j */
    static AbstractC1125bc m391j() {
        return new C1126bd(null);
    }

    /* renamed from: k */
    public static boolean m390k(ClassLoader classLoader, File file, File file2, boolean z) {
        return m397d(classLoader, file, file2, z, m392i(), "zip", m394g());
    }

    /* renamed from: l */
    static void m389l(ClassLoader classLoader, Set<File> set) {
        m393h(classLoader, set, new C1126bd());
    }

    /* renamed from: m */
    static boolean m388m(ClassLoader classLoader, File file, File file2, boolean z) {
        return m397d(classLoader, file, file2, z, m392i(), "path", new C1127be());
    }

    @Override // com.google.android.play.core.internal.AbstractC1118aw
    /* renamed from: a */
    public final void mo400a(ClassLoader classLoader, Set set) {
        switch (this.f644a) {
            case 0:
                m398c(classLoader, set);
                return;
            case 1:
                m398c(classLoader, set);
                return;
            case 2:
            case 3:
            case 4:
                m393h(classLoader, set, m391j());
                return;
            case 5:
                m389l(classLoader, set);
                return;
            case 6:
                m389l(classLoader, set);
                return;
            default:
                m389l(classLoader, set);
                return;
        }
    }

    @Override // com.google.android.play.core.internal.AbstractC1118aw
    /* renamed from: b */
    public final boolean mo399b(ClassLoader classLoader, File file, File file2, boolean z) {
        AbstractC1121az f;
        AbstractC1120ay g;
        String str;
        switch (this.f644a) {
            case 0:
            case 1:
                f = m395f();
                g = m394g();
                str = "zip";
                break;
            case 2:
                return m390k(classLoader, file, file2, z);
            case 3:
                return m390k(classLoader, file, file2, z);
            case 4:
                return m390k(classLoader, file, file2, z);
            case 5:
                return m388m(classLoader, file, file2, z);
            case 6:
                return m388m(classLoader, file, file2, z);
            default:
                f = m392i();
                g = new C1127be((char[]) null);
                str = "path";
                break;
        }
        return m397d(classLoader, file, file2, z, f, str, g);
    }
}
