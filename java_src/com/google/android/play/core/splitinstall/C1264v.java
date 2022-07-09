package com.google.android.play.core.splitinstall;

import android.app.Activity;
import android.content.IntentSender;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import com.google.android.play.core.common.IntentSenderForResultStarter;
import com.google.android.play.core.tasks.Task;
import com.google.android.play.core.tasks.Tasks;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.play.core.splitinstall.v */
/* loaded from: classes.dex */
public final class C1264v implements SplitInstallManager {

    /* renamed from: a */
    private final C1230au f883a;

    /* renamed from: b */
    private final C1251s f884b;

    /* renamed from: c */
    private final C1248p f885c;

    /* renamed from: d */
    private final C1231av f886d;

    /* renamed from: e */
    private final Handler f887e = new Handler(Looper.getMainLooper());

    public C1264v(C1230au auVar, C1251s sVar, C1248p pVar, C1231av avVar) {
        this.f883a = auVar;
        this.f884b = sVar;
        this.f885c = pVar;
        this.f886d = avVar;
    }

    /* renamed from: e */
    public static List<String> m99e(List<Locale> list) {
        ArrayList arrayList = new ArrayList(list.size());
        for (Locale locale : list) {
            if (Build.VERSION.SDK_INT >= 21) {
                arrayList.add(locale.toLanguageTag());
            }
        }
        return arrayList;
    }

    @Override // com.google.android.play.core.splitinstall.SplitInstallManager
    /* renamed from: a */
    public final synchronized void mo103a(SplitInstallStateUpdatedListener splitInstallStateUpdatedListener) {
        this.f884b.m133c(splitInstallStateUpdatedListener);
    }

    @Override // com.google.android.play.core.splitinstall.SplitInstallManager
    /* renamed from: b */
    public final synchronized void mo102b(SplitInstallStateUpdatedListener splitInstallStateUpdatedListener) {
        this.f884b.m132d(splitInstallStateUpdatedListener);
    }

    @Override // com.google.android.play.core.splitinstall.SplitInstallManager
    public final Task<Void> cancelInstall(int i) {
        return this.f883a.m171h(i);
    }

    @Override // com.google.android.play.core.splitinstall.SplitInstallManager
    public final Task<Void> deferredInstall(List<String> list) {
        return this.f883a.m176c(list);
    }

    @Override // com.google.android.play.core.splitinstall.SplitInstallManager
    public final Task<Void> deferredLanguageInstall(List<Locale> list) {
        return Build.VERSION.SDK_INT < 21 ? Tasks.m92b(new SplitInstallException(-5)) : this.f883a.m175d(m99e(list));
    }

    @Override // com.google.android.play.core.splitinstall.SplitInstallManager
    public final Task<Void> deferredLanguageUninstall(List<Locale> list) {
        return Build.VERSION.SDK_INT < 21 ? Tasks.m92b(new SplitInstallException(-5)) : this.f883a.m174e(m99e(list));
    }

    @Override // com.google.android.play.core.splitinstall.SplitInstallManager
    public final Task<Void> deferredUninstall(List<String> list) {
        this.f886d.m163b(list);
        return this.f883a.m177b(list);
    }

    @Override // com.google.android.play.core.splitinstall.SplitInstallManager
    public final Set<String> getInstalledLanguages() {
        Set<String> b = this.f885c.m141b();
        return b == null ? Collections.emptySet() : b;
    }

    @Override // com.google.android.play.core.splitinstall.SplitInstallManager
    public final Set<String> getInstalledModules() {
        return this.f885c.m142a();
    }

    @Override // com.google.android.play.core.splitinstall.SplitInstallManager
    public final Task<SplitInstallSessionState> getSessionState(int i) {
        return this.f883a.m173f(i);
    }

    @Override // com.google.android.play.core.splitinstall.SplitInstallManager
    public final Task<List<SplitInstallSessionState>> getSessionStates() {
        return this.f883a.m172g();
    }

    @Override // com.google.android.play.core.splitinstall.SplitInstallManager
    public final synchronized void registerListener(SplitInstallStateUpdatedListener splitInstallStateUpdatedListener) {
        this.f884b.m267f(splitInstallStateUpdatedListener);
    }

    @Override // com.google.android.play.core.splitinstall.SplitInstallManager
    public final boolean startConfirmationDialogForResult(SplitInstallSessionState splitInstallSessionState, Activity activity, int i) throws IntentSender.SendIntentException {
        return startConfirmationDialogForResult(splitInstallSessionState, new C1263u(activity), i);
    }

    @Override // com.google.android.play.core.splitinstall.SplitInstallManager
    public final boolean startConfirmationDialogForResult(SplitInstallSessionState splitInstallSessionState, IntentSenderForResultStarter intentSenderForResultStarter, int i) throws IntentSender.SendIntentException {
        if (splitInstallSessionState.status() != 8 || splitInstallSessionState.resolutionIntent() == null) {
            return false;
        }
        intentSenderForResultStarter.startIntentSenderForResult(splitInstallSessionState.resolutionIntent().getIntentSender(), i, null, 0, 0, 0, null);
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x004a, code lost:
        if (r2.containsAll(r3) != false) goto L_0x004c;
     */
    @Override // com.google.android.play.core.splitinstall.SplitInstallManager
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Task<Integer> startInstall(SplitInstallRequest splitInstallRequest) {
        if (!splitInstallRequest.getLanguages().isEmpty() && Build.VERSION.SDK_INT < 21) {
            return Tasks.m92b(new SplitInstallException(-5));
        }
        List<Locale> languages = splitInstallRequest.getLanguages();
        Set<String> b = this.f885c.m141b();
        if (b != null) {
            HashSet hashSet = new HashSet();
            for (Locale locale : languages) {
                hashSet.add(locale.getLanguage());
            }
        }
        if (getInstalledModules().containsAll(splitInstallRequest.getModuleNames()) && (Build.VERSION.SDK_INT < 21 || Collections.disjoint(splitInstallRequest.getModuleNames(), this.f886d.m164a()))) {
            this.f887e.post(new RunnableC1252t(this, splitInstallRequest));
            return Tasks.m93a(0);
        }
        return this.f883a.m178a(splitInstallRequest.getModuleNames(), m99e(splitInstallRequest.getLanguages()));
    }

    @Override // com.google.android.play.core.splitinstall.SplitInstallManager
    public final synchronized void unregisterListener(SplitInstallStateUpdatedListener splitInstallStateUpdatedListener) {
        this.f884b.m266g(splitInstallStateUpdatedListener);
    }
}
