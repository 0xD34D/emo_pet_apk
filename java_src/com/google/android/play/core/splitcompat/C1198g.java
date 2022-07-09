package com.google.android.play.core.splitcompat;

import android.util.Log;
import com.google.android.play.core.internal.C1148bz;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Set;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.play.core.splitcompat.g */
/* loaded from: classes.dex */
public final class C1198g implements AbstractC1200i {

    /* renamed from: a */
    final /* synthetic */ Set f724a;

    /* renamed from: b */
    final /* synthetic */ C1208q f725b;

    /* renamed from: c */
    final /* synthetic */ ZipFile f726c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1198g(Set set, C1208q qVar, ZipFile zipFile) {
        this.f724a = set;
        this.f725b = qVar;
        this.f726c = zipFile;
    }

    @Override // com.google.android.play.core.splitcompat.AbstractC1200i
    /* renamed from: a */
    public final void mo210a(C1201j jVar, File file, boolean z) throws IOException {
        this.f724a.add(file);
        if (!z) {
            Log.i("SplitCompat", String.format("NativeLibraryExtractor: split '%s' has native library '%s' that does not exist; extracting from '%s!%s' to '%s'", this.f725b.m199b(), jVar.f727a, this.f725b.m200a().getAbsolutePath(), jVar.f728b.getName(), file.getAbsolutePath()));
            ZipFile zipFile = this.f726c;
            ZipEntry zipEntry = jVar.f728b;
            int i = C1202k.f729a;
            byte[] bArr = new byte[4096];
            InputStream inputStream = zipFile.getInputStream(zipEntry);
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(file);
                while (true) {
                    int read = inputStream.read(bArr);
                    if (read <= 0) {
                        break;
                    }
                    fileOutputStream.write(bArr, 0, read);
                }
                fileOutputStream.close();
                if (inputStream != null) {
                    inputStream.close();
                }
            } catch (Throwable th) {
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (Throwable th2) {
                        C1148bz.m342a(th, th2);
                    }
                }
                throw th;
            }
        }
    }
}
