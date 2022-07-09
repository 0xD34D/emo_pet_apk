package com.google.android.play.core.assetpacks;

import android.os.ParcelFileDescriptor;
import com.google.android.play.core.tasks.Task;
import java.util.List;
import java.util.Map;
/* renamed from: com.google.android.play.core.assetpacks.t */
/* loaded from: classes.dex */
interface AbstractC1082t {
    /* renamed from: a */
    Task<AssetPackStates> mo468a(List<String> list, List<String> list2, Map<String, Long> map);

    /* renamed from: b */
    void mo467b(List<String> list);

    /* renamed from: c */
    Task<List<String>> mo466c(Map<String, Long> map);

    /* renamed from: d */
    Task<AssetPackStates> mo465d(List<String> list, AbstractC0998as asVar, Map<String, Long> map);

    /* renamed from: e */
    void mo464e(int i, String str, String str2, int i2);

    /* renamed from: f */
    void mo463f(int i, String str);

    /* renamed from: g */
    void mo462g(int i);

    /* renamed from: h */
    Task<ParcelFileDescriptor> mo461h(int i, String str, String str2, int i2);

    /* renamed from: i */
    void mo460i(String str);

    /* renamed from: j */
    void mo459j();
}
