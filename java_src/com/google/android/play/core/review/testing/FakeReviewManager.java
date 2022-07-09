package com.google.android.play.core.review.testing;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import com.google.android.play.core.review.ReviewInfo;
import com.google.android.play.core.review.ReviewManager;
import com.google.android.play.core.tasks.Task;
import com.google.android.play.core.tasks.Tasks;
/* loaded from: classes.dex */
public class FakeReviewManager implements ReviewManager {

    /* renamed from: a */
    private final Context f706a;

    /* renamed from: b */
    private ReviewInfo f707b;

    public FakeReviewManager(Context context) {
        this.f706a = context;
    }

    @Override // com.google.android.play.core.review.ReviewManager
    public Task<Void> launchReviewFlow(Activity activity, ReviewInfo reviewInfo) {
        return reviewInfo != this.f707b ? Tasks.m92b(new C1191a()) : Tasks.m93a(null);
    }

    @Override // com.google.android.play.core.review.ReviewManager
    public Task<ReviewInfo> requestReviewFlow() {
        ReviewInfo b = ReviewInfo.m251b(PendingIntent.getBroadcast(this.f706a, 0, new Intent(), 0));
        this.f707b = b;
        return Tasks.m93a(b);
    }
}
