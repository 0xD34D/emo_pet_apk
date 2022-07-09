package com.google.android.play.core.review;

import android.os.RemoteException;
import com.google.android.play.core.common.PlayCoreVersion;
import com.google.android.play.core.internal.AbstractRunnableC1103ah;
import com.google.android.play.core.internal.C1102ag;
import com.google.android.play.core.tasks.C1277i;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.play.core.review.f */
/* loaded from: classes.dex */
public final class C1187f extends AbstractRunnableC1103ah {

    /* renamed from: a */
    final /* synthetic */ C1277i f698a;

    /* renamed from: b */
    final /* synthetic */ C1190i f699b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1187f(C1190i iVar, C1277i iVar2, C1277i iVar3) {
        super(iVar2);
        this.f699b = iVar;
        this.f698a = iVar3;
    }

    @Override // com.google.android.play.core.internal.AbstractRunnableC1103ah
    /* renamed from: a */
    protected final void mo191a() {
        C1102ag agVar;
        String str;
        String str2;
        try {
            str2 = this.f699b.f705c;
            this.f699b.f704a.m431c().mo447c(str2, PlayCoreVersion.m456b("review"), new BinderC1189h(this.f699b, this.f698a));
        } catch (RemoteException e) {
            agVar = C1190i.f703b;
            str = this.f699b.f705c;
            agVar.m441c(e, "error requesting in-app review for %s", str);
            this.f698a.m77d(new RuntimeException(e));
        }
    }
}
