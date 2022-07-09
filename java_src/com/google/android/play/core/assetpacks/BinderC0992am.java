package com.google.android.play.core.assetpacks;

import android.os.Bundle;
import com.google.android.play.core.tasks.C1277i;
import java.util.List;
/* renamed from: com.google.android.play.core.assetpacks.am */
/* loaded from: classes.dex */
final class BinderC0992am extends BinderC0986ag<AssetPackStates> {

    /* renamed from: c */
    private final List<String> f235c;

    /* renamed from: d */
    private final C1021bo f236d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public BinderC0992am(C0993an anVar, C1277i<AssetPackStates> iVar, C1021bo boVar, List<String> list) {
        super(anVar, iVar);
        this.f236d = boVar;
        this.f235c = list;
    }

    @Override // com.google.android.play.core.assetpacks.BinderC0986ag, com.google.android.play.core.internal.AbstractC1173v
    /* renamed from: b */
    public final void mo288b(int i, Bundle bundle) {
        super.mo288b(i, bundle);
        this.f225a.m76e(AssetPackStates.m679c(bundle, this.f236d, this.f235c));
    }
}
