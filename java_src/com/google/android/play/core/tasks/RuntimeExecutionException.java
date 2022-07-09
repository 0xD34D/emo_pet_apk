package com.google.android.play.core.tasks;
/* loaded from: classes.dex */
public class RuntimeExecutionException extends AbstractC1278j {
    public RuntimeExecutionException(Throwable th) {
        super(th);
    }

    @Override // com.google.android.play.core.tasks.AbstractC1278j
    public final int getErrorCode() {
        return -100;
    }
}
