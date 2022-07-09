package com.google.android.play.core.splitinstall;

import android.content.Context;
/* loaded from: classes.dex */
public final class InternalFrameworkListenerExtensions {
    private InternalFrameworkListenerExtensions() {
    }

    public static void registerFrameworkListener(Context context, SplitInstallStateUpdatedListener splitInstallStateUpdatedListener) {
        C1242k.m154a(context).mo148a().mo103a(splitInstallStateUpdatedListener);
    }

    public static void unregisterFrameworkListener(Context context, SplitInstallStateUpdatedListener splitInstallStateUpdatedListener) {
        C1242k.m154a(context).mo148a().mo102b(splitInstallStateUpdatedListener);
    }
}
