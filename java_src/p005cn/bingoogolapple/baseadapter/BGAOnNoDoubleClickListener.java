package p005cn.bingoogolapple.baseadapter;

import android.view.View;
/* renamed from: cn.bingoogolapple.baseadapter.BGAOnNoDoubleClickListener */
/* loaded from: classes.dex */
public abstract class BGAOnNoDoubleClickListener implements View.OnClickListener {
    private long mLastClickTime;
    private int mThrottleFirstTime;

    public abstract void onNoDoubleClick(View view);

    public BGAOnNoDoubleClickListener() {
        this.mThrottleFirstTime = 1000;
        this.mLastClickTime = 0L;
    }

    public BGAOnNoDoubleClickListener(int i) {
        this.mThrottleFirstTime = 1000;
        this.mLastClickTime = 0L;
        this.mThrottleFirstTime = i;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        long currentTimeMillis = System.currentTimeMillis();
        if (currentTimeMillis - this.mLastClickTime > this.mThrottleFirstTime) {
            this.mLastClickTime = currentTimeMillis;
            onNoDoubleClick(view);
        }
    }
}
