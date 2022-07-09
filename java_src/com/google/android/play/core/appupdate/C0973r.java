package com.google.android.play.core.appupdate;

import android.app.PendingIntent;
import java.util.Objects;
/* renamed from: com.google.android.play.core.appupdate.r */
/* loaded from: classes.dex */
final class C0973r extends AppUpdateInfo {

    /* renamed from: a */
    private final String f150a;

    /* renamed from: b */
    private final int f151b;

    /* renamed from: c */
    private final int f152c;

    /* renamed from: d */
    private final int f153d;

    /* renamed from: e */
    private final Integer f154e;

    /* renamed from: f */
    private final int f155f;

    /* renamed from: g */
    private final long f156g;

    /* renamed from: h */
    private final long f157h;

    /* renamed from: i */
    private final long f158i;

    /* renamed from: j */
    private final long f159j;

    /* renamed from: k */
    private final PendingIntent f160k;

    /* renamed from: l */
    private final PendingIntent f161l;

    /* renamed from: m */
    private final PendingIntent f162m;

    /* renamed from: n */
    private final PendingIntent f163n;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0973r(String str, int i, int i2, int i3, Integer num, int i4, long j, long j2, long j3, long j4, PendingIntent pendingIntent, PendingIntent pendingIntent2, PendingIntent pendingIntent3, PendingIntent pendingIntent4) {
        Objects.requireNonNull(str, "Null packageName");
        this.f150a = str;
        this.f151b = i;
        this.f152c = i2;
        this.f153d = i3;
        this.f154e = num;
        this.f155f = i4;
        this.f156g = j;
        this.f157h = j2;
        this.f158i = j3;
        this.f159j = j4;
        this.f160k = pendingIntent;
        this.f161l = pendingIntent2;
        this.f162m = pendingIntent3;
        this.f163n = pendingIntent4;
    }

    @Override // com.google.android.play.core.appupdate.AppUpdateInfo
    public final int availableVersionCode() {
        return this.f151b;
    }

    @Override // com.google.android.play.core.appupdate.AppUpdateInfo
    /* renamed from: b */
    final long mo699b() {
        return this.f158i;
    }

    @Override // com.google.android.play.core.appupdate.AppUpdateInfo
    public final long bytesDownloaded() {
        return this.f156g;
    }

    @Override // com.google.android.play.core.appupdate.AppUpdateInfo
    /* renamed from: c */
    final long mo698c() {
        return this.f159j;
    }

    @Override // com.google.android.play.core.appupdate.AppUpdateInfo
    public final Integer clientVersionStalenessDays() {
        return this.f154e;
    }

    @Override // com.google.android.play.core.appupdate.AppUpdateInfo
    /* renamed from: d */
    final PendingIntent mo697d() {
        return this.f160k;
    }

    @Override // com.google.android.play.core.appupdate.AppUpdateInfo
    /* renamed from: e */
    final PendingIntent mo696e() {
        return this.f161l;
    }

    public final boolean equals(Object obj) {
        Integer num;
        PendingIntent pendingIntent;
        PendingIntent pendingIntent2;
        PendingIntent pendingIntent3;
        if (obj == this) {
            return true;
        }
        if (obj instanceof AppUpdateInfo) {
            AppUpdateInfo appUpdateInfo = (AppUpdateInfo) obj;
            if (this.f150a.equals(appUpdateInfo.packageName()) && this.f151b == appUpdateInfo.availableVersionCode() && this.f152c == appUpdateInfo.updateAvailability() && this.f153d == appUpdateInfo.installStatus() && ((num = this.f154e) != null ? num.equals(appUpdateInfo.clientVersionStalenessDays()) : appUpdateInfo.clientVersionStalenessDays() == null) && this.f155f == appUpdateInfo.updatePriority() && this.f156g == appUpdateInfo.bytesDownloaded() && this.f157h == appUpdateInfo.totalBytesToDownload() && this.f158i == appUpdateInfo.mo699b() && this.f159j == appUpdateInfo.mo698c() && ((pendingIntent = this.f160k) != null ? pendingIntent.equals(appUpdateInfo.mo697d()) : appUpdateInfo.mo697d() == null) && ((pendingIntent2 = this.f161l) != null ? pendingIntent2.equals(appUpdateInfo.mo696e()) : appUpdateInfo.mo696e() == null) && ((pendingIntent3 = this.f162m) != null ? pendingIntent3.equals(appUpdateInfo.mo695f()) : appUpdateInfo.mo695f() == null)) {
                PendingIntent pendingIntent4 = this.f163n;
                PendingIntent g = appUpdateInfo.mo694g();
                if (pendingIntent4 != null ? pendingIntent4.equals(g) : g == null) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // com.google.android.play.core.appupdate.AppUpdateInfo
    /* renamed from: f */
    final PendingIntent mo695f() {
        return this.f162m;
    }

    @Override // com.google.android.play.core.appupdate.AppUpdateInfo
    /* renamed from: g */
    final PendingIntent mo694g() {
        return this.f163n;
    }

    public final int hashCode() {
        int hashCode = (((((((this.f150a.hashCode() ^ 1000003) * 1000003) ^ this.f151b) * 1000003) ^ this.f152c) * 1000003) ^ this.f153d) * 1000003;
        Integer num = this.f154e;
        int i = 0;
        int hashCode2 = num == null ? 0 : num.hashCode();
        int i2 = this.f155f;
        long j = this.f156g;
        long j2 = this.f157h;
        long j3 = this.f158i;
        long j4 = this.f159j;
        int i3 = (((((((((((hashCode ^ hashCode2) * 1000003) ^ i2) * 1000003) ^ ((int) ((j >>> 32) ^ j))) * 1000003) ^ ((int) ((j2 >>> 32) ^ j2))) * 1000003) ^ ((int) ((j3 >>> 32) ^ j3))) * 1000003) ^ ((int) ((j4 >>> 32) ^ j4))) * 1000003;
        PendingIntent pendingIntent = this.f160k;
        int hashCode3 = (i3 ^ (pendingIntent == null ? 0 : pendingIntent.hashCode())) * 1000003;
        PendingIntent pendingIntent2 = this.f161l;
        int hashCode4 = (hashCode3 ^ (pendingIntent2 == null ? 0 : pendingIntent2.hashCode())) * 1000003;
        PendingIntent pendingIntent3 = this.f162m;
        int hashCode5 = (hashCode4 ^ (pendingIntent3 == null ? 0 : pendingIntent3.hashCode())) * 1000003;
        PendingIntent pendingIntent4 = this.f163n;
        if (pendingIntent4 != null) {
            i = pendingIntent4.hashCode();
        }
        return hashCode5 ^ i;
    }

    @Override // com.google.android.play.core.appupdate.AppUpdateInfo
    public final int installStatus() {
        return this.f153d;
    }

    @Override // com.google.android.play.core.appupdate.AppUpdateInfo
    public final String packageName() {
        return this.f150a;
    }

    public final String toString() {
        String str = this.f150a;
        int i = this.f151b;
        int i2 = this.f152c;
        int i3 = this.f153d;
        String valueOf = String.valueOf(this.f154e);
        int i4 = this.f155f;
        long j = this.f156g;
        long j2 = this.f157h;
        long j3 = this.f158i;
        long j4 = this.f159j;
        String valueOf2 = String.valueOf(this.f160k);
        String valueOf3 = String.valueOf(this.f161l);
        String valueOf4 = String.valueOf(this.f162m);
        String valueOf5 = String.valueOf(this.f163n);
        int length = str.length();
        int length2 = String.valueOf(valueOf).length();
        int length3 = String.valueOf(valueOf2).length();
        int length4 = String.valueOf(valueOf3).length();
        StringBuilder sb = new StringBuilder(length + 463 + length2 + length3 + length4 + String.valueOf(valueOf4).length() + String.valueOf(valueOf5).length());
        sb.append("AppUpdateInfo{packageName=");
        sb.append(str);
        sb.append(", availableVersionCode=");
        sb.append(i);
        sb.append(", updateAvailability=");
        sb.append(i2);
        sb.append(", installStatus=");
        sb.append(i3);
        sb.append(", clientVersionStalenessDays=");
        sb.append(valueOf);
        sb.append(", updatePriority=");
        sb.append(i4);
        sb.append(", bytesDownloaded=");
        sb.append(j);
        sb.append(", totalBytesToDownload=");
        sb.append(j2);
        sb.append(", additionalSpaceRequired=");
        sb.append(j3);
        sb.append(", assetPackStorageSize=");
        sb.append(j4);
        sb.append(", immediateUpdateIntent=");
        sb.append(valueOf2);
        sb.append(", flexibleUpdateIntent=");
        sb.append(valueOf3);
        sb.append(", immediateDestructiveUpdateIntent=");
        sb.append(valueOf4);
        sb.append(", flexibleDestructiveUpdateIntent=");
        sb.append(valueOf5);
        sb.append("}");
        return sb.toString();
    }

    @Override // com.google.android.play.core.appupdate.AppUpdateInfo
    public final long totalBytesToDownload() {
        return this.f157h;
    }

    @Override // com.google.android.play.core.appupdate.AppUpdateInfo
    public final int updateAvailability() {
        return this.f152c;
    }

    @Override // com.google.android.play.core.appupdate.AppUpdateInfo
    public final int updatePriority() {
        return this.f155f;
    }
}
