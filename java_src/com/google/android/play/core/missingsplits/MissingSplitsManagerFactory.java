package com.google.android.play.core.missingsplits;

import android.content.Context;
import java.util.concurrent.atomic.AtomicReference;
@Deprecated
/* loaded from: classes.dex */
public class MissingSplitsManagerFactory {

    /* renamed from: a */
    private static final AtomicReference<Boolean> f684a = new AtomicReference<>(null);

    @Deprecated
    public static MissingSplitsManager create(Context context) {
        return new C1181b(context, Runtime.getRuntime(), new C1180a(context, context.getPackageManager()), f684a);
    }
}
