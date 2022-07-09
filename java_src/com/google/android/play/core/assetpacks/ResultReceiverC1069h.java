package com.google.android.play.core.assetpacks;

import android.os.Bundle;
import android.os.Handler;
import android.os.ResultReceiver;
import com.google.android.play.core.tasks.C1277i;
/* renamed from: com.google.android.play.core.assetpacks.h */
/* loaded from: classes.dex */
final class ResultReceiverC1069h extends ResultReceiver {

    /* renamed from: a */
    final /* synthetic */ C1277i f531a;

    /* renamed from: b */
    final /* synthetic */ C1070i f532b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ResultReceiverC1069h(C1070i iVar, Handler handler, C1277i iVar2) {
        super(handler);
        this.f532b = iVar;
        this.f531a = iVar2;
    }

    @Override // android.os.ResultReceiver
    public final void onReceiveResult(int i, Bundle bundle) {
        C1011be beVar;
        if (i == 1) {
            this.f531a.m76e(-1);
            beVar = this.f532b.f540h;
            beVar.m598a(null);
        } else if (i != 2) {
            this.f531a.m77d(new AssetPackException(-100));
        } else {
            this.f531a.m76e(0);
        }
    }
}
