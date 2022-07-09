package com.google.android.play.core.assetpacks;

import java.util.Arrays;
/* renamed from: com.google.android.play.core.assetpacks.de */
/* loaded from: classes.dex */
final class C1065de {

    /* renamed from: a */
    private final String f521a;

    /* renamed from: b */
    private final long f522b;

    /* renamed from: c */
    private final int f523c;

    /* renamed from: d */
    private final boolean f524d;

    /* renamed from: e */
    private final boolean f525e;

    /* renamed from: f */
    private final byte[] f526f;

    C1065de() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1065de(String str, long j, int i, boolean z, boolean z2, byte[] bArr) {
        this();
        this.f521a = str;
        this.f522b = j;
        this.f523c = i;
        this.f524d = z;
        this.f525e = z2;
        this.f526f = bArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static C1065de m498a(String str, long j, int i, boolean z, byte[] bArr, boolean z2) {
        return new C1065de(str, j, i, z, z2, bArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final boolean m497b() {
        if (m495d() == null) {
            return false;
        }
        return m495d().endsWith("/");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public final boolean m496c() {
        return m493f() == 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public String m495d() {
        return this.f521a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public long m494e() {
        return this.f522b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof C1065de) {
            C1065de deVar = (C1065de) obj;
            String str = this.f521a;
            if (str != null ? str.equals(deVar.m495d()) : deVar.m495d() == null) {
                if (this.f522b == deVar.m494e() && this.f523c == deVar.m493f() && this.f524d == deVar.m492g() && this.f525e == deVar.m491h()) {
                    if (Arrays.equals(this.f526f, deVar instanceof C1065de ? deVar.f526f : deVar.m490i())) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public int m493f() {
        return this.f523c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public boolean m492g() {
        return this.f524d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h */
    public boolean m491h() {
        return this.f525e;
    }

    public int hashCode() {
        String str = this.f521a;
        int hashCode = str == null ? 0 : str.hashCode();
        long j = this.f522b;
        int i = 1237;
        int i2 = (((((((hashCode ^ 1000003) * 1000003) ^ ((int) (j ^ (j >>> 32)))) * 1000003) ^ this.f523c) * 1000003) ^ (true != this.f524d ? 1237 : 1231)) * 1000003;
        if (true == this.f525e) {
            i = 1231;
        }
        return ((i2 ^ i) * 1000003) ^ Arrays.hashCode(this.f526f);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: i */
    public byte[] m490i() {
        return this.f526f;
    }

    public String toString() {
        String str = this.f521a;
        long j = this.f522b;
        int i = this.f523c;
        boolean z = this.f524d;
        boolean z2 = this.f525e;
        String arrays = Arrays.toString(this.f526f);
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 126 + String.valueOf(arrays).length());
        sb.append("ZipEntry{name=");
        sb.append(str);
        sb.append(", size=");
        sb.append(j);
        sb.append(", compressionMethod=");
        sb.append(i);
        sb.append(", isPartial=");
        sb.append(z);
        sb.append(", isEndOfArchive=");
        sb.append(z2);
        sb.append(", headerBytes=");
        sb.append(arrays);
        sb.append("}");
        return sb.toString();
    }
}
