package com.living.emo.animation;

import android.view.View;
import android.view.animation.LinearInterpolator;
import android.view.animation.RotateAnimation;
/* loaded from: classes.dex */
public class SearchAnimation {
    private RotateAnimation animation;

    public void searchAnim(View view) {
        RotateAnimation rotateAnimation = new RotateAnimation(0.0f, -360.0f, 1, 0.5f, 1, 0.5f);
        this.animation = rotateAnimation;
        rotateAnimation.setDuration(2000L);
        this.animation.setInterpolator(new LinearInterpolator());
        this.animation.setRepeatCount(-1);
        view.startAnimation(this.animation);
    }

    public void stop(View view) {
        view.clearAnimation();
    }
}
