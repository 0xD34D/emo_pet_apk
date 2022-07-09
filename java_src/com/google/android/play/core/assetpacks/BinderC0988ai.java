package com.google.android.play.core.assetpacks;

import android.os.Bundle;
import com.google.android.play.core.tasks.C1277i;
import java.util.List;
/* renamed from: com.google.android.play.core.assetpacks.ai */
/* loaded from: classes.dex */
final class BinderC0988ai extends BinderC0986ag<List<String>> {

    /* renamed from: c */
    final /* synthetic */ C0993an f227c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BinderC0988ai(C0993an anVar, C1277i<List<String>> iVar) {
        super(anVar, iVar);
        this.f227c = anVar;
    }

    @Override // com.google.android.play.core.assetpacks.BinderC0986ag, com.google.android.play.core.internal.AbstractC1173v
    /* renamed from: c */
    public final void mo287c(List<Bundle> list) {
        super.mo287c(list);
        this.f225a.m76e(C0993an.m659v(this.f227c, list));
    }
}
