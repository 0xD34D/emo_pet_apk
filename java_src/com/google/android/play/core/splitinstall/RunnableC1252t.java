package com.google.android.play.core.splitinstall;

import android.os.Bundle;
import androidx.core.app.NotificationCompat;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.google.android.play.core.splitinstall.t */
/* loaded from: classes.dex */
final class RunnableC1252t implements Runnable {

    /* renamed from: a */
    final /* synthetic */ SplitInstallRequest f832a;

    /* renamed from: b */
    final /* synthetic */ C1264v f833b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC1252t(C1264v vVar, SplitInstallRequest splitInstallRequest) {
        this.f833b = vVar;
        this.f832a = splitInstallRequest;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C1251s sVar;
        List e;
        sVar = this.f833b.f884b;
        List<String> moduleNames = this.f832a.getModuleNames();
        e = C1264v.m99e(this.f832a.getLanguages());
        Bundle bundle = new Bundle();
        bundle.putInt("session_id", 0);
        bundle.putInt(NotificationCompat.CATEGORY_STATUS, 5);
        bundle.putInt("error_code", 0);
        if (!moduleNames.isEmpty()) {
            bundle.putStringArrayList("module_names", new ArrayList<>(moduleNames));
        }
        if (!e.isEmpty()) {
            bundle.putStringArrayList("languages", new ArrayList<>(e));
        }
        bundle.putLong("total_bytes_to_download", 0L);
        bundle.putLong("bytes_downloaded", 0L);
        sVar.m131k(SplitInstallSessionState.m196d(bundle));
    }
}
