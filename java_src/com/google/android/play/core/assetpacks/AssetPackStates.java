package com.google.android.play.core.assetpacks;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public abstract class AssetPackStates {
    /* renamed from: a */
    public static AssetPackStates m681a(long j, Map<String, AssetPackState> map) {
        return new C1007ba(j, map);
    }

    /* renamed from: b */
    public static AssetPackStates m680b(Bundle bundle, C1021bo boVar) {
        return m679c(bundle, boVar, new ArrayList());
    }

    /* renamed from: c */
    public static AssetPackStates m679c(Bundle bundle, C1021bo boVar, List<String> list) {
        return m677e(bundle, boVar, list, C0999at.f259a);
    }

    /* renamed from: d */
    public static AssetPackStates m678d(Bundle bundle, C1021bo boVar, AbstractC0998as asVar) {
        return m677e(bundle, boVar, new ArrayList(), asVar);
    }

    /* renamed from: e */
    private static AssetPackStates m677e(Bundle bundle, C1021bo boVar, List<String> list, AbstractC0998as asVar) {
        ArrayList<String> stringArrayList = bundle.getStringArrayList("pack_names");
        HashMap hashMap = new HashMap();
        int size = stringArrayList.size();
        for (int i = 0; i < size; i++) {
            String str = stringArrayList.get(i);
            hashMap.put(str, AssetPackState.m682d(bundle, str, boVar, asVar));
        }
        for (String str2 : list) {
            hashMap.put(str2, AssetPackState.m683c(str2, 4, 0, 0L, 0L, 0.0d, 1, ""));
        }
        return m681a(bundle.getLong("total_bytes_to_download"), hashMap);
    }

    public abstract Map<String, AssetPackState> packStates();

    public abstract long totalBytes();
}
