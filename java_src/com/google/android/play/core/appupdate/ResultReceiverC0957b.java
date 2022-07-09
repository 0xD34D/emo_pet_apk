package com.google.android.play.core.appupdate;

import android.os.Bundle;
import android.os.Handler;
import android.os.ResultReceiver;
import com.google.android.play.core.tasks.C1277i;
/* renamed from: com.google.android.play.core.appupdate.b */
/* loaded from: classes.dex */
final class ResultReceiverC0957b extends ResultReceiver {

    /* renamed from: a */
    final /* synthetic */ C1277i f116a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ResultReceiverC0957b(Handler handler, C1277i iVar) {
        super(handler);
        this.f116a = iVar;
    }

    @Override // android.os.ResultReceiver
    public final void onReceiveResult(int i, Bundle bundle) {
        C1277i iVar;
        int i2 = 1;
        if (i == 1) {
            iVar = this.f116a;
            i2 = -1;
        } else if (i != 2) {
            iVar = this.f116a;
        } else {
            iVar = this.f116a;
            i2 = 0;
        }
        iVar.m76e(Integer.valueOf(i2));
    }
}
