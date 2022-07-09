package com.google.android.play.core.internal;

import java.io.PrintStream;
/* renamed from: com.google.android.play.core.internal.bz */
/* loaded from: classes.dex */
public final class C1148bz {

    /* renamed from: a */
    static final AbstractC1142bt f660a;

    static {
        AbstractC1142bt btVar;
        Integer num;
        try {
            num = null;
            try {
                num = (Integer) Class.forName("android.os.Build$VERSION").getField("SDK_INT").get(null);
            } catch (Exception e) {
                System.err.println("Failed to retrieve value from android.os.Build$VERSION.SDK_INT due to the following exception.");
                e.printStackTrace(System.err);
            }
            btVar = (num == null || num.intValue() < 19) ? !Boolean.getBoolean("com.google.devtools.build.android.desugar.runtime.twr_disable_mimic") ? new C1145bw() : new C1146bx() : new C1147by();
        } catch (Throwable th) {
            PrintStream printStream = System.err;
            String name = C1146bx.class.getName();
            StringBuilder sb = new StringBuilder(String.valueOf(name).length() + 133);
            sb.append("An error has occurred when initializing the try-with-resources desuguring strategy. The default strategy ");
            sb.append(name);
            sb.append("will be used. The error is: ");
            printStream.println(sb.toString());
            th.printStackTrace(System.err);
            btVar = new C1146bx();
        }
        f660a = btVar;
        if (num != null) {
            num.intValue();
        }
    }

    /* renamed from: a */
    public static void m342a(Throwable th, Throwable th2) {
        f660a.mo343a(th, th2);
    }
}
