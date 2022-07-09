package com.google.android.play.core.internal;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.play.core.internal.b */
/* loaded from: classes.dex */
public final class C1122b implements AbstractC1149c {

    /* renamed from: a */
    private final ByteBuffer f643a;

    public C1122b(ByteBuffer byteBuffer) {
        this.f643a = byteBuffer.slice();
    }

    @Override // com.google.android.play.core.internal.AbstractC1149c
    /* renamed from: a */
    public final long mo337a() {
        return this.f643a.capacity();
    }

    @Override // com.google.android.play.core.internal.AbstractC1149c
    /* renamed from: b */
    public final void mo336b(MessageDigest[] messageDigestArr, long j, int i) throws IOException {
        ByteBuffer slice;
        synchronized (this.f643a) {
            int i2 = (int) j;
            this.f643a.position(i2);
            this.f643a.limit(i2 + i);
            slice = this.f643a.slice();
        }
        for (MessageDigest messageDigest : messageDigestArr) {
            slice.position(0);
            messageDigest.update(slice);
        }
    }
}
