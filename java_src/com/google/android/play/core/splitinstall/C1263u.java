package com.google.android.play.core.splitinstall;

import android.app.Activity;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import com.google.android.play.core.common.IntentSenderForResultStarter;
/* renamed from: com.google.android.play.core.splitinstall.u */
/* loaded from: classes.dex */
final class C1263u implements IntentSenderForResultStarter {

    /* renamed from: a */
    final /* synthetic */ Activity f882a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1263u(Activity activity) {
        this.f882a = activity;
    }

    @Override // com.google.android.play.core.common.IntentSenderForResultStarter
    public final void startIntentSenderForResult(IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4, Bundle bundle) throws IntentSender.SendIntentException {
        this.f882a.startIntentSenderForResult(intentSender, i, intent, i2, i3, i4);
    }
}
