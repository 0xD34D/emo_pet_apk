package com.google.android.play.core.splitinstall;

import android.app.Activity;
import android.content.IntentSender;
import com.google.android.play.core.common.IntentSenderForResultStarter;
import com.google.android.play.core.internal.AbstractC1150ca;
import com.google.android.play.core.splitinstall.testing.FakeSplitInstallManager;
import com.google.android.play.core.tasks.Task;
import java.io.File;
import java.util.List;
import java.util.Locale;
import java.util.Set;
/* renamed from: com.google.android.play.core.splitinstall.i */
/* loaded from: classes.dex */
final class C1240i implements SplitInstallManager {

    /* renamed from: a */
    private final AbstractC1150ca<C1264v> f805a;

    /* renamed from: b */
    private final AbstractC1150ca<FakeSplitInstallManager> f806b;

    /* renamed from: c */
    private final AbstractC1150ca<File> f807c;

    public C1240i(AbstractC1150ca<C1264v> caVar, AbstractC1150ca<FakeSplitInstallManager> caVar2, AbstractC1150ca<File> caVar3) {
        this.f805a = caVar;
        this.f806b = caVar2;
        this.f807c = caVar3;
    }

    /* renamed from: c */
    private final SplitInstallManager m155c() {
        return (SplitInstallManager) (this.f807c.m341a() == null ? this.f805a : this.f806b).m341a();
    }

    @Override // com.google.android.play.core.splitinstall.SplitInstallManager
    /* renamed from: a */
    public final void mo103a(SplitInstallStateUpdatedListener splitInstallStateUpdatedListener) {
        m155c().mo103a(splitInstallStateUpdatedListener);
    }

    @Override // com.google.android.play.core.splitinstall.SplitInstallManager
    /* renamed from: b */
    public final void mo102b(SplitInstallStateUpdatedListener splitInstallStateUpdatedListener) {
        m155c().mo102b(splitInstallStateUpdatedListener);
    }

    @Override // com.google.android.play.core.splitinstall.SplitInstallManager
    public final Task<Void> cancelInstall(int i) {
        return m155c().cancelInstall(i);
    }

    @Override // com.google.android.play.core.splitinstall.SplitInstallManager
    public final Task<Void> deferredInstall(List<String> list) {
        return m155c().deferredInstall(list);
    }

    @Override // com.google.android.play.core.splitinstall.SplitInstallManager
    public final Task<Void> deferredLanguageInstall(List<Locale> list) {
        return m155c().deferredLanguageInstall(list);
    }

    @Override // com.google.android.play.core.splitinstall.SplitInstallManager
    public final Task<Void> deferredLanguageUninstall(List<Locale> list) {
        return m155c().deferredLanguageUninstall(list);
    }

    @Override // com.google.android.play.core.splitinstall.SplitInstallManager
    public final Task<Void> deferredUninstall(List<String> list) {
        return m155c().deferredUninstall(list);
    }

    @Override // com.google.android.play.core.splitinstall.SplitInstallManager
    public final Set<String> getInstalledLanguages() {
        return m155c().getInstalledLanguages();
    }

    @Override // com.google.android.play.core.splitinstall.SplitInstallManager
    public final Set<String> getInstalledModules() {
        return m155c().getInstalledModules();
    }

    @Override // com.google.android.play.core.splitinstall.SplitInstallManager
    public final Task<SplitInstallSessionState> getSessionState(int i) {
        return m155c().getSessionState(i);
    }

    @Override // com.google.android.play.core.splitinstall.SplitInstallManager
    public final Task<List<SplitInstallSessionState>> getSessionStates() {
        return m155c().getSessionStates();
    }

    @Override // com.google.android.play.core.splitinstall.SplitInstallManager
    public final void registerListener(SplitInstallStateUpdatedListener splitInstallStateUpdatedListener) {
        m155c().registerListener(splitInstallStateUpdatedListener);
    }

    @Override // com.google.android.play.core.splitinstall.SplitInstallManager
    public final boolean startConfirmationDialogForResult(SplitInstallSessionState splitInstallSessionState, Activity activity, int i) throws IntentSender.SendIntentException {
        return m155c().startConfirmationDialogForResult(splitInstallSessionState, activity, i);
    }

    @Override // com.google.android.play.core.splitinstall.SplitInstallManager
    public final boolean startConfirmationDialogForResult(SplitInstallSessionState splitInstallSessionState, IntentSenderForResultStarter intentSenderForResultStarter, int i) throws IntentSender.SendIntentException {
        return m155c().startConfirmationDialogForResult(splitInstallSessionState, intentSenderForResultStarter, i);
    }

    @Override // com.google.android.play.core.splitinstall.SplitInstallManager
    public final Task<Integer> startInstall(SplitInstallRequest splitInstallRequest) {
        return m155c().startInstall(splitInstallRequest);
    }

    @Override // com.google.android.play.core.splitinstall.SplitInstallManager
    public final void unregisterListener(SplitInstallStateUpdatedListener splitInstallStateUpdatedListener) {
        m155c().unregisterListener(splitInstallStateUpdatedListener);
    }
}
