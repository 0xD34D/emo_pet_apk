package com.google.android.play.core.appupdate;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Bundle;
import com.google.android.play.core.common.PlayCoreVersion;
import com.google.android.play.core.install.InstallException;
import com.google.android.play.core.internal.AbstractC1166o;
import com.google.android.play.core.internal.C1102ag;
import com.google.android.play.core.internal.C1112aq;
import com.google.android.play.core.internal.C1138bp;
import com.google.android.play.core.splitcompat.C1207p;
import com.google.android.play.core.tasks.C1277i;
import com.google.android.play.core.tasks.Task;
import com.google.android.play.core.tasks.Tasks;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.play.core.appupdate.o */
/* loaded from: classes.dex */
public final class C0970o {

    /* renamed from: b */
    private static final C1102ag f141b = new C1102ag("AppUpdateService");

    /* renamed from: c */
    private static final Intent f142c = new Intent("com.google.android.play.core.install.BIND_UPDATE_SERVICE").setPackage("com.android.vending");

    /* renamed from: a */
    C1112aq<AbstractC1166o> f143a;

    /* renamed from: d */
    private final String f144d;

    /* renamed from: e */
    private final Context f145e;

    /* renamed from: f */
    private final C0972q f146f;

    public C0970o(Context context, C0972q qVar) {
        this.f144d = context.getPackageName();
        this.f145e = context;
        this.f146f = qVar;
        if (C1138bp.m350a(context)) {
            this.f143a = new C1112aq<>(C1207p.m201c(context), f141b, "AppUpdateService", f142c, C0964i.f129a);
        }
    }

    /* renamed from: d */
    public static /* synthetic */ Bundle m708d(C0970o oVar, String str) {
        Integer num;
        Bundle bundle = new Bundle();
        bundle.putAll(m702j());
        bundle.putString("package.name", str);
        try {
            num = Integer.valueOf(oVar.f145e.getPackageManager().getPackageInfo(oVar.f145e.getPackageName(), 0).versionCode);
        } catch (PackageManager.NameNotFoundException unused) {
            f141b.m442b("The current version of the app could not be retrieved", new Object[0]);
            num = null;
        }
        if (num != null) {
            bundle.putInt("app.version.code", num.intValue());
        }
        return bundle;
    }

    /* renamed from: i */
    private static <T> Task<T> m703i() {
        f141b.m442b("onError(%d)", -9);
        return Tasks.m92b(new InstallException(-9));
    }

    /* renamed from: j */
    public static Bundle m702j() {
        Bundle bundle = new Bundle();
        bundle.putAll(PlayCoreVersion.m456b("app_update"));
        bundle.putInt("playcore.version.code", 11000);
        return bundle;
    }

    /* renamed from: a */
    public final Task<AppUpdateInfo> m711a(String str) {
        if (this.f143a == null) {
            return m703i();
        }
        f141b.m440d("requestUpdateInfo(%s)", str);
        C1277i iVar = new C1277i();
        this.f143a.m433a(new C0965j(this, iVar, str, iVar));
        return iVar.m78c();
    }

    /* renamed from: b */
    public final Task<Void> m710b(String str) {
        if (this.f143a == null) {
            return m703i();
        }
        f141b.m440d("completeUpdate(%s)", str);
        C1277i iVar = new C1277i();
        this.f143a.m433a(new C0966k(this, iVar, iVar, str));
        return iVar.m78c();
    }
}
