package com.google.android.play.core.splitinstall.testing;

import android.content.Context;
import com.google.android.play.core.common.LocalTestingException;
import com.google.android.play.core.splitcompat.SplitCompat;
import com.google.android.play.core.splitinstall.C1242k;
import com.google.android.play.core.splitinstall.C1248p;
import java.io.File;
/* loaded from: classes.dex */
public class FakeSplitInstallManagerFactory {

    /* renamed from: a */
    private static FakeSplitInstallManager f850a;

    public static FakeSplitInstallManager create(Context context) {
        try {
            File b = C1242k.m154a(context).mo147b();
            if (b == null) {
                throw new LocalTestingException("Failed to retrieve local testing directory path");
            } else if (b.exists()) {
                return create(context, b);
            } else {
                throw new LocalTestingException(String.format("Local testing directory not found: %s", b));
            }
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public static synchronized FakeSplitInstallManager create(Context context, File file) {
        FakeSplitInstallManager fakeSplitInstallManager;
        synchronized (FakeSplitInstallManagerFactory.class) {
            FakeSplitInstallManager fakeSplitInstallManager2 = f850a;
            if (fakeSplitInstallManager2 == null) {
                f850a = createNewInstance(context, file);
            } else if (!fakeSplitInstallManager2.m128c().getAbsolutePath().equals(file.getAbsolutePath())) {
                throw new RuntimeException(String.format("Different module directories used to initialize FakeSplitInstallManager: '%s' and '%s'", f850a.m128c().getAbsolutePath(), file.getAbsolutePath()));
            }
            fakeSplitInstallManager = f850a;
        }
        return fakeSplitInstallManager;
    }

    public static FakeSplitInstallManager createNewInstance(Context context, File file) {
        SplitCompat.install(context);
        return new FakeSplitInstallManager(context, file, new C1248p(context, context.getPackageName()));
    }
}
