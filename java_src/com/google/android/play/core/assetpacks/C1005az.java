package com.google.android.play.core.assetpacks;

import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.play.core.assetpacks.az */
/* loaded from: classes.dex */
public final class C1005az extends AssetPackState {

    /* renamed from: a */
    private final String f278a;

    /* renamed from: b */
    private final int f279b;

    /* renamed from: c */
    private final int f280c;

    /* renamed from: d */
    private final long f281d;

    /* renamed from: e */
    private final long f282e;

    /* renamed from: f */
    private final int f283f;

    /* renamed from: g */
    private final int f284g;

    /* renamed from: h */
    private final String f285h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1005az(String str, int i, int i2, long j, long j2, int i3, int i4, String str2) {
        Objects.requireNonNull(str, "Null name");
        this.f278a = str;
        this.f279b = i;
        this.f280c = i2;
        this.f281d = j;
        this.f282e = j2;
        this.f283f = i3;
        this.f284g = i4;
        Objects.requireNonNull(str2, "Null versionTag");
        this.f285h = str2;
    }

    @Override // com.google.android.play.core.assetpacks.AssetPackState
    /* renamed from: a */
    public final int mo608a() {
        return this.f284g;
    }

    @Override // com.google.android.play.core.assetpacks.AssetPackState
    /* renamed from: b */
    public final String mo607b() {
        return this.f285h;
    }

    @Override // com.google.android.play.core.assetpacks.AssetPackState
    public final long bytesDownloaded() {
        return this.f281d;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof AssetPackState) {
            AssetPackState assetPackState = (AssetPackState) obj;
            if (this.f278a.equals(assetPackState.name()) && this.f279b == assetPackState.status() && this.f280c == assetPackState.errorCode() && this.f281d == assetPackState.bytesDownloaded() && this.f282e == assetPackState.totalBytesToDownload() && this.f283f == assetPackState.transferProgressPercentage() && this.f284g == assetPackState.mo608a() && this.f285h.equals(assetPackState.mo607b())) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.play.core.assetpacks.AssetPackState
    public final int errorCode() {
        return this.f280c;
    }

    public final int hashCode() {
        int hashCode = this.f278a.hashCode();
        int i = this.f279b;
        int i2 = this.f280c;
        long j = this.f281d;
        long j2 = this.f282e;
        return ((((((((((((((hashCode ^ 1000003) * 1000003) ^ i) * 1000003) ^ i2) * 1000003) ^ ((int) ((j >>> 32) ^ j))) * 1000003) ^ ((int) ((j2 >>> 32) ^ j2))) * 1000003) ^ this.f283f) * 1000003) ^ this.f284g) * 1000003) ^ this.f285h.hashCode();
    }

    @Override // com.google.android.play.core.assetpacks.AssetPackState
    public final String name() {
        return this.f278a;
    }

    @Override // com.google.android.play.core.assetpacks.AssetPackState
    public final int status() {
        return this.f279b;
    }

    public final String toString() {
        String str = this.f278a;
        int i = this.f279b;
        int i2 = this.f280c;
        long j = this.f281d;
        long j2 = this.f282e;
        int i3 = this.f283f;
        int i4 = this.f284g;
        String str2 = this.f285h;
        StringBuilder sb = new StringBuilder(str.length() + 230 + str2.length());
        sb.append("AssetPackState{name=");
        sb.append(str);
        sb.append(", status=");
        sb.append(i);
        sb.append(", errorCode=");
        sb.append(i2);
        sb.append(", bytesDownloaded=");
        sb.append(j);
        sb.append(", totalBytesToDownload=");
        sb.append(j2);
        sb.append(", transferProgressPercentage=");
        sb.append(i3);
        sb.append(", updateAvailability=");
        sb.append(i4);
        sb.append(", versionTag=");
        sb.append(str2);
        sb.append("}");
        return sb.toString();
    }

    @Override // com.google.android.play.core.assetpacks.AssetPackState
    public final long totalBytesToDownload() {
        return this.f282e;
    }

    @Override // com.google.android.play.core.assetpacks.AssetPackState
    public final int transferProgressPercentage() {
        return this.f283f;
    }
}
