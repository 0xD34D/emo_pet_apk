package com.google.android.play.core.assetpacks;

import android.content.Context;
/* loaded from: classes.dex */
public class AssetPackManagerFactory {
    public static synchronized AssetPackManager getInstance(Context context) {
        AssetPackManager a;
        synchronized (AssetPackManagerFactory.class) {
            a = C1044ck.m537j(context).mo593a();
        }
        return a;
    }
}
