package com.google.android.play.core.assetpacks;

import com.google.android.play.core.internal.AbstractC1140br;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.SequenceInputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.NavigableMap;
import java.util.TreeMap;
/* renamed from: com.google.android.play.core.assetpacks.aw */
/* loaded from: classes.dex */
final class C1002aw extends AbstractC1140br {

    /* renamed from: a */
    private final File f269a;

    /* renamed from: b */
    private final File f270b;

    /* renamed from: c */
    private final NavigableMap<Long, File> f271c = new TreeMap();

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1002aw(File file, File file2) throws IOException {
        this.f269a = file;
        this.f270b = file2;
        List<File> a = C1062db.m502a(file, file2);
        if (!a.isEmpty()) {
            long j = 0;
            for (File file3 : a) {
                this.f271c.put(Long.valueOf(j), file3);
                j += file3.length();
            }
            return;
        }
        throw new C1017bk(String.format("Virtualized slice archive empty for %s, %s", file, file2));
    }

    /* renamed from: d */
    private final InputStream m609d(long j, Long l) throws IOException {
        FileInputStream fileInputStream = new FileInputStream((File) this.f271c.get(l));
        if (fileInputStream.skip(j - l.longValue()) == j - l.longValue()) {
            return fileInputStream;
        }
        throw new C1017bk(String.format("Virtualized slice archive corrupt, could not skip in file with key %s", l));
    }

    @Override // com.google.android.play.core.internal.AbstractC1140br
    /* renamed from: a */
    public final long mo347a() {
        Map.Entry<Long, File> lastEntry = this.f271c.lastEntry();
        return lastEntry.getKey().longValue() + lastEntry.getValue().length();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.play.core.internal.AbstractC1140br
    /* renamed from: b */
    public final InputStream mo346b(long j, long j2) throws IOException {
        if (j < 0 || j2 < 0) {
            throw new C1017bk(String.format("Invalid input parameters %s, %s", Long.valueOf(j), Long.valueOf(j2)));
        }
        long j3 = j + j2;
        if (j3 <= mo347a()) {
            Long floorKey = this.f271c.floorKey(Long.valueOf(j));
            Long floorKey2 = this.f271c.floorKey(Long.valueOf(j3));
            if (floorKey.equals(floorKey2)) {
                return new C1001av(m609d(j, floorKey), j2);
            }
            ArrayList arrayList = new ArrayList();
            arrayList.add(m609d(j, floorKey));
            Collection<File> values = this.f271c.subMap(floorKey, false, floorKey2, false).values();
            if (!values.isEmpty()) {
                arrayList.add(new C1045cl(Collections.enumeration(values)));
            }
            arrayList.add(new C1001av(new FileInputStream((File) this.f271c.get(floorKey2)), j2 - (floorKey2.longValue() - j)));
            return new SequenceInputStream(Collections.enumeration(arrayList));
        }
        throw new C1017bk(String.format("Trying to access archive out of bounds. Archive ends at: %s. Tried accessing: %s", Long.valueOf(mo347a()), Long.valueOf(j3)));
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }
}
