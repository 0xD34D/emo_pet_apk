package com.google.android.play.core.review;

import android.app.PendingIntent;
import java.util.Objects;
/* renamed from: com.google.android.play.core.review.a */
/* loaded from: classes.dex */
final class C1182a extends ReviewInfo {

    /* renamed from: a */
    private final PendingIntent f693a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1182a(PendingIntent pendingIntent) {
        Objects.requireNonNull(pendingIntent, "Null pendingIntent");
        this.f693a = pendingIntent;
    }

    @Override // com.google.android.play.core.review.ReviewInfo
    /* renamed from: a */
    final PendingIntent mo250a() {
        return this.f693a;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof ReviewInfo) {
            return this.f693a.equals(((ReviewInfo) obj).mo250a());
        }
        return false;
    }

    public final int hashCode() {
        return this.f693a.hashCode() ^ 1000003;
    }

    public final String toString() {
        String valueOf = String.valueOf(this.f693a);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 26);
        sb.append("ReviewInfo{pendingIntent=");
        sb.append(valueOf);
        sb.append("}");
        return sb.toString();
    }
}
