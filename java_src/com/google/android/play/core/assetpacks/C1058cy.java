package com.google.android.play.core.assetpacks;
/* renamed from: com.google.android.play.core.assetpacks.cy */
/* loaded from: classes.dex */
final class C1058cy {

    /* renamed from: a */
    private final int f497a;

    /* renamed from: b */
    private final String f498b;

    /* renamed from: c */
    private final long f499c;

    /* renamed from: d */
    private final long f500d;

    /* renamed from: e */
    private final int f501e;

    C1058cy() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1058cy(int i, String str, long j, long j2, int i2) {
        this();
        this.f497a = i;
        this.f498b = str;
        this.f499c = j;
        this.f500d = j2;
        this.f501e = i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public int m522a() {
        return this.f497a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public String m521b() {
        return this.f498b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public long m520c() {
        return this.f499c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public long m519d() {
        return this.f500d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public int m518e() {
        return this.f501e;
    }

    public boolean equals(Object obj) {
        String str;
        if (obj == this) {
            return true;
        }
        if (obj instanceof C1058cy) {
            C1058cy cyVar = (C1058cy) obj;
            if (this.f497a == cyVar.m522a() && ((str = this.f498b) != null ? str.equals(cyVar.m521b()) : cyVar.m521b() == null) && this.f499c == cyVar.m520c() && this.f500d == cyVar.m519d() && this.f501e == cyVar.m518e()) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        int i = (this.f497a ^ 1000003) * 1000003;
        String str = this.f498b;
        int hashCode = str == null ? 0 : str.hashCode();
        long j = this.f499c;
        long j2 = this.f500d;
        return ((((((i ^ hashCode) * 1000003) ^ ((int) (j ^ (j >>> 32)))) * 1000003) ^ ((int) ((j2 >>> 32) ^ j2))) * 1000003) ^ this.f501e;
    }

    public String toString() {
        int i = this.f497a;
        String str = this.f498b;
        long j = this.f499c;
        long j2 = this.f500d;
        int i2 = this.f501e;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 157);
        sb.append("SliceCheckpoint{fileExtractionStatus=");
        sb.append(i);
        sb.append(", filePath=");
        sb.append(str);
        sb.append(", fileOffset=");
        sb.append(j);
        sb.append(", remainingBytes=");
        sb.append(j2);
        sb.append(", previousChunk=");
        sb.append(i2);
        sb.append("}");
        return sb.toString();
    }
}
