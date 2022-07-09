package com.google.android.play.core.splitcompat;

import java.io.IOException;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.zip.ZipFile;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.play.core.splitcompat.e */
/* loaded from: classes.dex */
public final class C1196e implements AbstractC1199h {

    /* renamed from: a */
    final /* synthetic */ C1208q f717a;

    /* renamed from: b */
    final /* synthetic */ Set f718b;

    /* renamed from: c */
    final /* synthetic */ AtomicBoolean f719c;

    /* renamed from: d */
    final /* synthetic */ C1202k f720d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1196e(C1202k kVar, C1208q qVar, Set set, AtomicBoolean atomicBoolean) {
        this.f720d = kVar;
        this.f717a = qVar;
        this.f718b = set;
        this.f719c = atomicBoolean;
    }

    @Override // com.google.android.play.core.splitcompat.AbstractC1199h
    /* renamed from: a */
    public final void mo211a(ZipFile zipFile, Set<C1201j> set) throws IOException {
        this.f720d.m204f(this.f717a, set, new C1195d(this));
    }
}
