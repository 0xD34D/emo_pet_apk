package com.google.android.play.core.appupdate;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.google.android.play.core.install.InstallState;
import com.google.android.play.core.internal.C1102ag;
import com.google.android.play.core.listener.AbstractC1179b;
/* renamed from: com.google.android.play.core.appupdate.a */
/* loaded from: classes.dex */
public final class C0956a extends AbstractC1179b<InstallState> {
    public C0956a(Context context) {
        super(new C1102ag("AppUpdateListenerRegistry"), new IntentFilter("com.google.android.play.core.install.ACTION_INSTALL_STATUS"), context);
    }

    @Override // com.google.android.play.core.listener.AbstractC1179b
    /* renamed from: a */
    public final void mo135a(Context context, Intent intent) {
        if (!context.getPackageName().equals(intent.getStringExtra("package.name"))) {
            this.f678a.m443a("ListenerRegistryBroadcastReceiver received broadcast for third party app: %s", intent.getStringExtra("package.name"));
            return;
        }
        this.f678a.m443a("List of extras in received intent:", new Object[0]);
        for (String str : intent.getExtras().keySet()) {
            this.f678a.m443a("Key: %s; value: %s", str, intent.getExtras().get(str));
        }
        C1102ag agVar = this.f678a;
        agVar.m443a("List of extras in received intent needed by fromUpdateIntent:", new Object[0]);
        agVar.m443a("Key: %s; value: %s", "install.status", Integer.valueOf(intent.getIntExtra("install.status", 0)));
        agVar.m443a("Key: %s; value: %s", "error.code", Integer.valueOf(intent.getIntExtra("error.code", 0)));
        InstallState a = InstallState.m450a(intent.getIntExtra("install.status", 0), intent.getLongExtra("bytes.downloaded", 0L), intent.getLongExtra("total.bytes.to.download", 0L), intent.getIntExtra("error.code", 0), intent.getStringExtra("package.name"));
        this.f678a.m443a("ListenerRegistryBroadcastReceiver.onReceive: %s", a);
        m264i(a);
    }
}
