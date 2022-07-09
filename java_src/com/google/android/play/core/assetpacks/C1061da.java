package com.google.android.play.core.assetpacks;

import java.io.File;
import java.io.FilenameFilter;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.play.core.assetpacks.da */
/* loaded from: classes.dex */
public final /* synthetic */ class C1061da implements FilenameFilter {

    /* renamed from: a */
    static final FilenameFilter f513a = new C1061da();

    private C1061da() {
    }

    @Override // java.io.FilenameFilter
    public final boolean accept(File file, String str) {
        boolean matches;
        matches = C1062db.f514a.matcher(str).matches();
        return matches;
    }
}
