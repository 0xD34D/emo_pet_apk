package com.google.android.play.core.install;

import com.google.android.play.core.install.model.C1094a;
import com.google.android.play.core.tasks.AbstractC1278j;
/* loaded from: classes.dex */
public class InstallException extends AbstractC1278j {

    /* renamed from: a */
    private final int f597a;

    public InstallException(int i) {
        super(String.format("Install Error(%d): %s", Integer.valueOf(i), C1094a.m449a(i)));
        if (i != 0) {
            this.f597a = i;
            return;
        }
        throw new IllegalArgumentException("errorCode should not be 0.");
    }

    @Override // com.google.android.play.core.tasks.AbstractC1278j
    public int getErrorCode() {
        return this.f597a;
    }
}
