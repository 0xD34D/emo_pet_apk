package com.google.android.play.core.splitinstall.testing;

import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.play.core.splitinstall.testing.g */
/* loaded from: classes.dex */
public final /* synthetic */ class RunnableC1259g implements Runnable {

    /* renamed from: a */
    private final FakeSplitInstallManager f867a;

    /* renamed from: b */
    private final List f868b;

    /* renamed from: c */
    private final List f869c;

    /* renamed from: d */
    private final List f870d;

    /* renamed from: e */
    private final long f871e;

    /* renamed from: f */
    private final /* synthetic */ int f872f = 1;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC1259g(FakeSplitInstallManager fakeSplitInstallManager, long j, List list, List list2, List list3) {
        this.f867a = fakeSplitInstallManager;
        this.f871e = j;
        this.f868b = list;
        this.f869c = list2;
        this.f870d = list3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC1259g(FakeSplitInstallManager fakeSplitInstallManager, List list, List list2, List list3, long j) {
        this.f867a = fakeSplitInstallManager;
        this.f868b = list;
        this.f869c = list2;
        this.f870d = list3;
        this.f871e = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f872f != 0) {
            this.f867a.m126e(this.f871e, this.f868b, this.f869c, this.f870d);
        } else {
            this.f867a.m127d(this.f868b, this.f869c, this.f870d, this.f871e);
        }
    }
}
