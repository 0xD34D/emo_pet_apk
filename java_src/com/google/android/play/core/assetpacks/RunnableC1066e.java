package com.google.android.play.core.assetpacks;
/* renamed from: com.google.android.play.core.assetpacks.e */
/* loaded from: classes.dex */
final /* synthetic */ class RunnableC1066e implements Runnable {

    /* renamed from: a */
    private final C1070i f527a;

    /* renamed from: b */
    private final /* synthetic */ int f528b = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC1066e(C1070i iVar) {
        this.f527a = iVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC1066e(C1070i iVar, byte[] bArr) {
        this.f527a = iVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f528b != 0) {
            this.f527a.m485d();
        } else {
            this.f527a.m486c();
        }
    }
}
