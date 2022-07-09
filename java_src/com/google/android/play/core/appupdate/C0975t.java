package com.google.android.play.core.appupdate;
/* renamed from: com.google.android.play.core.appupdate.t */
/* loaded from: classes.dex */
final class C0975t extends AppUpdateOptions {

    /* renamed from: a */
    private final int f166a;

    /* renamed from: b */
    private final boolean f167b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ C0975t(int i, boolean z) {
        this.f166a = i;
        this.f167b = z;
    }

    @Override // com.google.android.play.core.appupdate.AppUpdateOptions
    public final boolean allowAssetPackDeletion() {
        return this.f167b;
    }

    @Override // com.google.android.play.core.appupdate.AppUpdateOptions
    public final int appUpdateType() {
        return this.f166a;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof AppUpdateOptions) {
            AppUpdateOptions appUpdateOptions = (AppUpdateOptions) obj;
            if (this.f166a == appUpdateOptions.appUpdateType() && this.f167b == appUpdateOptions.allowAssetPackDeletion()) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((this.f166a ^ 1000003) * 1000003) ^ (true != this.f167b ? 1237 : 1231);
    }

    public final String toString() {
        int i = this.f166a;
        boolean z = this.f167b;
        StringBuilder sb = new StringBuilder(73);
        sb.append("AppUpdateOptions{appUpdateType=");
        sb.append(i);
        sb.append(", allowAssetPackDeletion=");
        sb.append(z);
        sb.append("}");
        return sb.toString();
    }
}
