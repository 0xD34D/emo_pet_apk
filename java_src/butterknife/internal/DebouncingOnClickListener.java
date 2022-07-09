package butterknife.internal;

import android.os.Handler;
import android.os.Looper;
import android.view.View;
/* loaded from: classes.dex */
public abstract class DebouncingOnClickListener implements View.OnClickListener {
    private static final Runnable ENABLE_AGAIN = $$Lambda$DebouncingOnClickListener$9VMd1QuOmdVg_AaYBDeumcPsza8.INSTANCE;
    private static final Handler MAIN = new Handler(Looper.getMainLooper());
    static boolean enabled = true;

    public abstract void doClick(View view);

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (enabled) {
            enabled = false;
            MAIN.post(ENABLE_AGAIN);
            doClick(view);
        }
    }
}
