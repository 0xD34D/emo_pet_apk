package com.google.android.play.core.appupdate;

import android.app.PendingIntent;
/* loaded from: classes.dex */
public abstract class AppUpdateInfo {
    /* renamed from: a */
    public static AppUpdateInfo m717a(String str, int i, int i2, int i3, Integer num, int i4, long j, long j2, long j3, long j4, PendingIntent pendingIntent, PendingIntent pendingIntent2, PendingIntent pendingIntent3, PendingIntent pendingIntent4) {
        return new C0973r(str, i, i2, i3, num, i4, j, j2, j3, j4, pendingIntent, pendingIntent2, pendingIntent3, pendingIntent4);
    }

    /* renamed from: i */
    private final boolean m715i(AppUpdateOptions appUpdateOptions) {
        return appUpdateOptions.allowAssetPackDeletion() && mo699b() <= mo698c();
    }

    public abstract int availableVersionCode();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public abstract long mo699b();

    public abstract long bytesDownloaded();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public abstract long mo698c();

    public abstract Integer clientVersionStalenessDays();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public abstract PendingIntent mo697d();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public abstract PendingIntent mo696e();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public abstract PendingIntent mo695f();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public abstract PendingIntent mo694g();

    /* renamed from: h */
    public final PendingIntent m716h(AppUpdateOptions appUpdateOptions) {
        if (appUpdateOptions.appUpdateType() != 0) {
            if (appUpdateOptions.appUpdateType() == 1) {
                if (mo697d() != null) {
                    return mo697d();
                }
                if (m715i(appUpdateOptions)) {
                    return mo695f();
                }
            }
            return null;
        } else if (mo696e() != null) {
            return mo696e();
        } else {
            if (m715i(appUpdateOptions)) {
                return mo694g();
            }
            return null;
        }
    }

    public abstract int installStatus();

    public boolean isUpdateTypeAllowed(int i) {
        return m716h(AppUpdateOptions.defaultOptions(i)) != null;
    }

    public boolean isUpdateTypeAllowed(AppUpdateOptions appUpdateOptions) {
        return m716h(appUpdateOptions) != null;
    }

    public abstract String packageName();

    public abstract long totalBytesToDownload();

    public abstract int updateAvailability();

    public abstract int updatePriority();
}
