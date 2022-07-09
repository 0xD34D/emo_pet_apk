package com.google.android.play.core.assetpacks;

import com.google.android.play.core.tasks.OnSuccessListener;
import java.util.List;
/* renamed from: com.google.android.play.core.assetpacks.f */
/* loaded from: classes.dex */
final /* synthetic */ class C1067f implements OnSuccessListener {

    /* renamed from: a */
    private final C1000au f529a;

    private C1067f(C1000au auVar) {
        this.f529a = auVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static OnSuccessListener m489a(C1000au auVar) {
        return new C1067f(auVar);
    }

    @Override // com.google.android.play.core.tasks.OnSuccessListener
    public final void onSuccess(Object obj) {
        this.f529a.m651A((List) obj);
    }
}
