package com.living.emo.animation;

import android.animation.ValueAnimator;
/* loaded from: classes.dex */
public class AlphaAnimation {
    private final ValueAnimator mAlpha;

    /* loaded from: classes.dex */
    public interface AddUpdateListener {
        void onAddUpdateListener(float f);
    }

    public AlphaAnimation(float f, float f2, int i, final AddUpdateListener addUpdateListener) {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(f, f2);
        this.mAlpha = ofFloat;
        ofFloat.setDuration(i);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.living.emo.animation.AlphaAnimation.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                addUpdateListener.onAddUpdateListener(((Float) valueAnimator.getAnimatedValue()).floatValue());
            }
        });
    }

    public void start() {
        this.mAlpha.start();
    }
}
