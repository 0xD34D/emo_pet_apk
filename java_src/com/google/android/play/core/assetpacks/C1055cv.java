package com.google.android.play.core.assetpacks;

import android.content.Context;
import android.content.pm.PackageManager;
import com.google.android.play.core.internal.C1102ag;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.play.core.assetpacks.cv */
/* loaded from: classes.dex */
public final class C1055cv {

    /* renamed from: a */
    private static final C1102ag f483a = new C1102ag("PackageStateCache");

    /* renamed from: b */
    private final Context f484b;

    /* renamed from: c */
    private int f485c = -1;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1055cv(Context context) {
        this.f484b = context;
    }

    /* renamed from: a */
    public final synchronized int m524a() {
        if (this.f485c == -1) {
            try {
                this.f485c = this.f484b.getPackageManager().getPackageInfo(this.f484b.getPackageName(), 0).versionCode;
            } catch (PackageManager.NameNotFoundException unused) {
                f483a.m442b("The current version of the app could not be retrieved", new Object[0]);
            }
        }
        return this.f485c;
    }
}
