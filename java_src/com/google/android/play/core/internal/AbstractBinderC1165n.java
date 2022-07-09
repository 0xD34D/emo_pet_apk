package com.google.android.play.core.internal;

import android.os.IBinder;
import android.os.IInterface;
/* renamed from: com.google.android.play.core.internal.n */
/* loaded from: classes.dex */
public abstract class AbstractBinderC1165n extends BinderC1162k implements AbstractC1166o {
    /* renamed from: b */
    public static AbstractC1166o m304b(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.play.core.appupdate.protocol.IAppUpdateService");
        return queryLocalInterface instanceof AbstractC1166o ? (AbstractC1166o) queryLocalInterface : new C1164m(iBinder);
    }
}
