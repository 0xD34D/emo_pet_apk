package com.google.android.play.core.review;

import com.google.android.play.core.tasks.AbstractC1278j;
/* renamed from: com.google.android.play.core.review.e */
/* loaded from: classes.dex */
final class C1186e extends AbstractC1278j {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C1186e() {
        super("Play Store app is either not installed or not the official version");
    }

    @Override // com.google.android.play.core.tasks.AbstractC1278j
    public final int getErrorCode() {
        return -1;
    }
}
