package com.google.android.play.core.assetpacks;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.play.core.internal.AbstractC1171t;
import com.google.android.play.core.internal.AbstractRunnableC1103ah;
import com.google.android.play.core.internal.C1102ag;
import com.google.android.play.core.internal.C1112aq;
import com.google.android.play.core.tasks.C1277i;
/* renamed from: com.google.android.play.core.assetpacks.ae */
/* loaded from: classes.dex */
final class C0984ae extends AbstractRunnableC1103ah {

    /* renamed from: a */
    final /* synthetic */ int f217a;

    /* renamed from: b */
    final /* synthetic */ String f218b;

    /* renamed from: c */
    final /* synthetic */ String f219c;

    /* renamed from: d */
    final /* synthetic */ int f220d;

    /* renamed from: e */
    final /* synthetic */ C1277i f221e;

    /* renamed from: f */
    final /* synthetic */ C0993an f222f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0984ae(C0993an anVar, C1277i iVar, int i, String str, String str2, int i2, C1277i iVar2) {
        super(iVar);
        this.f222f = anVar;
        this.f217a = i;
        this.f218b = str;
        this.f219c = str2;
        this.f220d = i2;
        this.f221e = iVar2;
    }

    @Override // com.google.android.play.core.internal.AbstractRunnableC1103ah
    /* renamed from: a */
    protected final void mo191a() {
        C1102ag agVar;
        C1112aq aqVar;
        String str;
        Bundle C;
        try {
            aqVar = this.f222f.f241e;
            str = this.f222f.f239c;
            Bundle r = C0993an.m663r(this.f217a, this.f218b, this.f219c, this.f220d);
            C = C0993an.m671C();
            ((AbstractC1171t) aqVar.m431c()).mo291j(str, r, C, new BinderC0987ah(this.f222f, this.f221e));
        } catch (RemoteException e) {
            agVar = C0993an.f237a;
            agVar.m442b("getChunkFileDescriptor(%s, %s, %d, session=%d)", this.f218b, this.f219c, Integer.valueOf(this.f220d), Integer.valueOf(this.f217a));
            this.f221e.m77d(new RuntimeException(e));
        }
    }
}
