package com.google.android.play.core.internal;

import android.os.IBinder;
import android.os.IInterface;
/* renamed from: com.google.android.play.core.internal.bk */
/* loaded from: classes.dex */
public abstract class AbstractBinderC1133bk extends BinderC1162k implements AbstractC1134bl {
    /* renamed from: b */
    public static AbstractC1134bl m361b(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.play.core.splitinstall.protocol.ISplitInstallService");
        return queryLocalInterface instanceof AbstractC1134bl ? (AbstractC1134bl) queryLocalInterface : new C1132bj(iBinder);
    }
}
