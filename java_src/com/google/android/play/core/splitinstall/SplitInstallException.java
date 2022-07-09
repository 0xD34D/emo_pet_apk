package com.google.android.play.core.splitinstall;

import com.google.android.play.core.splitinstall.model.C1245a;
import com.google.android.play.core.tasks.AbstractC1278j;
/* loaded from: classes.dex */
public class SplitInstallException extends AbstractC1278j {

    /* renamed from: a */
    private final int f740a;

    public SplitInstallException(int i) {
        super(String.format("Split Install Error(%d): %s", Integer.valueOf(i), C1245a.m146a(i)));
        if (i != 0) {
            this.f740a = i;
            return;
        }
        throw new IllegalArgumentException("errorCode should not be 0.");
    }

    @Override // com.google.android.play.core.tasks.AbstractC1278j
    public int getErrorCode() {
        return this.f740a;
    }
}
