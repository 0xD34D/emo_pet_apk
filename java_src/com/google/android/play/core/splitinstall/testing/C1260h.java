package com.google.android.play.core.splitinstall.testing;

import com.google.android.play.core.splitinstall.AbstractC1235d;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.play.core.splitinstall.testing.h */
/* loaded from: classes.dex */
public final class C1260h implements AbstractC1235d {

    /* renamed from: a */
    final /* synthetic */ List f873a;

    /* renamed from: b */
    final /* synthetic */ List f874b;

    /* renamed from: c */
    final /* synthetic */ long f875c;

    /* renamed from: d */
    final /* synthetic */ boolean f876d;

    /* renamed from: e */
    final /* synthetic */ List f877e;

    /* renamed from: f */
    final /* synthetic */ FakeSplitInstallManager f878f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1260h(FakeSplitInstallManager fakeSplitInstallManager, List list, List list2, long j, boolean z, List list3) {
        this.f878f = fakeSplitInstallManager;
        this.f873a = list;
        this.f874b = list2;
        this.f875c = j;
        this.f876d = z;
        this.f877e = list3;
    }

    @Override // com.google.android.play.core.splitinstall.AbstractC1235d
    /* renamed from: a */
    public final void mo107a() {
        this.f878f.m109v(this.f873a, this.f874b, this.f875c);
    }

    @Override // com.google.android.play.core.splitinstall.AbstractC1235d
    /* renamed from: b */
    public final void mo106b() {
        if (!this.f876d) {
            this.f878f.m110u(this.f877e, this.f873a, this.f874b, this.f875c, true);
        }
    }

    @Override // com.google.android.play.core.splitinstall.AbstractC1235d
    /* renamed from: c */
    public final void mo105c(int i) {
        this.f878f.m108w(i);
    }
}
