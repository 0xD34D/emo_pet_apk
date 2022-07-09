package com.google.android.play.core.assetpacks;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import com.google.android.play.core.internal.AbstractC1150ca;
import com.google.android.play.core.internal.C1102ag;
import com.google.android.play.core.listener.AbstractC1179b;
import java.util.ArrayList;
import java.util.concurrent.Executor;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.play.core.assetpacks.ar */
/* loaded from: classes.dex */
public final class C0997ar extends AbstractC1179b<AssetPackState> {

    /* renamed from: c */
    private final C1034ca f251c;

    /* renamed from: d */
    private final C1018bl f252d;

    /* renamed from: e */
    private final AbstractC1150ca<AbstractC1082t> f253e;

    /* renamed from: f */
    private final C1011be f254f;

    /* renamed from: g */
    private final C1021bo f255g;

    /* renamed from: h */
    private final AbstractC1150ca<Executor> f256h;

    /* renamed from: i */
    private final AbstractC1150ca<Executor> f257i;

    /* renamed from: j */
    private final Handler f258j = new Handler(Looper.getMainLooper());

    public C0997ar(Context context, C1034ca caVar, C1018bl blVar, AbstractC1150ca<AbstractC1082t> caVar2, C1021bo boVar, C1011be beVar, AbstractC1150ca<Executor> caVar3, AbstractC1150ca<Executor> caVar4) {
        super(new C1102ag("AssetPackServiceListenerRegistry"), new IntentFilter("com.google.android.play.core.assetpacks.receiver.ACTION_SESSION_UPDATE"), context);
        this.f251c = caVar;
        this.f252d = blVar;
        this.f253e = caVar2;
        this.f255g = boVar;
        this.f254f = beVar;
        this.f256h = caVar3;
        this.f257i = caVar4;
    }

    @Override // com.google.android.play.core.listener.AbstractC1179b
    /* renamed from: a */
    public final void mo135a(Context context, Intent intent) {
        Bundle bundleExtra = intent.getBundleExtra("com.google.android.play.core.assetpacks.receiver.EXTRA_SESSION_STATE");
        if (bundleExtra != null) {
            ArrayList<String> stringArrayList = bundleExtra.getStringArrayList("pack_names");
            if (stringArrayList == null || stringArrayList.size() != 1) {
                this.f678a.m442b("Corrupt bundle received from broadcast.", new Object[0]);
                return;
            }
            AssetPackState d = AssetPackState.m682d(bundleExtra, stringArrayList.get(0), this.f255g, C0999at.f260b);
            this.f678a.m443a("ListenerRegistryBroadcastReceiver.onReceive: %s", d);
            PendingIntent pendingIntent = (PendingIntent) bundleExtra.getParcelable("confirmation_intent");
            if (pendingIntent != null) {
                this.f254f.m598a(pendingIntent);
            }
            this.f257i.m341a().execute(new Runnable(this, bundleExtra, d) { // from class: com.google.android.play.core.assetpacks.ap

                /* renamed from: a */
                private final C0997ar f246a;

                /* renamed from: b */
                private final Bundle f247b;

                /* renamed from: c */
                private final AssetPackState f248c;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f246a = this;
                    this.f247b = bundleExtra;
                    this.f248c = d;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f246a.m652d(this.f247b, this.f248c);
                }
            });
            this.f256h.m341a().execute(new Runnable(this, bundleExtra) { // from class: com.google.android.play.core.assetpacks.aq

                /* renamed from: a */
                private final C0997ar f249a;

                /* renamed from: b */
                private final Bundle f250b;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f249a = this;
                    this.f250b = bundleExtra;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f249a.m653c(this.f250b);
                }
            });
            return;
        }
        this.f678a.m442b("Empty bundle received from broadcast.", new Object[0]);
    }

    /* renamed from: b */
    public final void m654b(AssetPackState assetPackState) {
        this.f258j.post(new Runnable(this, assetPackState) { // from class: com.google.android.play.core.assetpacks.ao

            /* renamed from: a */
            private final C0997ar f244a;

            /* renamed from: b */
            private final AssetPackState f245b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f244a = this;
                this.f245b = assetPackState;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f244a.m264i(this.f245b);
            }
        });
    }

    /* renamed from: c */
    public final /* synthetic */ void m653c(Bundle bundle) {
        if (this.f251c.m576d(bundle)) {
            this.f252d.m587a();
        }
    }

    /* renamed from: d */
    public final /* synthetic */ void m652d(Bundle bundle, AssetPackState assetPackState) {
        if (this.f251c.m575e(bundle)) {
            m654b(assetPackState);
            this.f253e.m341a().mo459j();
        }
    }
}
