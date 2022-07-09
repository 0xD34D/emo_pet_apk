package com.google.android.play.core.review;

import android.app.Activity;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import com.google.android.play.core.common.PlayCoreDialogWrapperActivity;
import com.google.android.play.core.tasks.C1277i;
import com.google.android.play.core.tasks.Task;
/* renamed from: com.google.android.play.core.review.c */
/* loaded from: classes.dex */
public final class C1184c implements ReviewManager {

    /* renamed from: a */
    private final C1190i f695a;

    /* renamed from: b */
    private final Handler f696b = new Handler(Looper.getMainLooper());

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1184c(C1190i iVar) {
        this.f695a = iVar;
    }

    @Override // com.google.android.play.core.review.ReviewManager
    public final Task<Void> launchReviewFlow(Activity activity, ReviewInfo reviewInfo) {
        Intent intent = new Intent(activity, PlayCoreDialogWrapperActivity.class);
        intent.putExtra("confirmation_intent", reviewInfo.mo250a());
        intent.putExtra("window_flags", activity.getWindow().getDecorView().getWindowSystemUiVisibility());
        C1277i iVar = new C1277i();
        intent.putExtra("result_receiver", new ResultReceiverC1183b(this.f696b, iVar));
        activity.startActivity(intent);
        return iVar.m78c();
    }

    @Override // com.google.android.play.core.review.ReviewManager
    public final Task<ReviewInfo> requestReviewFlow() {
        return this.f695a.m248a();
    }
}
