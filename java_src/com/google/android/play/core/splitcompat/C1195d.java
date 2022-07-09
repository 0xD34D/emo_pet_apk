package com.google.android.play.core.splitcompat;

import java.io.File;
import java.io.IOException;
/* renamed from: com.google.android.play.core.splitcompat.d */
/* loaded from: classes.dex */
final class C1195d implements AbstractC1200i {

    /* renamed from: a */
    final /* synthetic */ C1196e f716a;

    public C1195d(C1196e eVar) {
        this.f716a = eVar;
    }

    @Override // com.google.android.play.core.splitcompat.AbstractC1200i
    /* renamed from: a */
    public final void mo210a(C1201j jVar, File file, boolean z) throws IOException {
        this.f716a.f718b.add(file);
        if (!z) {
            this.f716a.f719c.set(false);
        }
    }
}
