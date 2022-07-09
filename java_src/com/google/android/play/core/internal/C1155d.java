package com.google.android.play.core.internal;

import java.io.IOException;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.security.MessageDigest;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.play.core.internal.d */
/* loaded from: classes.dex */
public final class C1155d implements AbstractC1149c {

    /* renamed from: a */
    private final FileChannel f665a;

    /* renamed from: b */
    private final long f666b;

    /* renamed from: c */
    private final long f667c;

    public C1155d(FileChannel fileChannel, long j, long j2) {
        this.f665a = fileChannel;
        this.f666b = j;
        this.f667c = j2;
    }

    @Override // com.google.android.play.core.internal.AbstractC1149c
    /* renamed from: a */
    public final long mo337a() {
        return this.f667c;
    }

    @Override // com.google.android.play.core.internal.AbstractC1149c
    /* renamed from: b */
    public final void mo336b(MessageDigest[] messageDigestArr, long j, int i) throws IOException {
        MappedByteBuffer map = this.f665a.map(FileChannel.MapMode.READ_ONLY, this.f666b + j, i);
        map.load();
        for (MessageDigest messageDigest : messageDigestArr) {
            map.position(0);
            messageDigest.update(map);
        }
    }
}
