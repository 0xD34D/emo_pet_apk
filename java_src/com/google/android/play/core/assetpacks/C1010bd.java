package com.google.android.play.core.assetpacks;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.play.core.assetpacks.bd */
/* loaded from: classes.dex */
public final class C1010bd extends FilterInputStream {

    /* renamed from: c */
    private long f296c;

    /* renamed from: a */
    private final C1046cm f294a = new C1046cm();

    /* renamed from: b */
    private byte[] f295b = new byte[4096];

    /* renamed from: d */
    private boolean f297d = false;

    /* renamed from: e */
    private boolean f298e = false;

    public C1010bd(InputStream inputStream) {
        super(inputStream);
    }

    /* renamed from: e */
    private final boolean m600e(int i) throws IOException {
        int f = m599f(this.f295b, 0, i);
        if (f != i) {
            int i2 = i - f;
            if (m599f(this.f295b, f, i2) != i2) {
                this.f294a.m534a(this.f295b, 0, f);
                return false;
            }
        }
        this.f294a.m534a(this.f295b, 0, i);
        return true;
    }

    /* renamed from: f */
    private final int m599f(byte[] bArr, int i, int i2) throws IOException {
        return Math.max(0, super.read(bArr, i, i2));
    }

    /* renamed from: a */
    public final C1065de m604a() throws IOException {
        byte[] bArr;
        if (this.f296c > 0) {
            do {
                bArr = this.f295b;
            } while (read(bArr, 0, bArr.length) != -1);
            if (!this.f297d || this.f298e) {
                return new C1065de(null, -1L, -1, false, false, null);
            }
            if (!m600e(30)) {
                this.f297d = true;
                return this.f294a.m533b();
            }
            C1065de b = this.f294a.m533b();
            if (b.m491h()) {
                this.f298e = true;
                return b;
            } else if (b.m494e() != 4294967295L) {
                int c = this.f294a.m532c() - 30;
                long j = c;
                int length = this.f295b.length;
                if (j > length) {
                    do {
                        length += length;
                    } while (length < j);
                    this.f295b = Arrays.copyOf(this.f295b, length);
                }
                if (!m600e(c)) {
                    this.f297d = true;
                    return this.f294a.m533b();
                }
                C1065de b2 = this.f294a.m533b();
                this.f296c = b2.m494e();
                return b2;
            } else {
                throw new C1017bk("Files bigger than 4GiB are not supported.");
            }
        } else {
            if (!this.f297d) {
            }
            return new C1065de(null, -1L, -1, false, false, null);
        }
    }

    /* renamed from: b */
    public final boolean m603b() {
        return this.f297d;
    }

    /* renamed from: c */
    public final boolean m602c() {
        return this.f298e;
    }

    /* renamed from: d */
    public final long m601d() {
        return this.f296c;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        long j = this.f296c;
        if (j <= 0 || this.f297d) {
            return -1;
        }
        int f = m599f(bArr, i, (int) Math.min(j, i2));
        this.f296c -= f;
        if (f != 0) {
            return f;
        }
        this.f297d = true;
        return 0;
    }
}
