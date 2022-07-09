package com.google.android.play.core.assetpacks;

import com.google.android.play.core.tasks.OnFailureListener;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.play.core.assetpacks.g */
/* loaded from: classes.dex */
public final /* synthetic */ class C1068g implements OnFailureListener {

    /* renamed from: a */
    static final OnFailureListener f530a = new C1068g();

    private C1068g() {
    }

    @Override // com.google.android.play.core.tasks.OnFailureListener
    public final void onFailure(Exception exc) {
        C1070i.f533a.m439e(String.format("Could not sync active asset packs. %s", exc), new Object[0]);
    }
}
