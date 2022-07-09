package com.google.android.play.core.assetpacks;

import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.play.core.internal.AbstractBinderC1174w;
import com.google.android.play.core.internal.AbstractC1177z;
import com.google.android.play.core.internal.C1102ag;
import com.google.android.play.core.internal.C1138bp;
/* renamed from: com.google.android.play.core.assetpacks.b */
/* loaded from: classes.dex */
final class BinderC1006b extends AbstractBinderC1174w {

    /* renamed from: a */
    private final C1102ag f286a = new C1102ag("AssetPackExtractionService");

    /* renamed from: b */
    private final Context f287b;

    /* renamed from: c */
    private final C1000au f288c;

    public BinderC1006b(Context context, C1000au auVar) {
        this.f287b = context;
        this.f288c = auVar;
    }

    /* renamed from: d */
    private final synchronized void m606d(Bundle bundle) {
        ComponentName componentName;
        Intent intent = new Intent(this.f287b, ExtractionForegroundService.class);
        int i = bundle.getInt("action_type");
        intent.putExtra("action_type", i);
        if (i == 1) {
            intent.putExtra("notification_channel_name", bundle.getString("notification_channel_name"));
            intent.putExtra("notification_title", bundle.getString("notification_title"));
            intent.putExtra("notification_subtext", bundle.getString("notification_subtext"));
            intent.putExtra("notification_timeout", bundle.getLong("notification_timeout"));
            Parcelable parcelable = bundle.getParcelable("notification_on_click_intent");
            if (parcelable instanceof PendingIntent) {
                intent.putExtra("notification_on_click_intent", parcelable);
            }
            intent.putExtra("notification_color", bundle.getInt("notification_color"));
        }
        try {
            componentName = Build.VERSION.SDK_INT >= 26 ? this.f287b.startForegroundService(intent) : this.f287b.startService(intent);
        } catch (IllegalStateException | SecurityException e) {
            this.f286a.m441c(e, "Failed starting installation service.", new Object[0]);
            componentName = null;
        }
        if (componentName == null) {
            this.f286a.m442b("Failed starting installation service.", new Object[0]);
        }
    }

    @Override // com.google.android.play.core.internal.AbstractC1175x
    /* renamed from: b */
    public final void mo274b(Bundle bundle, AbstractC1177z zVar) throws RemoteException {
        this.f286a.m443a("updateServiceState AIDL call", new Object[0]);
        if (!C1138bp.m350a(this.f287b) || !C1138bp.m349b(this.f287b)) {
            zVar.mo271d(new Bundle());
            return;
        }
        m606d(bundle);
        zVar.mo272c(new Bundle(), new Bundle());
    }

    @Override // com.google.android.play.core.internal.AbstractC1175x
    /* renamed from: c */
    public final void mo273c(AbstractC1177z zVar) throws RemoteException {
        this.f286a.m443a("clearAssetPackStorage AIDL call", new Object[0]);
        if (!C1138bp.m350a(this.f287b) || !C1138bp.m349b(this.f287b)) {
            zVar.mo271d(new Bundle());
            return;
        }
        this.f288c.m612x();
        zVar.mo270e(new Bundle());
    }
}
