package com.google.android.play.core.splitinstall;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.google.android.play.core.internal.AbstractC1134bl;
import com.google.android.play.core.internal.C1102ag;
import com.google.android.play.core.internal.C1112aq;
import com.google.android.play.core.internal.C1138bp;
import com.google.android.play.core.splitcompat.C1207p;
import com.google.android.play.core.tasks.C1277i;
import com.google.android.play.core.tasks.Task;
import com.google.android.play.core.tasks.Tasks;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.play.core.splitinstall.au */
/* loaded from: classes.dex */
public final class C1230au {

    /* renamed from: b */
    private static final C1102ag f785b = new C1102ag("SplitInstallService");

    /* renamed from: c */
    private static final Intent f786c = new Intent("com.google.android.play.core.splitinstall.BIND_SPLIT_INSTALL_SERVICE").setPackage("com.android.vending");

    /* renamed from: a */
    C1112aq<AbstractC1134bl> f787a;

    /* renamed from: d */
    private final String f788d;

    public C1230au(Context context) {
        this.f788d = context.getPackageName();
        if (C1138bp.m350a(context)) {
            this.f787a = new C1112aq<>(C1207p.m201c(context), f785b, "SplitInstallService", f786c, C1212ac.f758a);
        }
    }

    /* renamed from: i */
    public static /* synthetic */ ArrayList m170i(Collection collection) {
        ArrayList arrayList = new ArrayList(collection.size());
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            Bundle bundle = new Bundle();
            bundle.putString("module_name", (String) it.next());
            arrayList.add(bundle);
        }
        return arrayList;
    }

    /* renamed from: j */
    public static /* synthetic */ ArrayList m169j(Collection collection) {
        ArrayList arrayList = new ArrayList(collection.size());
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            Bundle bundle = new Bundle();
            bundle.putString("language", (String) it.next());
            arrayList.add(bundle);
        }
        return arrayList;
    }

    /* renamed from: l */
    public static /* synthetic */ Bundle m167l() {
        Bundle bundle = new Bundle();
        bundle.putInt("playcore_version_code", 11000);
        return bundle;
    }

    /* renamed from: n */
    private static <T> Task<T> m165n() {
        f785b.m442b("onError(%d)", -14);
        return Tasks.m92b(new SplitInstallException(-14));
    }

    /* renamed from: a */
    public final Task<Integer> m178a(Collection<String> collection, Collection<String> collection2) {
        if (this.f787a == null) {
            return m165n();
        }
        f785b.m440d("startInstall(%s,%s)", collection, collection2);
        C1277i iVar = new C1277i();
        this.f787a.m433a(new C1213ad(this, iVar, collection, collection2, iVar));
        return iVar.m78c();
    }

    /* renamed from: b */
    public final Task<Void> m177b(List<String> list) {
        if (this.f787a == null) {
            return m165n();
        }
        f785b.m440d("deferredUninstall(%s)", list);
        C1277i iVar = new C1277i();
        this.f787a.m433a(new C1214ae(this, iVar, list, iVar));
        return iVar.m78c();
    }

    /* renamed from: c */
    public final Task<Void> m176c(List<String> list) {
        if (this.f787a == null) {
            return m165n();
        }
        f785b.m440d("deferredInstall(%s)", list);
        C1277i iVar = new C1277i();
        this.f787a.m433a(new C1215af(this, iVar, list, iVar));
        return iVar.m78c();
    }

    /* renamed from: d */
    public final Task<Void> m175d(List<String> list) {
        if (this.f787a == null) {
            return m165n();
        }
        f785b.m440d("deferredLanguageInstall(%s)", list);
        C1277i iVar = new C1277i();
        this.f787a.m433a(new C1216ag(this, iVar, list, iVar));
        return iVar.m78c();
    }

    /* renamed from: e */
    public final Task<Void> m174e(List<String> list) {
        if (this.f787a == null) {
            return m165n();
        }
        f785b.m440d("deferredLanguageUninstall(%s)", list);
        C1277i iVar = new C1277i();
        this.f787a.m433a(new C1217ah(this, iVar, list, iVar));
        return iVar.m78c();
    }

    /* renamed from: f */
    public final Task<SplitInstallSessionState> m173f(int i) {
        if (this.f787a == null) {
            return m165n();
        }
        f785b.m440d("getSessionState(%d)", Integer.valueOf(i));
        C1277i iVar = new C1277i();
        this.f787a.m433a(new C1218ai(this, iVar, i, iVar));
        return iVar.m78c();
    }

    /* renamed from: g */
    public final Task<List<SplitInstallSessionState>> m172g() {
        if (this.f787a == null) {
            return m165n();
        }
        f785b.m440d("getSessionStates", new Object[0]);
        C1277i iVar = new C1277i();
        this.f787a.m433a(new C1219aj(this, iVar, iVar));
        return iVar.m78c();
    }

    /* renamed from: h */
    public final Task<Void> m171h(int i) {
        if (this.f787a == null) {
            return m165n();
        }
        f785b.m440d("cancelInstall(%d)", Integer.valueOf(i));
        C1277i iVar = new C1277i();
        this.f787a.m433a(new C1220ak(this, iVar, i, iVar));
        return iVar.m78c();
    }
}
