package com.google.android.play.core.assetpacks;

import java.util.Arrays;
/* renamed from: com.google.android.play.core.assetpacks.cm */
/* loaded from: classes.dex */
final class C1046cm {

    /* renamed from: a */
    private byte[] f449a = new byte[4096];

    /* renamed from: b */
    private int f450b;

    /* renamed from: c */
    private long f451c;

    /* renamed from: d */
    private long f452d;

    /* renamed from: e */
    private int f453e;

    /* renamed from: f */
    private int f454f;

    /* renamed from: g */
    private int f455g;

    /* renamed from: h */
    private boolean f456h;

    /* renamed from: i */
    private String f457i;

    public C1046cm() {
        m531d();
    }

    /* renamed from: e */
    private final int m530e(int i, byte[] bArr, int i2, int i3) {
        int i4 = this.f450b;
        if (i4 >= i) {
            return 0;
        }
        int min = Math.min(i3, i - i4);
        System.arraycopy(bArr, i2, this.f449a, this.f450b, min);
        int i5 = this.f450b + min;
        this.f450b = i5;
        if (i5 < i) {
            return -1;
        }
        return min;
    }

    /* renamed from: a */
    public final int m534a(byte[] bArr, int i, int i2) {
        int e = m530e(30, bArr, i, i2);
        if (e == -1) {
            return -1;
        }
        if (this.f451c == -1) {
            long d = C1044ck.m543d(this.f449a, 0);
            this.f451c = d;
            if (d == 67324752) {
                this.f456h = false;
                this.f452d = C1044ck.m543d(this.f449a, 18);
                this.f455g = C1044ck.m542e(this.f449a, 8);
                this.f453e = C1044ck.m542e(this.f449a, 26);
                int e2 = this.f453e + 30 + C1044ck.m542e(this.f449a, 28);
                this.f454f = e2;
                int length = this.f449a.length;
                if (length < e2) {
                    do {
                        length += length;
                    } while (length < e2);
                    this.f449a = Arrays.copyOf(this.f449a, length);
                }
            } else {
                this.f456h = true;
            }
        }
        int e3 = m530e(this.f454f, bArr, i + e, i2 - e);
        if (e3 == -1) {
            return -1;
        }
        int i3 = e + e3;
        if (!this.f456h && this.f457i == null) {
            this.f457i = new String(this.f449a, 30, this.f453e);
        }
        return i3;
    }

    /* renamed from: b */
    public final C1065de m533b() {
        int i = this.f450b;
        int i2 = this.f454f;
        if (i < i2) {
            return C1065de.m498a(this.f457i, this.f452d, this.f455g, true, Arrays.copyOf(this.f449a, i), this.f456h);
        }
        C1065de a = C1065de.m498a(this.f457i, this.f452d, this.f455g, false, Arrays.copyOf(this.f449a, i2), this.f456h);
        m531d();
        return a;
    }

    /* renamed from: c */
    public final int m532c() {
        return this.f454f;
    }

    /* renamed from: d */
    public final void m531d() {
        this.f450b = 0;
        this.f453e = -1;
        this.f451c = -1L;
        this.f456h = false;
        this.f454f = 30;
        this.f452d = -1L;
        this.f455g = -1;
        this.f457i = null;
    }
}
