package com.google.android.play.core.internal;

import java.io.IOException;
import java.io.InputStream;
/* renamed from: com.google.android.play.core.internal.bs */
/* loaded from: classes.dex */
public final class C1141bs extends AbstractC1140br {

    /* renamed from: a */
    private final AbstractC1140br f653a;

    /* renamed from: b */
    private final long f654b;

    /* renamed from: c */
    private final long f655c;

    public C1141bs(AbstractC1140br brVar, long j, long j2) {
        this.f653a = brVar;
        long d = m345d(j);
        this.f654b = d;
        this.f655c = m345d(d + j2);
    }

    /* renamed from: d */
    private final long m345d(long j) {
        if (j < 0) {
            return 0L;
        }
        return j > this.f653a.mo347a() ? this.f653a.mo347a() : j;
    }

    @Override // com.google.android.play.core.internal.AbstractC1140br
    /* renamed from: a */
    public final long mo347a() {
        return this.f655c - this.f654b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.play.core.internal.AbstractC1140br
    /* renamed from: b */
    public final InputStream mo346b(long j, long j2) throws IOException {
        long d = m345d(this.f654b);
        return this.f653a.mo346b(d, m345d(j2 + d) - d);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
    }
}
