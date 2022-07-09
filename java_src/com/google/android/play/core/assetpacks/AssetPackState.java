package com.google.android.play.core.assetpacks;

import android.os.Bundle;
import androidx.core.app.NotificationCompat;
import com.google.android.play.core.internal.C1160i;
/* loaded from: classes.dex */
public abstract class AssetPackState {
    /* renamed from: c */
    public static AssetPackState m683c(String str, int i, int i2, long j, long j2, double d, int i3, String str2) {
        return new C1005az(str, i, i2, j, j2, (int) Math.rint(100.0d * d), i3, str2);
    }

    /* renamed from: d */
    public static AssetPackState m682d(Bundle bundle, String str, C1021bo boVar, AbstractC0998as asVar) {
        int a = asVar.mo580a(bundle.getInt(C1160i.m326e(NotificationCompat.CATEGORY_STATUS, str)), str);
        int i = bundle.getInt(C1160i.m326e("error_code", str));
        long j = bundle.getLong(C1160i.m326e("bytes_downloaded", str));
        long j2 = bundle.getLong(C1160i.m326e("total_bytes_to_download", str));
        double b = boVar.m584b(str);
        long j3 = bundle.getLong(C1160i.m326e("pack_version", str));
        long j4 = bundle.getLong(C1160i.m326e("pack_base_version", str));
        int i2 = 1;
        if (!(a != 4 || j4 == 0 || j4 == j3)) {
            i2 = 2;
        }
        return m683c(str, a, i, j, j2, b, i2, bundle.getString(C1160i.m326e("pack_version_tag", str), ""));
    }

    /* renamed from: a */
    public abstract int mo608a();

    /* renamed from: b */
    public abstract String mo607b();

    public abstract long bytesDownloaded();

    public abstract int errorCode();

    public abstract String name();

    public abstract int status();

    public abstract long totalBytesToDownload();

    public abstract int transferProgressPercentage();
}
