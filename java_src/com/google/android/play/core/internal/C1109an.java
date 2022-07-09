package com.google.android.play.core.internal;

import android.os.IBinder;
import android.os.IInterface;
import java.util.List;
/* renamed from: com.google.android.play.core.internal.an */
/* loaded from: classes.dex */
final class C1109an extends AbstractRunnableC1103ah {

    /* renamed from: a */
    final /* synthetic */ IBinder f612a;

    /* renamed from: b */
    final /* synthetic */ ServiceConnectionC1111ap f613b;

    public C1109an(ServiceConnectionC1111ap apVar, IBinder iBinder) {
        this.f613b = apVar;
        this.f612a = iBinder;
    }

    @Override // com.google.android.play.core.internal.AbstractRunnableC1103ah
    /* renamed from: a */
    public final void mo191a() {
        AbstractC1108am amVar;
        List<Runnable> list;
        List list2;
        C1112aq aqVar = this.f613b.f615a;
        amVar = aqVar.f623h;
        aqVar.f627l = (IInterface) amVar.mo192a(this.f612a);
        C1112aq.m424j(this.f613b.f615a);
        this.f613b.f615a.f621f = false;
        list = this.f613b.f615a.f620e;
        for (Runnable runnable : list) {
            runnable.run();
        }
        list2 = this.f613b.f615a.f620e;
        list2.clear();
    }
}
