package com.google.android.play.core.assetpacks;

import java.io.IOException;
import java.io.InputStream;
/* renamed from: com.google.android.play.core.assetpacks.av */
/* loaded from: classes.dex */
final class C1001av extends InputStream {

    /* renamed from: a */
    private final InputStream f267a;

    /* renamed from: b */
    private long f268b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1001av(InputStream inputStream, long j) {
        this.f267a = inputStream;
        this.f268b = j;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        super.close();
        this.f267a.close();
        this.f268b = 0L;
    }

    @Override // java.io.InputStream
    public final int read() throws IOException {
        long j = this.f268b;
        if (j <= 0) {
            return -1;
        }
        this.f268b = j - 1;
        return this.f267a.read();
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        long j = this.f268b;
        if (j <= 0) {
            return -1;
        }
        int read = this.f267a.read(bArr, i, (int) Math.min(i2, j));
        if (read != -1) {
            this.f268b -= read;
        }
        return read;
    }
}
