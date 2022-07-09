package com.google.android.play.core.appupdate.testing;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import com.google.android.play.core.appupdate.AppUpdateInfo;
import com.google.android.play.core.appupdate.AppUpdateManager;
import com.google.android.play.core.appupdate.AppUpdateOptions;
import com.google.android.play.core.appupdate.C0956a;
import com.google.android.play.core.common.IntentSenderForResultStarter;
import com.google.android.play.core.install.InstallException;
import com.google.android.play.core.install.InstallState;
import com.google.android.play.core.install.InstallStateUpdatedListener;
import com.google.android.play.core.tasks.Task;
import com.google.android.play.core.tasks.Tasks;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class FakeAppUpdateManager implements AppUpdateManager {

    /* renamed from: a */
    private final C0956a f168a;

    /* renamed from: b */
    private final Context f169b;

    /* renamed from: c */
    private final List<Integer> f170c = new ArrayList();

    /* renamed from: d */
    private int f171d = 0;

    /* renamed from: e */
    private int f172e = 0;

    /* renamed from: f */
    private boolean f173f = false;

    /* renamed from: g */
    private int f174g = 0;

    /* renamed from: h */
    private Integer f175h = null;

    /* renamed from: i */
    private int f176i = 0;

    /* renamed from: j */
    private long f177j = 0;

    /* renamed from: k */
    private long f178k = 0;

    /* renamed from: l */
    private boolean f179l = false;

    /* renamed from: m */
    private boolean f180m = false;

    /* renamed from: n */
    private boolean f181n = false;

    /* renamed from: o */
    private Integer f182o;

    public FakeAppUpdateManager(Context context) {
        this.f168a = new C0956a(context);
        this.f169b = context;
    }

    /* renamed from: a */
    private final boolean m693a(AppUpdateInfo appUpdateInfo, AppUpdateOptions appUpdateOptions) {
        int i;
        if (!appUpdateInfo.isUpdateTypeAllowed(appUpdateOptions) && (!AppUpdateOptions.defaultOptions(appUpdateOptions.appUpdateType()).equals(appUpdateOptions) || !appUpdateInfo.isUpdateTypeAllowed(appUpdateOptions.appUpdateType()))) {
            return false;
        }
        if (appUpdateOptions.appUpdateType() == 1) {
            this.f180m = true;
            i = 1;
        } else {
            this.f179l = true;
            i = 0;
        }
        this.f182o = i;
        return true;
    }

    /* renamed from: b */
    private final int m692b() {
        if (!this.f173f) {
            return 1;
        }
        int i = this.f171d;
        return (i == 0 || i == 4 || i == 5 || i == 6) ? 2 : 3;
    }

    /* renamed from: c */
    private final void m691c() {
        this.f168a.m264i(InstallState.m450a(this.f171d, this.f177j, this.f178k, this.f172e, this.f169b.getPackageName()));
    }

    @Override // com.google.android.play.core.appupdate.AppUpdateManager
    public Task<Void> completeUpdate() {
        int i = this.f172e;
        if (i != 0) {
            return Tasks.m92b(new InstallException(i));
        }
        int i2 = this.f171d;
        if (i2 != 11) {
            return i2 == 3 ? Tasks.m92b(new InstallException(-8)) : Tasks.m92b(new InstallException(-7));
        }
        this.f171d = 3;
        this.f181n = true;
        Integer num = 0;
        if (num.equals(this.f182o)) {
            m691c();
        }
        return Tasks.m93a(null);
    }

    public void downloadCompletes() {
        int i = this.f171d;
        if (i == 2 || i == 1) {
            this.f171d = 11;
            this.f177j = 0L;
            this.f178k = 0L;
            Integer num = 0;
            if (num.equals(this.f182o)) {
                m691c();
                return;
            }
            Integer num2 = 1;
            if (num2.equals(this.f182o)) {
                completeUpdate();
            }
        }
    }

    public void downloadFails() {
        int i = this.f171d;
        if (i == 1 || i == 2) {
            this.f171d = 5;
            Integer num = 0;
            if (num.equals(this.f182o)) {
                m691c();
            }
            this.f182o = null;
            this.f180m = false;
            this.f171d = 0;
        }
    }

    public void downloadStarts() {
        if (this.f171d == 1) {
            this.f171d = 2;
            Integer num = 0;
            if (num.equals(this.f182o)) {
                m691c();
            }
        }
    }

    @Override // com.google.android.play.core.appupdate.AppUpdateManager
    public Task<AppUpdateInfo> getAppUpdateInfo() {
        PendingIntent pendingIntent;
        PendingIntent pendingIntent2;
        PendingIntent pendingIntent3;
        PendingIntent pendingIntent4;
        PendingIntent pendingIntent5;
        int i = this.f172e;
        if (i != 0) {
            return Tasks.m92b(new InstallException(i));
        }
        if (m692b() == 2 && this.f172e == 0) {
            if (this.f170c.contains(0)) {
                pendingIntent5 = PendingIntent.getBroadcast(this.f169b, 0, new Intent(), 0);
                pendingIntent = PendingIntent.getBroadcast(this.f169b, 0, new Intent(), 0);
            } else {
                pendingIntent5 = null;
                pendingIntent = null;
            }
            if (this.f170c.contains(1)) {
                pendingIntent4 = PendingIntent.getBroadcast(this.f169b, 0, new Intent(), 0);
                pendingIntent2 = PendingIntent.getBroadcast(this.f169b, 0, new Intent(), 0);
                pendingIntent3 = pendingIntent5;
            } else {
                pendingIntent3 = pendingIntent5;
                pendingIntent4 = null;
                pendingIntent2 = null;
            }
        } else {
            pendingIntent4 = null;
            pendingIntent3 = null;
            pendingIntent2 = null;
            pendingIntent = null;
        }
        return Tasks.m93a(AppUpdateInfo.m717a(this.f169b.getPackageName(), this.f174g, m692b(), this.f171d, this.f175h, this.f176i, this.f177j, this.f178k, 0L, 0L, pendingIntent4, pendingIntent3, pendingIntent2, pendingIntent));
    }

    public Integer getTypeForUpdateInProgress() {
        return this.f182o;
    }

    public void installCompletes() {
        if (this.f171d == 3) {
            this.f171d = 4;
            this.f173f = false;
            this.f174g = 0;
            this.f175h = null;
            this.f176i = 0;
            this.f177j = 0L;
            this.f178k = 0L;
            this.f180m = false;
            this.f181n = false;
            Integer num = 0;
            if (num.equals(this.f182o)) {
                m691c();
            }
            this.f182o = null;
            this.f171d = 0;
        }
    }

    public void installFails() {
        if (this.f171d == 3) {
            this.f171d = 5;
            Integer num = 0;
            if (num.equals(this.f182o)) {
                m691c();
            }
            this.f182o = null;
            this.f181n = false;
            this.f180m = false;
            this.f171d = 0;
        }
    }

    public boolean isConfirmationDialogVisible() {
        return this.f179l;
    }

    public boolean isImmediateFlowVisible() {
        return this.f180m;
    }

    public boolean isInstallSplashScreenVisible() {
        return this.f181n;
    }

    @Override // com.google.android.play.core.appupdate.AppUpdateManager
    public void registerListener(InstallStateUpdatedListener installStateUpdatedListener) {
        this.f168a.m267f(installStateUpdatedListener);
    }

    public void setBytesDownloaded(long j) {
        if (this.f171d == 2 && j <= this.f178k) {
            this.f177j = j;
            Integer num = 0;
            if (num.equals(this.f182o)) {
                m691c();
            }
        }
    }

    public void setClientVersionStalenessDays(Integer num) {
        if (this.f173f) {
            this.f175h = num;
        }
    }

    public void setInstallErrorCode(int i) {
        this.f172e = i;
    }

    public void setTotalBytesToDownload(long j) {
        if (this.f171d == 2) {
            this.f178k = j;
            Integer num = 0;
            if (num.equals(this.f182o)) {
                m691c();
            }
        }
    }

    public void setUpdateAvailable(int i) {
        this.f173f = true;
        this.f170c.clear();
        this.f170c.add(0);
        this.f170c.add(1);
        this.f174g = i;
    }

    public void setUpdateAvailable(int i, int i2) {
        this.f173f = true;
        this.f170c.clear();
        this.f170c.add(Integer.valueOf(i2));
        this.f174g = i;
    }

    public void setUpdateNotAvailable() {
        this.f173f = false;
        this.f175h = null;
    }

    public void setUpdatePriority(int i) {
        if (this.f173f) {
            this.f176i = i;
        }
    }

    @Override // com.google.android.play.core.appupdate.AppUpdateManager
    public final Task<Integer> startUpdateFlow(AppUpdateInfo appUpdateInfo, Activity activity, AppUpdateOptions appUpdateOptions) {
        return m693a(appUpdateInfo, appUpdateOptions) ? Tasks.m93a(-1) : Tasks.m92b(new InstallException(-6));
    }

    @Override // com.google.android.play.core.appupdate.AppUpdateManager
    public boolean startUpdateFlowForResult(AppUpdateInfo appUpdateInfo, int i, Activity activity, int i2) {
        return m693a(appUpdateInfo, AppUpdateOptions.newBuilder(i).build());
    }

    @Override // com.google.android.play.core.appupdate.AppUpdateManager
    public boolean startUpdateFlowForResult(AppUpdateInfo appUpdateInfo, int i, IntentSenderForResultStarter intentSenderForResultStarter, int i2) {
        return m693a(appUpdateInfo, AppUpdateOptions.newBuilder(i).build());
    }

    @Override // com.google.android.play.core.appupdate.AppUpdateManager
    public final boolean startUpdateFlowForResult(AppUpdateInfo appUpdateInfo, Activity activity, AppUpdateOptions appUpdateOptions, int i) {
        return m693a(appUpdateInfo, appUpdateOptions);
    }

    @Override // com.google.android.play.core.appupdate.AppUpdateManager
    public final boolean startUpdateFlowForResult(AppUpdateInfo appUpdateInfo, IntentSenderForResultStarter intentSenderForResultStarter, AppUpdateOptions appUpdateOptions, int i) {
        return m693a(appUpdateInfo, appUpdateOptions);
    }

    @Override // com.google.android.play.core.appupdate.AppUpdateManager
    public void unregisterListener(InstallStateUpdatedListener installStateUpdatedListener) {
        this.f168a.m266g(installStateUpdatedListener);
    }

    public void userAcceptsUpdate() {
        if (this.f179l || this.f180m) {
            this.f179l = false;
            this.f171d = 1;
            Integer num = 0;
            if (num.equals(this.f182o)) {
                m691c();
            }
        }
    }

    public void userCancelsDownload() {
        int i = this.f171d;
        if (i == 1 || i == 2) {
            this.f171d = 6;
            Integer num = 0;
            if (num.equals(this.f182o)) {
                m691c();
            }
            this.f182o = null;
            this.f180m = false;
            this.f171d = 0;
        }
    }

    public void userRejectsUpdate() {
        if (this.f179l || this.f180m) {
            this.f179l = false;
            this.f180m = false;
            this.f182o = null;
            this.f171d = 0;
        }
    }
}
