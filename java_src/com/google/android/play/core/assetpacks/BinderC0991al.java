package com.google.android.play.core.assetpacks;

import android.os.Bundle;
import com.google.android.play.core.tasks.C1277i;
/* renamed from: com.google.android.play.core.assetpacks.al */
/* loaded from: classes.dex */
final class BinderC0991al extends BinderC0986ag<AssetPackStates> {

    /* renamed from: c */
    private final C1021bo f233c;

    /* renamed from: d */
    private final AbstractC0998as f234d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public BinderC0991al(C0993an anVar, C1277i<AssetPackStates> iVar, C1021bo boVar, AbstractC0998as asVar) {
        super(anVar, iVar);
        this.f233c = boVar;
        this.f234d = asVar;
    }

    @Override // com.google.android.play.core.assetpacks.BinderC0986ag, com.google.android.play.core.internal.AbstractC1173v
    /* renamed from: f */
    public final void mo284f(Bundle bundle, Bundle bundle2) {
        super.mo284f(bundle, bundle2);
        this.f225a.m76e(AssetPackStates.m678d(bundle, this.f233c, this.f234d));
    }
}
