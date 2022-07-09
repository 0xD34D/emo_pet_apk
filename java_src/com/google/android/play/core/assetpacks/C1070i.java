package com.google.android.play.core.assetpacks;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import androidx.core.app.NotificationCompat;
import com.google.android.play.core.common.C1090a;
import com.google.android.play.core.common.PlayCoreDialogWrapperActivity;
import com.google.android.play.core.internal.AbstractC1150ca;
import com.google.android.play.core.internal.C1102ag;
import com.google.android.play.core.internal.C1160i;
import com.google.android.play.core.splitinstall.C1248p;
import com.google.android.play.core.tasks.C1277i;
import com.google.android.play.core.tasks.Task;
import com.google.android.play.core.tasks.Tasks;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
/* renamed from: com.google.android.play.core.assetpacks.i */
/* loaded from: classes.dex */
public final class C1070i implements AssetPackManager {

    /* renamed from: a */
    private static final C1102ag f533a = new C1102ag("AssetPackManager");

    /* renamed from: b */
    private final C1000au f534b;

    /* renamed from: c */
    private final AbstractC1150ca<AbstractC1082t> f535c;

    /* renamed from: d */
    private final C0997ar f536d;

    /* renamed from: e */
    private final C1248p f537e;

    /* renamed from: f */
    private final C1034ca f538f;

    /* renamed from: g */
    private final C1021bo f539g;

    /* renamed from: h */
    private final C1011be f540h;

    /* renamed from: i */
    private final AbstractC1150ca<Executor> f541i;

    /* renamed from: j */
    private final C1090a f542j;

    /* renamed from: k */
    private final Handler f543k = new Handler(Looper.getMainLooper());

    /* renamed from: l */
    private boolean f544l;

    public C1070i(C1000au auVar, AbstractC1150ca<AbstractC1082t> caVar, C0997ar arVar, C1248p pVar, C1034ca caVar2, C1021bo boVar, C1011be beVar, AbstractC1150ca<Executor> caVar3, C1090a aVar) {
        this.f534b = auVar;
        this.f535c = caVar;
        this.f536d = arVar;
        this.f537e = pVar;
        this.f538f = caVar2;
        this.f539g = boVar;
        this.f540h = beVar;
        this.f541i = caVar3;
        this.f542j = aVar;
    }

    /* renamed from: h */
    private final void m481h() {
        this.f541i.m341a().execute(new RunnableC1066e(this, null));
    }

    /* renamed from: i */
    private final void m480i() {
        this.f541i.m341a().execute(new RunnableC1066e(this));
        this.f544l = true;
    }

    /* renamed from: a */
    public final void m488a(boolean z) {
        boolean j = this.f536d.m263j();
        this.f536d.m268e(z);
        if (z && !j) {
            m481h();
        }
    }

    /* renamed from: b */
    public final int m487b(int i, String str) {
        if (!this.f534b.m635a(str) && i == 4) {
            return 8;
        }
        if (!this.f534b.m635a(str) || i == 4) {
            return i;
        }
        return 4;
    }

    /* renamed from: c */
    public final /* synthetic */ void m486c() {
        this.f534b.m614v();
        this.f534b.m617s();
        this.f534b.m613w();
    }

    @Override // com.google.android.play.core.assetpacks.AssetPackManager
    public final AssetPackStates cancel(List<String> list) {
        Map<String, Integer> h = this.f538f.m572h(list);
        HashMap hashMap = new HashMap();
        for (String str : list) {
            Integer num = h.get(str);
            hashMap.put(str, AssetPackState.m683c(str, num == null ? 0 : num.intValue(), 0, 0L, 0L, 0.0d, 0, ""));
        }
        this.f535c.m341a().mo467b(list);
        return AssetPackStates.m681a(0L, hashMap);
    }

    @Override // com.google.android.play.core.assetpacks.AssetPackManager
    public final void clearListeners() {
        this.f536d.m265h();
    }

    /* renamed from: d */
    public final /* synthetic */ void m485d() {
        Task<List<String>> c = this.f535c.m341a().mo466c(this.f534b.m633c());
        C1000au auVar = this.f534b;
        auVar.getClass();
        c.addOnSuccessListener(this.f541i.m341a(), C1067f.m489a(auVar));
        c.addOnFailureListener(this.f541i.m341a(), C1068g.f530a);
    }

    /* renamed from: f */
    public final /* synthetic */ void m483f(String str, C1277i iVar) {
        if (this.f534b.m619q(str)) {
            iVar.m80a(null);
            this.f535c.m341a().mo460i(str);
            return;
        }
        iVar.m79b(new IOException(String.format("Failed to remove pack %s.", str)));
    }

    @Override // com.google.android.play.core.assetpacks.AssetPackManager
    public final Task<AssetPackStates> fetch(List<String> list) {
        Map<String, Long> c = this.f534b.m633c();
        ArrayList arrayList = new ArrayList(list);
        ArrayList arrayList2 = new ArrayList();
        if (!this.f542j.m455a()) {
            arrayList.removeAll(c.keySet());
            arrayList2.addAll(list);
            arrayList2.removeAll(arrayList);
        }
        if (!arrayList.isEmpty()) {
            return this.f535c.m341a().mo468a(arrayList2, arrayList, c);
        }
        Bundle bundle = new Bundle();
        bundle.putInt("session_id", 0);
        bundle.putInt("error_code", 0);
        for (String str : list) {
            bundle.putInt(C1160i.m326e(NotificationCompat.CATEGORY_STATUS, str), 4);
            bundle.putInt(C1160i.m326e("error_code", str), 0);
            bundle.putLong(C1160i.m326e("total_bytes_to_download", str), 0L);
            bundle.putLong(C1160i.m326e("bytes_downloaded", str), 0L);
        }
        bundle.putStringArrayList("pack_names", new ArrayList<>(list));
        bundle.putLong("total_bytes_to_download", 0L);
        bundle.putLong("bytes_downloaded", 0L);
        return Tasks.m93a(AssetPackStates.m680b(bundle, this.f539g));
    }

    @Override // com.google.android.play.core.assetpacks.AssetPackManager
    public final AssetLocation getAssetLocation(String str, String str2) {
        AssetPackLocation d;
        if (!this.f544l) {
            this.f541i.m341a().execute(new RunnableC1066e(this));
            this.f544l = true;
        }
        if (this.f534b.m635a(str)) {
            try {
                d = this.f534b.m632d(str);
            } catch (IOException unused) {
            }
        } else {
            if (this.f537e.m142a().contains(str)) {
                d = AssetPackLocation.m685a();
            }
            d = null;
        }
        if (d == null) {
            return null;
        }
        if (d.packStorageMethod() == 1) {
            return this.f534b.m611y(str, str2);
        }
        if (d.packStorageMethod() == 0) {
            return this.f534b.m610z(str, str2, d);
        }
        f533a.m443a("The asset %s is not present in Asset Pack %s", str2, str);
        return null;
    }

    @Override // com.google.android.play.core.assetpacks.AssetPackManager
    public final AssetPackLocation getPackLocation(String str) {
        if (!this.f544l) {
            m480i();
        }
        if (this.f534b.m635a(str)) {
            try {
                return this.f534b.m632d(str);
            } catch (IOException unused) {
                return null;
            }
        } else if (this.f537e.m142a().contains(str)) {
            return AssetPackLocation.m685a();
        } else {
            return null;
        }
    }

    @Override // com.google.android.play.core.assetpacks.AssetPackManager
    public final Map<String, AssetPackLocation> getPackLocations() {
        Map<String, AssetPackLocation> b = this.f534b.m634b();
        HashMap hashMap = new HashMap();
        for (String str : this.f537e.m142a()) {
            hashMap.put(str, AssetPackLocation.m685a());
        }
        b.putAll(hashMap);
        return b;
    }

    @Override // com.google.android.play.core.assetpacks.AssetPackManager
    public final Task<AssetPackStates> getPackStates(List<String> list) {
        return this.f535c.m341a().mo465d(list, new AbstractC0998as(this) { // from class: com.google.android.play.core.assetpacks.c

            /* renamed from: a */
            private final C1070i f403a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f403a = this;
            }

            @Override // com.google.android.play.core.assetpacks.AbstractC0998as
            /* renamed from: a */
            public final int mo580a(int i, String str) {
                return this.f403a.m487b(i, str);
            }
        }, this.f534b.m633c());
    }

    @Override // com.google.android.play.core.assetpacks.AssetPackManager
    public final synchronized void registerListener(AssetPackStateUpdateListener assetPackStateUpdateListener) {
        boolean j = this.f536d.m263j();
        this.f536d.m267f(assetPackStateUpdateListener);
        if (!j) {
            m481h();
        }
    }

    @Override // com.google.android.play.core.assetpacks.AssetPackManager
    public final Task<Void> removePack(String str) {
        C1277i iVar = new C1277i();
        this.f541i.m341a().execute(new Runnable(this, str, iVar) { // from class: com.google.android.play.core.assetpacks.d

            /* renamed from: a */
            private final C1070i f510a;

            /* renamed from: b */
            private final String f511b;

            /* renamed from: c */
            private final C1277i f512c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f510a = this;
                this.f511b = str;
                this.f512c = iVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f510a.m483f(this.f511b, this.f512c);
            }
        });
        return iVar.m78c();
    }

    @Override // com.google.android.play.core.assetpacks.AssetPackManager
    public final Task<Integer> showCellularDataConfirmation(Activity activity) {
        if (activity == null) {
            return Tasks.m92b(new AssetPackException(-3));
        }
        if (this.f540h.m597b() == null) {
            return Tasks.m92b(new AssetPackException(-12));
        }
        Intent intent = new Intent(activity, PlayCoreDialogWrapperActivity.class);
        intent.putExtra("confirmation_intent", this.f540h.m597b());
        C1277i iVar = new C1277i();
        intent.putExtra("result_receiver", new ResultReceiverC1069h(this, this.f543k, iVar));
        activity.startActivity(intent);
        return iVar.m78c();
    }

    @Override // com.google.android.play.core.assetpacks.AssetPackManager
    public final void unregisterListener(AssetPackStateUpdateListener assetPackStateUpdateListener) {
        this.f536d.m266g(assetPackStateUpdateListener);
    }
}
