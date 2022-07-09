package com.google.android.play.core.assetpacks;

import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.play.core.assetpacks.bt */
/* loaded from: classes.dex */
public final /* synthetic */ class C1026bt implements AbstractC1032bz {

    /* renamed from: a */
    private final C1034ca f383a;

    /* renamed from: b */
    private final List f384b;

    /* renamed from: c */
    private final /* synthetic */ int f385c = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1026bt(C1034ca caVar, List list) {
        this.f383a = caVar;
        this.f384b = list;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1026bt(C1034ca caVar, List list, byte[] bArr) {
        this.f383a = caVar;
        this.f384b = list;
    }

    @Override // com.google.android.play.core.assetpacks.AbstractC1032bz
    /* renamed from: a */
    public final Object mo581a() {
        return this.f385c != 0 ? this.f383a.m570j(this.f384b) : this.f383a.m571i(this.f384b);
    }
}
