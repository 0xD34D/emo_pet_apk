package com.google.android.play.core.splitinstall;

import android.app.PendingIntent;
import android.content.Intent;
import java.util.List;
/* renamed from: com.google.android.play.core.splitinstall.a */
/* loaded from: classes.dex */
final class C1209a extends SplitInstallSessionState {

    /* renamed from: a */
    private final int f746a;

    /* renamed from: b */
    private final int f747b;

    /* renamed from: c */
    private final int f748c;

    /* renamed from: d */
    private final long f749d;

    /* renamed from: e */
    private final long f750e;

    /* renamed from: f */
    private final List<String> f751f;

    /* renamed from: g */
    private final List<String> f752g;

    /* renamed from: h */
    private final PendingIntent f753h;

    /* renamed from: i */
    private final List<Intent> f754i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1209a(int i, int i2, int i3, long j, long j2, List<String> list, List<String> list2, PendingIntent pendingIntent, List<Intent> list3) {
        this.f746a = i;
        this.f747b = i2;
        this.f748c = i3;
        this.f749d = j;
        this.f750e = j2;
        this.f751f = list;
        this.f752g = list2;
        this.f753h = pendingIntent;
        this.f754i = list3;
    }

    @Override // com.google.android.play.core.splitinstall.SplitInstallSessionState
    /* renamed from: a */
    final List<String> mo195a() {
        return this.f751f;
    }

    @Override // com.google.android.play.core.splitinstall.SplitInstallSessionState
    /* renamed from: b */
    final List<String> mo194b() {
        return this.f752g;
    }

    @Override // com.google.android.play.core.splitinstall.SplitInstallSessionState
    public final long bytesDownloaded() {
        return this.f749d;
    }

    @Override // com.google.android.play.core.splitinstall.SplitInstallSessionState
    /* renamed from: c */
    final List<Intent> mo193c() {
        return this.f754i;
    }

    public final boolean equals(Object obj) {
        List<String> list;
        List<String> list2;
        PendingIntent pendingIntent;
        if (obj == this) {
            return true;
        }
        if (obj instanceof SplitInstallSessionState) {
            SplitInstallSessionState splitInstallSessionState = (SplitInstallSessionState) obj;
            if (this.f746a == splitInstallSessionState.sessionId() && this.f747b == splitInstallSessionState.status() && this.f748c == splitInstallSessionState.errorCode() && this.f749d == splitInstallSessionState.bytesDownloaded() && this.f750e == splitInstallSessionState.totalBytesToDownload() && ((list = this.f751f) != null ? list.equals(splitInstallSessionState.mo195a()) : splitInstallSessionState.mo195a() == null) && ((list2 = this.f752g) != null ? list2.equals(splitInstallSessionState.mo194b()) : splitInstallSessionState.mo194b() == null) && ((pendingIntent = this.f753h) != null ? pendingIntent.equals(splitInstallSessionState.resolutionIntent()) : splitInstallSessionState.resolutionIntent() == null)) {
                List<Intent> list3 = this.f754i;
                List<Intent> c = splitInstallSessionState.mo193c();
                if (list3 != null ? list3.equals(c) : c == null) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // com.google.android.play.core.splitinstall.SplitInstallSessionState
    public final int errorCode() {
        return this.f748c;
    }

    public final int hashCode() {
        int i = this.f746a;
        int i2 = this.f747b;
        int i3 = this.f748c;
        long j = this.f749d;
        long j2 = this.f750e;
        int i4 = (((((((((i ^ 1000003) * 1000003) ^ i2) * 1000003) ^ i3) * 1000003) ^ ((int) ((j >>> 32) ^ j))) * 1000003) ^ ((int) ((j2 >>> 32) ^ j2))) * 1000003;
        List<String> list = this.f751f;
        int i5 = 0;
        int hashCode = (i4 ^ (list == null ? 0 : list.hashCode())) * 1000003;
        List<String> list2 = this.f752g;
        int hashCode2 = (hashCode ^ (list2 == null ? 0 : list2.hashCode())) * 1000003;
        PendingIntent pendingIntent = this.f753h;
        int hashCode3 = (hashCode2 ^ (pendingIntent == null ? 0 : pendingIntent.hashCode())) * 1000003;
        List<Intent> list3 = this.f754i;
        if (list3 != null) {
            i5 = list3.hashCode();
        }
        return hashCode3 ^ i5;
    }

    @Override // com.google.android.play.core.splitinstall.SplitInstallSessionState
    @Deprecated
    public final PendingIntent resolutionIntent() {
        return this.f753h;
    }

    @Override // com.google.android.play.core.splitinstall.SplitInstallSessionState
    public final int sessionId() {
        return this.f746a;
    }

    @Override // com.google.android.play.core.splitinstall.SplitInstallSessionState
    public final int status() {
        return this.f747b;
    }

    public final String toString() {
        int i = this.f746a;
        int i2 = this.f747b;
        int i3 = this.f748c;
        long j = this.f749d;
        long j2 = this.f750e;
        String valueOf = String.valueOf(this.f751f);
        String valueOf2 = String.valueOf(this.f752g);
        String valueOf3 = String.valueOf(this.f753h);
        String valueOf4 = String.valueOf(this.f754i);
        int length = String.valueOf(valueOf).length();
        int length2 = String.valueOf(valueOf2).length();
        StringBuilder sb = new StringBuilder(length + 251 + length2 + String.valueOf(valueOf3).length() + String.valueOf(valueOf4).length());
        sb.append("SplitInstallSessionState{sessionId=");
        sb.append(i);
        sb.append(", status=");
        sb.append(i2);
        sb.append(", errorCode=");
        sb.append(i3);
        sb.append(", bytesDownloaded=");
        sb.append(j);
        sb.append(", totalBytesToDownload=");
        sb.append(j2);
        sb.append(", moduleNamesNullable=");
        sb.append(valueOf);
        sb.append(", languagesNullable=");
        sb.append(valueOf2);
        sb.append(", resolutionIntent=");
        sb.append(valueOf3);
        sb.append(", splitFileIntents=");
        sb.append(valueOf4);
        sb.append("}");
        return sb.toString();
    }

    @Override // com.google.android.play.core.splitinstall.SplitInstallSessionState
    public final long totalBytesToDownload() {
        return this.f750e;
    }
}
