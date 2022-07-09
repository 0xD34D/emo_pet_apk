package com.google.android.play.core.review;

import android.app.Activity;
import com.google.android.play.core.tasks.Task;
/* loaded from: classes.dex */
public interface ReviewManager {
    Task<Void> launchReviewFlow(Activity activity, ReviewInfo reviewInfo);

    Task<ReviewInfo> requestReviewFlow();
}
