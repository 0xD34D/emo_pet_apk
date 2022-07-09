package com.google.android.play.core.assetpacks;
/* renamed from: com.google.android.play.core.assetpacks.cs */
/* loaded from: classes.dex */
final /* synthetic */ class RunnableC1052cs implements Runnable {

    /* renamed from: a */
    private final C1000au f469a;

    private RunnableC1052cs(C1000au auVar) {
        this.f469a = auVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static Runnable m527a(C1000au auVar) {
        return new RunnableC1052cs(auVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f469a.m617s();
    }
}
