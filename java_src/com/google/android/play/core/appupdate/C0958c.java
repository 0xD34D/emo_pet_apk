package com.google.android.play.core.appupdate;

import android.app.Activity;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import com.google.android.play.core.common.IntentSenderForResultStarter;
/* renamed from: com.google.android.play.core.appupdate.c */
/* loaded from: classes.dex */
final class C0958c implements IntentSenderForResultStarter {

    /* renamed from: a */
    final /* synthetic */ Activity f117a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0958c(Activity activity) {
        this.f117a = activity;
    }

    @Override // com.google.android.play.core.common.IntentSenderForResultStarter
    public final void startIntentSenderForResult(IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4, Bundle bundle) throws IntentSender.SendIntentException {
        this.f117a.startIntentSenderForResult(intentSender, i, intent, i2, i3, i4, bundle);
    }
}
