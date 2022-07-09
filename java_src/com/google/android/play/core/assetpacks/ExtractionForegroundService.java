package com.google.android.play.core.assetpacks;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.IBinder;
import com.google.android.play.core.internal.C1102ag;
/* loaded from: classes.dex */
public class ExtractionForegroundService extends Service {

    /* renamed from: a */
    Context f194a;

    /* renamed from: b */
    C1070i f195b;

    /* renamed from: c */
    NotificationManager f196c;

    /* renamed from: d */
    private final C1102ag f197d = new C1102ag("ExtractionForegroundService");

    /* renamed from: a */
    private final synchronized void m676a(Intent intent) {
        int intExtra;
        String stringExtra = intent.getStringExtra("notification_title");
        String stringExtra2 = intent.getStringExtra("notification_subtext");
        long longExtra = intent.getLongExtra("notification_timeout", 600000L);
        PendingIntent pendingIntent = (PendingIntent) intent.getParcelableExtra("notification_on_click_intent");
        Notification.Builder timeoutAfter = Build.VERSION.SDK_INT >= 26 ? new Notification.Builder(this.f194a, "playcore-assetpacks-service-notification-channel").setTimeoutAfter(longExtra) : new Notification.Builder(this.f194a).setPriority(-2);
        if (pendingIntent != null) {
            timeoutAfter.setContentIntent(pendingIntent);
        }
        Notification.Builder contentTitle = timeoutAfter.setSmallIcon(17301633).setOngoing(false).setContentTitle(stringExtra == null ? "Downloading additional file" : stringExtra);
        if (stringExtra2 == null) {
            stringExtra = "Transferring";
        }
        contentTitle.setSubText(stringExtra);
        if (Build.VERSION.SDK_INT >= 21 && (intExtra = intent.getIntExtra("notification_color", 0)) != 0) {
            timeoutAfter.setColor(intExtra).setVisibility(-1);
        }
        Notification build = timeoutAfter.build();
        this.f197d.m440d("Starting foreground installation service.", new Object[0]);
        this.f195b.m488a(true);
        if (Build.VERSION.SDK_INT >= 26) {
            m674c(intent.getStringExtra("notification_channel_name"));
        }
        startForeground(-1883842196, build);
    }

    /* renamed from: b */
    private final synchronized void m675b() {
        this.f197d.m440d("Stopping service.", new Object[0]);
        this.f195b.m488a(false);
        stopForeground(true);
        stopSelf();
    }

    /* renamed from: c */
    private final synchronized void m674c(String str) {
        if (str == null) {
            str = "File downloads by Play";
        }
        this.f196c.createNotificationChannel(new NotificationChannel("playcore-assetpacks-service-notification-channel", str, 2));
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public final void onCreate() {
        super.onCreate();
        C1044ck.m537j(getApplicationContext()).mo591c(this);
        this.f196c = (NotificationManager) this.f194a.getSystemService("notification");
    }

    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i, int i2) {
        m676a(intent);
        int intExtra = intent.getIntExtra("action_type", 0);
        if (intExtra == 2) {
            m675b();
        } else {
            this.f197d.m442b("Unknown action type received: %d", Integer.valueOf(intExtra));
        }
        return 2;
    }
}
