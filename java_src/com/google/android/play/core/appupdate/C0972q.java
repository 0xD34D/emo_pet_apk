package com.google.android.play.core.appupdate;

import android.content.Context;
import java.io.File;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.play.core.appupdate.q */
/* loaded from: classes.dex */
public final class C0972q {

    /* renamed from: a */
    private final Context f149a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0972q(Context context) {
        this.f149a = context;
    }

    /* renamed from: b */
    private static long m700b(File file) {
        if (!file.isDirectory()) {
            return file.length();
        }
        File[] listFiles = file.listFiles();
        long j = 0;
        if (listFiles != null) {
            for (File file2 : listFiles) {
                j += m700b(file2);
            }
        }
        return j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final long m701a() {
        return m700b(new File(this.f149a.getFilesDir(), "assetpacks"));
    }
}
