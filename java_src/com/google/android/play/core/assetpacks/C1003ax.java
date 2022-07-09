package com.google.android.play.core.assetpacks;

import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.play.core.assetpacks.ax */
/* loaded from: classes.dex */
public final class C1003ax extends AssetLocation {

    /* renamed from: a */
    private final String f272a;

    /* renamed from: b */
    private final long f273b;

    /* renamed from: c */
    private final long f274c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1003ax(String str, long j, long j2) {
        Objects.requireNonNull(str, "Null path");
        this.f272a = str;
        this.f273b = j;
        this.f274c = j2;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof AssetLocation) {
            AssetLocation assetLocation = (AssetLocation) obj;
            if (this.f272a.equals(assetLocation.path()) && this.f273b == assetLocation.offset() && this.f274c == assetLocation.size()) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = this.f272a.hashCode();
        long j = this.f273b;
        long j2 = this.f274c;
        return ((((hashCode ^ 1000003) * 1000003) ^ ((int) (j ^ (j >>> 32)))) * 1000003) ^ ((int) ((j2 >>> 32) ^ j2));
    }

    @Override // com.google.android.play.core.assetpacks.AssetLocation
    public final long offset() {
        return this.f273b;
    }

    @Override // com.google.android.play.core.assetpacks.AssetLocation
    public final String path() {
        return this.f272a;
    }

    @Override // com.google.android.play.core.assetpacks.AssetLocation
    public final long size() {
        return this.f274c;
    }

    public final String toString() {
        String str = this.f272a;
        long j = this.f273b;
        long j2 = this.f274c;
        StringBuilder sb = new StringBuilder(str.length() + 76);
        sb.append("AssetLocation{path=");
        sb.append(str);
        sb.append(", offset=");
        sb.append(j);
        sb.append(", size=");
        sb.append(j2);
        sb.append("}");
        return sb.toString();
    }
}
