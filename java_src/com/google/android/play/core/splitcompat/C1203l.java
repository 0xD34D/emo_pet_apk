package com.google.android.play.core.splitcompat;

import com.google.android.play.core.splitinstall.AbstractC1246n;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.play.core.splitcompat.l */
/* loaded from: classes.dex */
public final class C1203l implements AbstractC1246n {

    /* renamed from: a */
    final /* synthetic */ SplitCompat f732a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1203l(SplitCompat splitCompat) {
        this.f732a = splitCompat;
    }

    @Override // com.google.android.play.core.splitinstall.AbstractC1246n
    /* renamed from: a */
    public final Set<String> mo145a() {
        Set<String> f;
        f = this.f732a.m240f();
        return f;
    }
}
