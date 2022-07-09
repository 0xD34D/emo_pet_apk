package com.google.android.play.core.install;

import java.util.Objects;
/* renamed from: com.google.android.play.core.install.a */
/* loaded from: classes.dex */
final class C1093a extends InstallState {

    /* renamed from: a */
    private final int f598a;

    /* renamed from: b */
    private final long f599b;

    /* renamed from: c */
    private final long f600c;

    /* renamed from: d */
    private final int f601d;

    /* renamed from: e */
    private final String f602e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1093a(int i, long j, long j2, int i2, String str) {
        this.f598a = i;
        this.f599b = j;
        this.f600c = j2;
        this.f601d = i2;
        Objects.requireNonNull(str, "Null packageName");
        this.f602e = str;
    }

    @Override // com.google.android.play.core.install.InstallState
    public final long bytesDownloaded() {
        return this.f599b;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof InstallState) {
            InstallState installState = (InstallState) obj;
            if (this.f598a == installState.installStatus() && this.f599b == installState.bytesDownloaded() && this.f600c == installState.totalBytesToDownload() && this.f601d == installState.installErrorCode() && this.f602e.equals(installState.packageName())) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i = this.f598a;
        long j = this.f599b;
        long j2 = this.f600c;
        return ((((((((i ^ 1000003) * 1000003) ^ ((int) (j ^ (j >>> 32)))) * 1000003) ^ ((int) ((j2 >>> 32) ^ j2))) * 1000003) ^ this.f601d) * 1000003) ^ this.f602e.hashCode();
    }

    @Override // com.google.android.play.core.install.InstallState
    public final int installErrorCode() {
        return this.f601d;
    }

    @Override // com.google.android.play.core.install.InstallState
    public final int installStatus() {
        return this.f598a;
    }

    @Override // com.google.android.play.core.install.InstallState
    public final String packageName() {
        return this.f602e;
    }

    public final String toString() {
        int i = this.f598a;
        long j = this.f599b;
        long j2 = this.f600c;
        int i2 = this.f601d;
        String str = this.f602e;
        StringBuilder sb = new StringBuilder(str.length() + 164);
        sb.append("InstallState{installStatus=");
        sb.append(i);
        sb.append(", bytesDownloaded=");
        sb.append(j);
        sb.append(", totalBytesToDownload=");
        sb.append(j2);
        sb.append(", installErrorCode=");
        sb.append(i2);
        sb.append(", packageName=");
        sb.append(str);
        sb.append("}");
        return sb.toString();
    }

    @Override // com.google.android.play.core.install.InstallState
    public final long totalBytesToDownload() {
        return this.f600c;
    }
}
