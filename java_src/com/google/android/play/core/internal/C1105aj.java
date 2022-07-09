package com.google.android.play.core.internal;

import com.google.android.play.core.tasks.C1277i;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.play.core.internal.aj */
/* loaded from: classes.dex */
public final class C1105aj extends AbstractRunnableC1103ah {

    /* renamed from: a */
    final /* synthetic */ AbstractRunnableC1103ah f609a;

    /* renamed from: b */
    final /* synthetic */ C1112aq f610b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1105aj(C1112aq aqVar, C1277i iVar, AbstractRunnableC1103ah ahVar) {
        super(iVar);
        this.f610b = aqVar;
        this.f609a = ahVar;
    }

    @Override // com.google.android.play.core.internal.AbstractRunnableC1103ah
    /* renamed from: a */
    public final void mo191a() {
        C1112aq.m430d(this.f610b, this.f609a);
    }
}
