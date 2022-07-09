package com.google.android.play.core.internal;

import android.os.IBinder;
import android.os.IInterface;
/* renamed from: com.google.android.play.core.internal.s */
/* loaded from: classes.dex */
public abstract class AbstractBinderC1170s extends BinderC1162k implements AbstractC1171t {
    /* renamed from: b */
    public static AbstractC1171t m299b(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.play.core.assetpacks.protocol.IAssetModuleService");
        return queryLocalInterface instanceof AbstractC1171t ? (AbstractC1171t) queryLocalInterface : new C1169r(iBinder);
    }
}
