package com.google.android.play.core.assetpacks;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.android.play.core.internal.AbstractC1171t;
import com.google.android.play.core.internal.C1102ag;
import com.google.android.play.core.internal.C1112aq;
import com.google.android.play.core.internal.C1138bp;
import com.google.android.play.core.splitcompat.C1207p;
import com.google.android.play.core.tasks.C1277i;
import com.google.android.play.core.tasks.OnSuccessListener;
import com.google.android.play.core.tasks.Task;
import com.google.android.play.core.tasks.Tasks;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.play.core.assetpacks.an */
/* loaded from: classes.dex */
public final class C0993an implements AbstractC1082t {

    /* renamed from: a */
    private static final C1102ag f237a = new C1102ag("AssetPackServiceImpl");

    /* renamed from: b */
    private static final Intent f238b = new Intent("com.google.android.play.core.assetmoduleservice.BIND_ASSET_MODULE_SERVICE").setPackage("com.android.vending");

    /* renamed from: c */
    private final String f239c;

    /* renamed from: d */
    private final C1021bo f240d;

    /* renamed from: e */
    private C1112aq<AbstractC1171t> f241e;

    /* renamed from: f */
    private C1112aq<AbstractC1171t> f242f;

    /* renamed from: g */
    private final AtomicBoolean f243g = new AtomicBoolean();

    public C0993an(Context context, C1021bo boVar) {
        this.f239c = context.getPackageName();
        this.f240d = boVar;
        if (C1138bp.m350a(context)) {
            Context c = C1207p.m201c(context);
            C1102ag agVar = f237a;
            Intent intent = f238b;
            this.f241e = new C1112aq<>(c, agVar, "AssetPackService", intent, C1083u.f572b);
            this.f242f = new C1112aq<>(C1207p.m201c(context), agVar, "AssetPackService-keepAlive", intent, C1083u.f571a);
        }
        f237a.m443a("AssetPackService initiated.", new Object[0]);
    }

    /* renamed from: A */
    public static Bundle m673A(int i, String str) {
        Bundle B = m672B(i);
        B.putString("module_name", str);
        return B;
    }

    /* renamed from: B */
    public static Bundle m672B(int i) {
        Bundle bundle = new Bundle();
        bundle.putInt("session_id", i);
        return bundle;
    }

    /* renamed from: C */
    public static Bundle m671C() {
        Bundle bundle = new Bundle();
        bundle.putInt("playcore_version_code", 11000);
        ArrayList<Integer> arrayList = new ArrayList<>();
        arrayList.add(0);
        arrayList.add(1);
        bundle.putIntegerArrayList("supported_compression_formats", arrayList);
        bundle.putIntegerArrayList("supported_patch_formats", new ArrayList<>());
        return bundle;
    }

    /* renamed from: k */
    public static /* synthetic */ ArrayList m670k(Collection collection) {
        ArrayList arrayList = new ArrayList(collection.size());
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            Bundle bundle = new Bundle();
            bundle.putString("module_name", (String) it.next());
            arrayList.add(bundle);
        }
        return arrayList;
    }

    /* renamed from: m */
    public static /* synthetic */ Bundle m668m(Map map) {
        Bundle C = m671C();
        ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
        for (Map.Entry entry : map.entrySet()) {
            Bundle bundle = new Bundle();
            bundle.putString("installed_asset_module_name", (String) entry.getKey());
            bundle.putLong("installed_asset_module_version", ((Long) entry.getValue()).longValue());
            arrayList.add(bundle);
        }
        C.putParcelableArrayList("installed_asset_module", arrayList);
        return C;
    }

    /* renamed from: r */
    public static /* synthetic */ Bundle m663r(int i, String str, String str2, int i2) {
        Bundle A = m673A(i, str);
        A.putString("slice_id", str2);
        A.putInt("chunk_number", i2);
        return A;
    }

    /* renamed from: v */
    public static /* synthetic */ List m659v(C0993an anVar, List list) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            AssetPackState next = AssetPackStates.m680b((Bundle) it.next(), anVar.f240d).packStates().values().iterator().next();
            if (next == null) {
                f237a.m442b("onGetSessionStates: Bundle contained no pack.", new Object[0]);
            }
            if (C1044ck.m541f(next.status())) {
                arrayList.add(next.name());
            }
        }
        return arrayList;
    }

    /* renamed from: y */
    public final void m656y(int i, String str, int i2) {
        if (this.f241e != null) {
            f237a.m440d("notifyModuleCompleted", new Object[0]);
            C1277i iVar = new C1277i();
            this.f241e.m433a(new C0982ac(this, iVar, i, str, iVar, i2));
            return;
        }
        throw new C1017bk("The Play Store app is not installed or is an unofficial version.", i);
    }

    /* renamed from: z */
    private static <T> Task<T> m655z() {
        f237a.m442b("onError(%d)", -11);
        return Tasks.m92b(new AssetPackException(-11));
    }

    @Override // com.google.android.play.core.assetpacks.AbstractC1082t
    /* renamed from: a */
    public final Task<AssetPackStates> mo468a(List<String> list, List<String> list2, Map<String, Long> map) {
        if (this.f241e == null) {
            return m655z();
        }
        f237a.m440d("startDownload(%s)", list2);
        C1277i iVar = new C1277i();
        this.f241e.m433a(new C1086x(this, iVar, list2, map, iVar, list));
        iVar.m78c().addOnSuccessListener(new OnSuccessListener(this) { // from class: com.google.android.play.core.assetpacks.v

            /* renamed from: a */
            private final C0993an f574a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f574a = this;
            }

            @Override // com.google.android.play.core.tasks.OnSuccessListener
            public final void onSuccess(Object obj) {
                AssetPackStates assetPackStates = (AssetPackStates) obj;
                this.f574a.mo459j();
            }
        });
        return iVar.m78c();
    }

    @Override // com.google.android.play.core.assetpacks.AbstractC1082t
    /* renamed from: b */
    public final void mo467b(List<String> list) {
        if (this.f241e != null) {
            f237a.m440d("cancelDownloads(%s)", list);
            C1277i iVar = new C1277i();
            this.f241e.m433a(new C1087y(this, iVar, list, iVar));
        }
    }

    @Override // com.google.android.play.core.assetpacks.AbstractC1082t
    /* renamed from: c */
    public final Task<List<String>> mo466c(Map<String, Long> map) {
        if (this.f241e == null) {
            return m655z();
        }
        f237a.m440d("syncPacks", new Object[0]);
        C1277i iVar = new C1277i();
        this.f241e.m433a(new C1088z(this, iVar, map, iVar));
        return iVar.m78c();
    }

    @Override // com.google.android.play.core.assetpacks.AbstractC1082t
    /* renamed from: d */
    public final Task<AssetPackStates> mo465d(List<String> list, AbstractC0998as asVar, Map<String, Long> map) {
        if (this.f241e == null) {
            return m655z();
        }
        f237a.m440d("getPackStates(%s)", list);
        C1277i iVar = new C1277i();
        this.f241e.m433a(new C0980aa(this, iVar, list, map, iVar, asVar));
        return iVar.m78c();
    }

    @Override // com.google.android.play.core.assetpacks.AbstractC1082t
    /* renamed from: e */
    public final void mo464e(int i, String str, String str2, int i2) {
        if (this.f241e != null) {
            f237a.m440d("notifyChunkTransferred", new Object[0]);
            C1277i iVar = new C1277i();
            this.f241e.m433a(new C0981ab(this, iVar, i, str, str2, i2, iVar));
            return;
        }
        throw new C1017bk("The Play Store app is not installed or is an unofficial version.", i);
    }

    @Override // com.google.android.play.core.assetpacks.AbstractC1082t
    /* renamed from: f */
    public final void mo463f(int i, String str) {
        m656y(i, str, 10);
    }

    @Override // com.google.android.play.core.assetpacks.AbstractC1082t
    /* renamed from: g */
    public final void mo462g(int i) {
        if (this.f241e != null) {
            f237a.m440d("notifySessionFailed", new Object[0]);
            C1277i iVar = new C1277i();
            this.f241e.m433a(new C0983ad(this, iVar, i, iVar));
            return;
        }
        throw new C1017bk("The Play Store app is not installed or is an unofficial version.", i);
    }

    @Override // com.google.android.play.core.assetpacks.AbstractC1082t
    /* renamed from: h */
    public final Task<ParcelFileDescriptor> mo461h(int i, String str, String str2, int i2) {
        if (this.f241e == null) {
            return m655z();
        }
        f237a.m440d("getChunkFileDescriptor(%s, %s, %d, session=%d)", str, str2, Integer.valueOf(i2), Integer.valueOf(i));
        C1277i iVar = new C1277i();
        this.f241e.m433a(new C0984ae(this, iVar, i, str, str2, i2, iVar));
        return iVar.m78c();
    }

    @Override // com.google.android.play.core.assetpacks.AbstractC1082t
    /* renamed from: i */
    public final void mo460i(String str) {
        if (this.f241e != null) {
            f237a.m440d("removePack(%s)", str);
            C1277i iVar = new C1277i();
            this.f241e.m433a(new C1085w(this, iVar, str, iVar));
        }
    }

    @Override // com.google.android.play.core.assetpacks.AbstractC1082t
    /* renamed from: j */
    public final synchronized void mo459j() {
        if (this.f242f == null) {
            f237a.m439e("Keep alive connection manager is not initialized.", new Object[0]);
            return;
        }
        C1102ag agVar = f237a;
        agVar.m440d("keepAlive", new Object[0]);
        if (!this.f243g.compareAndSet(false, true)) {
            agVar.m440d("Service is already kept alive.", new Object[0]);
            return;
        }
        C1277i iVar = new C1277i();
        this.f242f.m433a(new C0985af(this, iVar, iVar));
    }
}
