package com.google.android.play.core.splitcompat;

import java.io.IOException;
import java.util.Set;
import java.util.zip.ZipFile;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.play.core.splitcompat.f */
/* loaded from: classes.dex */
public final class C1197f implements AbstractC1199h {

    /* renamed from: a */
    final /* synthetic */ Set f721a;

    /* renamed from: b */
    final /* synthetic */ C1208q f722b;

    /* renamed from: c */
    final /* synthetic */ C1202k f723c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1197f(C1202k kVar, Set set, C1208q qVar) {
        this.f723c = kVar;
        this.f721a = set;
        this.f722b = qVar;
    }

    @Override // com.google.android.play.core.splitcompat.AbstractC1199h
    /* renamed from: a */
    public final void mo211a(ZipFile zipFile, Set<C1201j> set) throws IOException {
        this.f721a.addAll(C1202k.m206d(this.f723c, set, this.f722b, zipFile));
    }
}
