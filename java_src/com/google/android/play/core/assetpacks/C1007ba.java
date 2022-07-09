package com.google.android.play.core.assetpacks;

import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.play.core.assetpacks.ba */
/* loaded from: classes.dex */
public final class C1007ba extends AssetPackStates {

    /* renamed from: a */
    private final long f289a;

    /* renamed from: b */
    private final Map<String, AssetPackState> f290b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1007ba(long j, Map<String, AssetPackState> map) {
        this.f289a = j;
        this.f290b = map;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof AssetPackStates) {
            AssetPackStates assetPackStates = (AssetPackStates) obj;
            if (this.f289a == assetPackStates.totalBytes() && this.f290b.equals(assetPackStates.packStates())) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        long j = this.f289a;
        return ((((int) (j ^ (j >>> 32))) ^ 1000003) * 1000003) ^ this.f290b.hashCode();
    }

    @Override // com.google.android.play.core.assetpacks.AssetPackStates
    public final Map<String, AssetPackState> packStates() {
        return this.f290b;
    }

    public final String toString() {
        long j = this.f289a;
        String valueOf = String.valueOf(this.f290b);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 61);
        sb.append("AssetPackStates{totalBytes=");
        sb.append(j);
        sb.append(", packStates=");
        sb.append(valueOf);
        sb.append("}");
        return sb.toString();
    }

    @Override // com.google.android.play.core.assetpacks.AssetPackStates
    public final long totalBytes() {
        return this.f289a;
    }
}
