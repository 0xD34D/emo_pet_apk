package com.google.android.play.core.review;

import android.content.Context;
import android.content.Intent;
import com.google.android.play.core.internal.AbstractC1098ac;
import com.google.android.play.core.internal.C1102ag;
import com.google.android.play.core.internal.C1112aq;
import com.google.android.play.core.internal.C1138bp;
import com.google.android.play.core.tasks.C1277i;
import com.google.android.play.core.tasks.Task;
import com.google.android.play.core.tasks.Tasks;
/* renamed from: com.google.android.play.core.review.i */
/* loaded from: classes.dex */
public final class C1190i {

    /* renamed from: b */
    private static final C1102ag f703b = new C1102ag("ReviewService");

    /* renamed from: a */
    C1112aq<AbstractC1098ac> f704a;

    /* renamed from: c */
    private final String f705c;

    public C1190i(Context context) {
        this.f705c = context.getPackageName();
        if (C1138bp.m350a(context)) {
            this.f704a = new C1112aq<>(context, f703b, "com.google.android.finsky.inappreviewservice.InAppReviewService", new Intent("com.google.android.finsky.BIND_IN_APP_REVIEW_SERVICE").setPackage("com.android.vending"), C1185d.f697a);
        }
    }

    /* renamed from: a */
    public final Task<ReviewInfo> m248a() {
        C1102ag agVar = f703b;
        agVar.m440d("requestInAppReview (%s)", this.f705c);
        if (this.f704a == null) {
            agVar.m442b("Play Store app is either not installed or not the official version", new Object[0]);
            return Tasks.m92b(new C1186e());
        }
        C1277i iVar = new C1277i();
        this.f704a.m433a(new C1187f(this, iVar, iVar));
        return iVar.m78c();
    }
}
