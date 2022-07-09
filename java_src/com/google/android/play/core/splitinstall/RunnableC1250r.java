package com.google.android.play.core.splitinstall;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.play.core.splitinstall.r */
/* loaded from: classes.dex */
public final class RunnableC1250r implements Runnable {

    /* renamed from: a */
    final /* synthetic */ SplitInstallSessionState f824a;

    /* renamed from: b */
    final /* synthetic */ int f825b;

    /* renamed from: c */
    final /* synthetic */ int f826c;

    /* renamed from: d */
    final /* synthetic */ C1251s f827d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC1250r(C1251s sVar, SplitInstallSessionState splitInstallSessionState, int i, int i2) {
        this.f827d = sVar;
        this.f824a = splitInstallSessionState;
        this.f825b = i;
        this.f826c = i2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C1251s sVar = this.f827d;
        SplitInstallSessionState splitInstallSessionState = this.f824a;
        sVar.m131k(new C1209a(splitInstallSessionState.sessionId(), this.f825b, this.f826c, splitInstallSessionState.bytesDownloaded(), splitInstallSessionState.totalBytesToDownload(), splitInstallSessionState.mo195a(), splitInstallSessionState.mo194b(), splitInstallSessionState.resolutionIntent(), splitInstallSessionState.mo193c()));
    }
}
