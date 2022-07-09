package com.google.android.play.core.assetpacks;

import com.google.android.play.core.internal.AbstractC1154ce;
import com.google.android.play.core.internal.C1130bh;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
/* renamed from: com.google.android.play.core.assetpacks.s */
/* loaded from: classes.dex */
public final class C1081s implements AbstractC1154ce<Executor> {

    /* renamed from: a */
    private final /* synthetic */ int f570a = 0;

    public C1081s() {
    }

    public C1081s(byte[] bArr) {
    }

    public C1081s(char[] cArr) {
    }

    public C1081s(short[] sArr) {
    }

    /* renamed from: b */
    public static Executor m472b() {
        ExecutorService newSingleThreadExecutor = Executors.newSingleThreadExecutor(ThreadFactoryC1072k.f554a);
        C1130bh.m368k(newSingleThreadExecutor);
        return newSingleThreadExecutor;
    }

    /* renamed from: c */
    public static Executor m471c() {
        ExecutorService newSingleThreadExecutor = Executors.newSingleThreadExecutor(ThreadFactoryC1072k.f555b);
        C1130bh.m368k(newSingleThreadExecutor);
        return newSingleThreadExecutor;
    }

    /* renamed from: d */
    public static C1011be m470d() {
        return new C1011be();
    }

    /* renamed from: e */
    public static C1021bo m469e() {
        return new C1021bo();
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [java.util.concurrent.Executor, com.google.android.play.core.assetpacks.be] */
    /* JADX WARN: Type inference failed for: r0v4, types: [com.google.android.play.core.assetpacks.bo, java.util.concurrent.Executor] */
    @Override // com.google.android.play.core.internal.AbstractC1154ce
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ Executor mo94a() {
        int i = this.f570a;
        return i != 0 ? i != 1 ? i != 2 ? m469e() : m470d() : m471c() : m472b();
    }
}
