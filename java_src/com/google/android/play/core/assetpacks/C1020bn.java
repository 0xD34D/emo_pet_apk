package com.google.android.play.core.assetpacks;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
/* renamed from: com.google.android.play.core.assetpacks.bn */
/* loaded from: classes.dex */
final class C1020bn extends OutputStream {

    /* renamed from: a */
    private final C1046cm f364a = new C1046cm();

    /* renamed from: b */
    private final File f365b;

    /* renamed from: c */
    private final C1059cz f366c;

    /* renamed from: d */
    private long f367d;

    /* renamed from: e */
    private long f368e;

    /* renamed from: f */
    private FileOutputStream f369f;

    /* renamed from: g */
    private C1065de f370g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1020bn(File file, C1059cz czVar) {
        this.f365b = file;
        this.f366c = czVar;
    }

    @Override // java.io.OutputStream
    public final void write(int i) throws IOException {
        write(new byte[]{(byte) i});
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr) throws IOException {
        write(bArr, 0, bArr.length);
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) throws IOException {
        int i3;
        while (i2 > 0) {
            if (this.f367d == 0 && this.f368e == 0) {
                int a = this.f364a.m534a(bArr, i, i2);
                if (a != -1) {
                    i += a;
                    i2 -= a;
                    C1065de b = this.f364a.m533b();
                    this.f370g = b;
                    if (b.m491h()) {
                        this.f367d = 0L;
                        this.f366c.m505m(this.f370g.m490i(), this.f370g.m490i().length);
                        this.f368e = this.f370g.m490i().length;
                    } else if (!this.f370g.m496c() || this.f370g.m497b()) {
                        byte[] i4 = this.f370g.m490i();
                        this.f366c.m505m(i4, i4.length);
                        this.f367d = this.f370g.m494e();
                    } else {
                        this.f366c.m511g(this.f370g.m490i());
                        File file = new File(this.f365b, this.f370g.m495d());
                        file.getParentFile().mkdirs();
                        this.f367d = this.f370g.m494e();
                        this.f369f = new FileOutputStream(file);
                    }
                } else {
                    return;
                }
            }
            if (!this.f370g.m497b()) {
                if (this.f370g.m491h()) {
                    this.f366c.m509i(this.f368e, bArr, i, i2);
                    this.f368e += i2;
                    i3 = i2;
                } else if (this.f370g.m496c()) {
                    i3 = (int) Math.min(i2, this.f367d);
                    this.f369f.write(bArr, i, i3);
                    long j = this.f367d - i3;
                    this.f367d = j;
                    if (j == 0) {
                        this.f369f.close();
                    }
                } else {
                    i3 = (int) Math.min(i2, this.f367d);
                    this.f366c.m509i((this.f370g.m490i().length + this.f370g.m494e()) - this.f367d, bArr, i, i3);
                    this.f367d -= i3;
                }
                i += i3;
                i2 -= i3;
            }
        }
    }
}
