package com.google.android.play.core.splitinstall.testing;

import com.google.android.play.core.splitinstall.SplitInstallSessionState;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.play.core.splitinstall.testing.e */
/* loaded from: classes.dex */
public final /* synthetic */ class C1257e implements AbstractC1261i {

    /* renamed from: a */
    private final int f863a;

    /* renamed from: b */
    private final /* synthetic */ int f864b = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1257e(int i) {
        this.f863a = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1257e(int i, byte[] bArr) {
        this.f863a = i;
    }

    @Override // com.google.android.play.core.splitinstall.testing.AbstractC1261i
    /* renamed from: a */
    public final SplitInstallSessionState mo104a(SplitInstallSessionState splitInstallSessionState) {
        if (this.f864b == 0) {
            return FakeSplitInstallManager.m124g(this.f863a, splitInstallSessionState);
        }
        int i = this.f863a;
        int i2 = FakeSplitInstallManager.f834a;
        if (splitInstallSessionState == null) {
            return null;
        }
        return SplitInstallSessionState.create(splitInstallSessionState.sessionId(), 6, i, splitInstallSessionState.bytesDownloaded(), splitInstallSessionState.totalBytesToDownload(), splitInstallSessionState.moduleNames(), splitInstallSessionState.languages());
    }
}
