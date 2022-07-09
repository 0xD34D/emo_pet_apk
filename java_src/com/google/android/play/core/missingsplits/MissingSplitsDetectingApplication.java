package com.google.android.play.core.missingsplits;

import android.app.Application;
@Deprecated
/* loaded from: classes.dex */
public class MissingSplitsDetectingApplication extends Application {
    private boolean onCreateCalled = false;

    @Override // android.app.Application
    public final void onCreate() {
        if (!this.onCreateCalled) {
            this.onCreateCalled = true;
            if (!MissingSplitsManagerFactory.create(this).disableAppIfMissingRequiredSplits()) {
                super.onCreate();
                onCreateCustom();
                return;
            }
            return;
        }
        throw new IllegalStateException("The onCreate method must be invoked at most once.");
    }

    @Deprecated
    public void onCreateCustom() {
    }
}
