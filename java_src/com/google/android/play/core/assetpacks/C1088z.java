package com.google.android.play.core.assetpacks;

import android.os.RemoteException;
import com.google.android.play.core.internal.AbstractC1171t;
import com.google.android.play.core.internal.AbstractRunnableC1103ah;
import com.google.android.play.core.internal.C1102ag;
import com.google.android.play.core.internal.C1112aq;
import com.google.android.play.core.tasks.C1277i;
import java.util.Map;
/* renamed from: com.google.android.play.core.assetpacks.z */
/* loaded from: classes.dex */
final class C1088z extends AbstractRunnableC1103ah {

    /* renamed from: a */
    final /* synthetic */ Map f586a;

    /* renamed from: b */
    final /* synthetic */ C1277i f587b;

    /* renamed from: c */
    final /* synthetic */ C0993an f588c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1088z(C0993an anVar, C1277i iVar, Map map, C1277i iVar2) {
        super(iVar);
        this.f588c = anVar;
        this.f586a = map;
        this.f587b = iVar2;
    }

    @Override // com.google.android.play.core.internal.AbstractRunnableC1103ah
    /* renamed from: a */
    protected final void mo191a() {
        C1102ag agVar;
        C1112aq aqVar;
        String str;
        try {
            aqVar = this.f588c.f241e;
            str = this.f588c.f239c;
            ((AbstractC1171t) aqVar.m431c()).mo296e(str, C0993an.m668m(this.f586a), new BinderC0988ai(this.f588c, this.f587b));
        } catch (RemoteException e) {
            agVar = C0993an.f237a;
            agVar.m441c(e, "syncPacks", new Object[0]);
            this.f587b.m77d(new RuntimeException(e));
        }
    }
}
