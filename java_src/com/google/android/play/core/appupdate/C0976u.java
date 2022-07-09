package com.google.android.play.core.appupdate;

import android.content.Context;
import com.google.android.play.core.splitcompat.C1207p;
/* renamed from: com.google.android.play.core.appupdate.u */
/* loaded from: classes.dex */
public final /* synthetic */ class C0976u {

    /* renamed from: a */
    private static C0978w f183a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static synchronized C0978w m690a(Context context) {
        C0978w wVar;
        synchronized (C0976u.class) {
            if (f183a == null) {
                C0977v vVar = new C0977v(null);
                vVar.m688b(new C0961f(C1207p.m201c(context)));
                f183a = vVar.m689a();
            }
            wVar = f183a;
        }
        return wVar;
    }
}
