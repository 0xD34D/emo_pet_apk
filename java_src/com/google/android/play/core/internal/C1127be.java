package com.google.android.play.core.internal;

import android.util.Log;
import java.io.File;
/* renamed from: com.google.android.play.core.internal.be */
/* loaded from: classes.dex */
final class C1127be implements AbstractC1120ay {

    /* renamed from: a */
    private final /* synthetic */ int f647a = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1127be() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1127be(byte[] bArr) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1127be(char[] cArr) {
    }

    @Override // com.google.android.play.core.internal.AbstractC1120ay
    /* renamed from: a */
    public final boolean mo385a(Object obj, File file, File file2) {
        int i = this.f647a;
        if (i == 0) {
            try {
                return !((Boolean) C1130bh.m373f(Class.forName("dalvik.system.DexFile"), Boolean.class, String.class, file.getPath())).booleanValue();
            } catch (ClassNotFoundException unused) {
                Log.e("SplitCompat", "Unexpected missing dalvik.system.DexFile.");
                return false;
            }
        } else if (i != 1) {
            return true;
        } else {
            return new File((String) C1130bh.m372g(obj.getClass(), String.class, File.class, file, File.class, file2)).exists();
        }
    }
}
