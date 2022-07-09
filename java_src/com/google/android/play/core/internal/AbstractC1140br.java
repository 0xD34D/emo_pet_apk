package com.google.android.play.core.internal;

import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
/* renamed from: com.google.android.play.core.internal.br */
/* loaded from: classes.dex */
public abstract class AbstractC1140br implements Closeable {
    /* renamed from: a */
    public abstract long mo347a();

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: b */
    public abstract InputStream mo346b(long j, long j2) throws IOException;

    /* renamed from: c */
    public final synchronized InputStream m348c() throws IOException {
        return mo346b(0L, mo347a());
    }
}
