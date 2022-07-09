package com.google.android.play.core.internal;

import java.io.File;
import java.util.List;
/* renamed from: com.google.android.play.core.internal.bd */
/* loaded from: classes.dex */
final class C1126bd implements AbstractC1125bc {

    /* renamed from: a */
    private final /* synthetic */ int f646a = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1126bd() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1126bd(byte[] bArr) {
    }

    @Override // com.google.android.play.core.internal.AbstractC1125bc
    /* renamed from: a */
    public final Object[] mo386a(Object obj, List list, List list2) {
        return (Object[]) (this.f646a != 0 ? C1130bh.m377b(obj, "makePathElements", Object[].class, List.class, list, File.class, null, List.class, list2) : C1130bh.m378a(obj, "makePathElements", Object[].class, List.class, list));
    }
}
