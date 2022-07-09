package com.google.android.play.core.assetpacks;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.play.core.internal.AbstractBinderC1172u;
import com.google.android.play.core.internal.C1102ag;
import com.google.android.play.core.internal.C1112aq;
import com.google.android.play.core.tasks.C1277i;
import java.util.List;
/* renamed from: com.google.android.play.core.assetpacks.ag */
/* loaded from: classes.dex */
class BinderC0986ag<T> extends AbstractBinderC1172u {

    /* renamed from: a */
    final C1277i<T> f225a;

    /* renamed from: b */
    final /* synthetic */ C0993an f226b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public BinderC0986ag(C0993an anVar, C1277i<T> iVar) {
        this.f226b = anVar;
        this.f225a = iVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public BinderC0986ag(C0993an anVar, C1277i iVar, byte[] bArr) {
        this(anVar, iVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public BinderC0986ag(C0993an anVar, C1277i iVar, char[] cArr) {
        this(anVar, iVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public BinderC0986ag(C0993an anVar, C1277i iVar, int[] iArr) {
        this(anVar, iVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public BinderC0986ag(C0993an anVar, C1277i iVar, short[] sArr) {
        this(anVar, iVar);
    }

    @Override // com.google.android.play.core.internal.AbstractC1173v
    /* renamed from: b */
    public void mo288b(int i, Bundle bundle) {
        C1112aq aqVar;
        C1102ag agVar;
        aqVar = this.f226b.f241e;
        aqVar.m432b();
        agVar = C0993an.f237a;
        agVar.m440d("onStartDownload(%d)", Integer.valueOf(i));
    }

    @Override // com.google.android.play.core.internal.AbstractC1173v
    /* renamed from: c */
    public void mo287c(List<Bundle> list) {
        C1112aq aqVar;
        C1102ag agVar;
        aqVar = this.f226b.f241e;
        aqVar.m432b();
        agVar = C0993an.f237a;
        agVar.m440d("onGetSessionStates", new Object[0]);
    }

    @Override // com.google.android.play.core.internal.AbstractC1173v
    /* renamed from: d */
    public void mo286d(Bundle bundle, Bundle bundle2) {
        C1112aq aqVar;
        C1102ag agVar;
        aqVar = this.f226b.f242f;
        aqVar.m432b();
        agVar = C0993an.f237a;
        agVar.m440d("onKeepAlive(%b)", Boolean.valueOf(bundle.getBoolean("keep_alive")));
    }

    @Override // com.google.android.play.core.internal.AbstractC1173v
    /* renamed from: e */
    public void mo285e(Bundle bundle, Bundle bundle2) throws RemoteException {
        C1112aq aqVar;
        C1102ag agVar;
        aqVar = this.f226b.f241e;
        aqVar.m432b();
        agVar = C0993an.f237a;
        agVar.m440d("onGetChunkFileDescriptor", new Object[0]);
    }

    @Override // com.google.android.play.core.internal.AbstractC1173v
    /* renamed from: f */
    public void mo284f(Bundle bundle, Bundle bundle2) {
        C1112aq aqVar;
        C1102ag agVar;
        aqVar = this.f226b.f241e;
        aqVar.m432b();
        agVar = C0993an.f237a;
        agVar.m440d("onRequestDownloadInfo()", new Object[0]);
    }

    @Override // com.google.android.play.core.internal.AbstractC1173v
    /* renamed from: g */
    public void mo283g(Bundle bundle) {
        C1112aq aqVar;
        C1102ag agVar;
        aqVar = this.f226b.f241e;
        aqVar.m432b();
        int i = bundle.getInt("error_code");
        agVar = C0993an.f237a;
        agVar.m442b("onError(%d)", Integer.valueOf(i));
        this.f225a.m77d(new AssetPackException(i));
    }

    @Override // com.google.android.play.core.internal.AbstractC1173v
    /* renamed from: h */
    public final void mo282h(int i) {
        C1112aq aqVar;
        C1102ag agVar;
        aqVar = this.f226b.f241e;
        aqVar.m432b();
        agVar = C0993an.f237a;
        agVar.m440d("onCancelDownload(%d)", Integer.valueOf(i));
    }

    @Override // com.google.android.play.core.internal.AbstractC1173v
    /* renamed from: i */
    public void mo281i() {
        C1112aq aqVar;
        C1102ag agVar;
        aqVar = this.f226b.f241e;
        aqVar.m432b();
        agVar = C0993an.f237a;
        agVar.m440d("onCancelDownloads()", new Object[0]);
    }

    @Override // com.google.android.play.core.internal.AbstractC1173v
    /* renamed from: j */
    public final void mo280j(int i) {
        C1112aq aqVar;
        C1102ag agVar;
        aqVar = this.f226b.f241e;
        aqVar.m432b();
        agVar = C0993an.f237a;
        agVar.m440d("onGetSession(%d)", Integer.valueOf(i));
    }

    @Override // com.google.android.play.core.internal.AbstractC1173v
    /* renamed from: k */
    public void mo279k(Bundle bundle) {
        C1112aq aqVar;
        C1102ag agVar;
        aqVar = this.f226b.f241e;
        aqVar.m432b();
        agVar = C0993an.f237a;
        agVar.m440d("onNotifyChunkTransferred(%s, %s, %d, session=%d)", bundle.getString("module_name"), bundle.getString("slice_id"), Integer.valueOf(bundle.getInt("chunk_number")), Integer.valueOf(bundle.getInt("session_id")));
    }

    @Override // com.google.android.play.core.internal.AbstractC1173v
    /* renamed from: l */
    public void mo278l(Bundle bundle) {
        C1112aq aqVar;
        C1102ag agVar;
        aqVar = this.f226b.f241e;
        aqVar.m432b();
        agVar = C0993an.f237a;
        agVar.m440d("onNotifyModuleCompleted(%s, sessionId=%d)", bundle.getString("module_name"), Integer.valueOf(bundle.getInt("session_id")));
    }

    @Override // com.google.android.play.core.internal.AbstractC1173v
    /* renamed from: m */
    public void mo277m(Bundle bundle) {
        C1112aq aqVar;
        C1102ag agVar;
        aqVar = this.f226b.f241e;
        aqVar.m432b();
        agVar = C0993an.f237a;
        agVar.m440d("onNotifySessionFailed(%d)", Integer.valueOf(bundle.getInt("session_id")));
    }

    @Override // com.google.android.play.core.internal.AbstractC1173v
    /* renamed from: n */
    public void mo276n() {
        C1112aq aqVar;
        C1102ag agVar;
        aqVar = this.f226b.f241e;
        aqVar.m432b();
        agVar = C0993an.f237a;
        agVar.m440d("onRemoveModule()", new Object[0]);
    }
}
