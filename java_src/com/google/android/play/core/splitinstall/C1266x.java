package com.google.android.play.core.splitinstall;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import java.io.File;
/* renamed from: com.google.android.play.core.splitinstall.x */
/* loaded from: classes.dex */
public final class C1266x {

    /* renamed from: a */
    private final Context f892a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1266x(Context context) {
        this.f892a = context;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public static File m96c(Context context) {
        String string;
        try {
            Bundle bundle = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData;
            if (bundle == null || (string = bundle.getString("local_testing_dir")) == null) {
                return null;
            }
            return new File(context.getExternalFilesDir(null), string);
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final C1251s m98a() {
        return C1251s.m134b(this.f892a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final Context m97b() {
        return this.f892a;
    }
}
