package com.google.android.play.core.assetpacks;
/* loaded from: classes.dex */
public abstract class AssetPackLocation {

    /* renamed from: a */
    private static final AssetPackLocation f193a = new C1004ay(1, null, null);

    /* renamed from: a */
    public static AssetPackLocation m685a() {
        return f193a;
    }

    /* renamed from: b */
    public static AssetPackLocation m684b(String str, String str2) {
        return new C1004ay(0, str, str2);
    }

    public abstract String assetsPath();

    public abstract int packStorageMethod();

    public abstract String path();
}
