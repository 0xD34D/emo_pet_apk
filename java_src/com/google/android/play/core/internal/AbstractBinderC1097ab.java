package com.google.android.play.core.internal;

import android.os.IBinder;
import android.os.IInterface;
/* renamed from: com.google.android.play.core.internal.ab */
/* loaded from: classes.dex */
public abstract class AbstractBinderC1097ab extends BinderC1162k implements AbstractC1098ac {
    /* renamed from: b */
    public static AbstractC1098ac m448b(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.play.core.inappreview.protocol.IInAppReviewService");
        return queryLocalInterface instanceof AbstractC1098ac ? (AbstractC1098ac) queryLocalInterface : new C1096aa(iBinder);
    }
}
