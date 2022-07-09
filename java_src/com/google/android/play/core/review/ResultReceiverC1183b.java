package com.google.android.play.core.review;

import android.os.Bundle;
import android.os.Handler;
import android.os.ResultReceiver;
import com.google.android.play.core.tasks.C1277i;
/* renamed from: com.google.android.play.core.review.b */
/* loaded from: classes.dex */
final class ResultReceiverC1183b extends ResultReceiver {

    /* renamed from: a */
    final /* synthetic */ C1277i f694a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ResultReceiverC1183b(Handler handler, C1277i iVar) {
        super(handler);
        this.f694a = iVar;
    }

    @Override // android.os.ResultReceiver
    public final void onReceiveResult(int i, Bundle bundle) {
        this.f694a.m76e(null);
    }
}
