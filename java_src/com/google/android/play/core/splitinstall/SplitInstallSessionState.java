package com.google.android.play.core.splitinstall;

import android.app.PendingIntent;
import android.content.Intent;
import android.os.Bundle;
import androidx.core.app.NotificationCompat;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public abstract class SplitInstallSessionState {
    public static SplitInstallSessionState create(int i, int i2, int i3, long j, long j2, List<String> list, List<String> list2) {
        if (i2 != 8) {
            return new C1209a(i, i2, i3, j, j2, list, list2, null, null);
        }
        throw new IllegalArgumentException("REQUIRES_USER_CONFIRMATION state not supported.");
    }

    /* renamed from: d */
    public static SplitInstallSessionState m196d(Bundle bundle) {
        return new C1209a(bundle.getInt("session_id"), bundle.getInt(NotificationCompat.CATEGORY_STATUS), bundle.getInt("error_code"), bundle.getLong("bytes_downloaded"), bundle.getLong("total_bytes_to_download"), bundle.getStringArrayList("module_names"), bundle.getStringArrayList("languages"), (PendingIntent) bundle.getParcelable("user_confirmation_intent"), bundle.getParcelableArrayList("split_file_intents"));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public abstract List<String> mo195a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public abstract List<String> mo194b();

    public abstract long bytesDownloaded();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public abstract List<Intent> mo193c();

    public abstract int errorCode();

    public boolean hasTerminalStatus() {
        int status = status();
        return status == 0 || status == 5 || status == 6 || status == 7;
    }

    public List<String> languages() {
        return mo194b() != null ? new ArrayList(mo194b()) : new ArrayList();
    }

    public List<String> moduleNames() {
        return mo195a() != null ? new ArrayList(mo195a()) : new ArrayList();
    }

    @Deprecated
    public abstract PendingIntent resolutionIntent();

    public abstract int sessionId();

    public abstract int status();

    public abstract long totalBytesToDownload();
}
