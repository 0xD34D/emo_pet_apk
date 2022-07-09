package com.google.android.play.core.internal;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.play.core.internal.bb */
/* loaded from: classes.dex */
public final class C1124bb implements AbstractC1121az {

    /* renamed from: a */
    private final /* synthetic */ int f645a = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1124bb() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1124bb(byte[] bArr) {
    }

    @Override // com.google.android.play.core.internal.AbstractC1121az
    /* renamed from: a */
    public final Object[] mo387a(Object obj, ArrayList arrayList, File file, ArrayList arrayList2) {
        return (Object[]) (this.f645a != 0 ? C1130bh.m377b(obj, "makeDexElements", Object[].class, ArrayList.class, arrayList, File.class, file, ArrayList.class, arrayList2) : C1130bh.m377b(obj, "makePathElements", Object[].class, List.class, arrayList, File.class, file, List.class, arrayList2));
    }
}
