package com.google.android.play.core.assetpacks;
/* loaded from: classes.dex */
public abstract class AssetLocation {
    /* renamed from: a */
    public static AssetLocation m686a(String str, long j, long j2) {
        return new C1003ax(str, j, j2);
    }

    public abstract long offset();

    public abstract String path();

    public abstract long size();
}
