package com.google.android.play.core.assetpacks;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Enumeration;
import java.util.Objects;
/* renamed from: com.google.android.play.core.assetpacks.cl */
/* loaded from: classes.dex */
public final class C1045cl extends InputStream {

    /* renamed from: a */
    private final Enumeration<File> f447a;

    /* renamed from: b */
    private InputStream f448b;

    public C1045cl(Enumeration<File> enumeration) throws IOException {
        this.f447a = enumeration;
        m535a();
    }

    /* renamed from: a */
    final void m535a() throws IOException {
        InputStream inputStream = this.f448b;
        if (inputStream != null) {
            inputStream.close();
        }
        this.f448b = this.f447a.hasMoreElements() ? new FileInputStream(this.f447a.nextElement()) : null;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        super.close();
        InputStream inputStream = this.f448b;
        if (inputStream != null) {
            inputStream.close();
            this.f448b = null;
        }
    }

    @Override // java.io.InputStream
    public final int read() throws IOException {
        while (true) {
            InputStream inputStream = this.f448b;
            if (inputStream == null) {
                return -1;
            }
            int read = inputStream.read();
            if (read != -1) {
                return read;
            }
            m535a();
        }
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        if (this.f448b == null) {
            return -1;
        }
        Objects.requireNonNull(bArr);
        if (i < 0 || i2 < 0 || i2 > bArr.length - i) {
            throw new IndexOutOfBoundsException();
        } else if (i2 == 0) {
            return 0;
        } else {
            do {
                int read = this.f448b.read(bArr, i, i2);
                if (read > 0) {
                    return read;
                }
                m535a();
            } while (this.f448b != null);
            return -1;
        }
    }
}
