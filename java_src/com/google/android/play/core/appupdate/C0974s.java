package com.google.android.play.core.appupdate;

import com.google.android.play.core.appupdate.AppUpdateOptions;
/* renamed from: com.google.android.play.core.appupdate.s */
/* loaded from: classes.dex */
final class C0974s extends AppUpdateOptions.Builder {

    /* renamed from: a */
    private Integer f164a;

    /* renamed from: b */
    private Boolean f165b;

    @Override // com.google.android.play.core.appupdate.AppUpdateOptions.Builder
    public final AppUpdateOptions build() {
        String str = "";
        if (this.f164a == null) {
            str = str.concat(" appUpdateType");
        }
        if (this.f165b == null) {
            str = String.valueOf(str).concat(" allowAssetPackDeletion");
        }
        if (str.isEmpty()) {
            return new C0975t(this.f164a.intValue(), this.f165b.booleanValue());
        }
        String valueOf = String.valueOf(str);
        throw new IllegalStateException(valueOf.length() != 0 ? "Missing required properties:".concat(valueOf) : new String("Missing required properties:"));
    }

    @Override // com.google.android.play.core.appupdate.AppUpdateOptions.Builder
    public final AppUpdateOptions.Builder setAllowAssetPackDeletion(boolean z) {
        this.f165b = Boolean.valueOf(z);
        return this;
    }

    @Override // com.google.android.play.core.appupdate.AppUpdateOptions.Builder
    public final AppUpdateOptions.Builder setAppUpdateType(int i) {
        this.f164a = Integer.valueOf(i);
        return this;
    }
}
