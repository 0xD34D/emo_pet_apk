package com.google.android.play.core.install;
/* loaded from: classes.dex */
final class NativeInstallStateUpdateListener implements InstallStateUpdatedListener {
    NativeInstallStateUpdateListener() {
    }

    public native void onStateUpdate(InstallState installState);
}
