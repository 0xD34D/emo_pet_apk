package com.google.android.play.core.splitinstall;

import android.os.RemoteException;
import com.google.android.play.core.internal.AbstractRunnableC1103ah;
import com.google.android.play.core.internal.C1102ag;
import com.google.android.play.core.tasks.C1277i;
import java.util.ArrayList;
import java.util.Collection;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.play.core.splitinstall.ad */
/* loaded from: classes.dex */
public final class C1213ad extends AbstractRunnableC1103ah {

    /* renamed from: a */
    final /* synthetic */ Collection f759a;

    /* renamed from: b */
    final /* synthetic */ Collection f760b;

    /* renamed from: c */
    final /* synthetic */ C1277i f761c;

    /* renamed from: d */
    final /* synthetic */ C1230au f762d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1213ad(C1230au auVar, C1277i iVar, Collection collection, Collection collection2, C1277i iVar2) {
        super(iVar);
        this.f762d = auVar;
        this.f759a = collection;
        this.f760b = collection2;
        this.f761c = iVar2;
    }

    @Override // com.google.android.play.core.internal.AbstractRunnableC1103ah
    /* renamed from: a */
    protected final void mo191a() {
        C1102ag agVar;
        String str;
        ArrayList i = C1230au.m170i(this.f759a);
        i.addAll(C1230au.m169j(this.f760b));
        try {
            str = this.f762d.f788d;
            this.f762d.f787a.m431c().mo360c(str, i, C1230au.m167l(), new BinderC1228as(this.f762d, this.f761c));
        } catch (RemoteException e) {
            agVar = C1230au.f785b;
            agVar.m441c(e, "startInstall(%s,%s)", this.f759a, this.f760b);
            this.f761c.m77d(new RuntimeException(e));
        }
    }
}
