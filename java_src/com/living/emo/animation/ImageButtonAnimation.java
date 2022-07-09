package com.living.emo.animation;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.view.View;
import android.view.animation.LinearInterpolator;
import com.living.emo.util.LogUtil;
/* loaded from: classes.dex */
public class ImageButtonAnimation {
    private static final String TAG = "ImageButtonAnimation";
    private ObjectAnimator mRotation;

    /* renamed from: v */
    private View f953v = null;
    private int mRos = 0;
    private float minDegree = 0.0f;
    private float maxDegree = 360.0f;
    private int mRepeatCount = -1;

    public ImageButtonAnimation setMinDegree(float f) {
        this.minDegree = f;
        return this;
    }

    public ImageButtonAnimation setMaxDegree(float f) {
        this.maxDegree = f;
        return this;
    }

    public ImageButtonAnimation setView(View view) {
        this.f953v = view;
        return this;
    }

    public ImageButtonAnimation setRos(int i) {
        this.mRos = i;
        this.mRotation.setFloatValues(i, this.maxDegree + i);
        return this;
    }

    public void init() {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.f953v, "rotation", this.minDegree, this.maxDegree);
        this.mRotation = ofFloat;
        ofFloat.setRepeatCount(this.mRepeatCount);
        this.mRotation.setInterpolator(new LinearInterpolator());
        this.mRotation.setDuration(10000L);
        onListener();
    }

    public ImageButtonAnimation setRepeatCount(int i) {
        this.mRepeatCount = i;
        return this;
    }

    public void start() {
        ObjectAnimator objectAnimator = this.mRotation;
        if (objectAnimator != null && !objectAnimator.isRunning()) {
            this.mRotation.start();
        }
    }

    public void cancel() {
        ObjectAnimator objectAnimator = this.mRotation;
        if (objectAnimator != null && objectAnimator.isRunning()) {
            this.mRotation.cancel();
        }
    }

    public void setValues() {
        this.mRotation.setFloatValues(this.minDegree, this.maxDegree);
    }

    public void onListener() {
        this.mRotation.addListener(new Animator.AnimatorListener() { // from class: com.living.emo.animation.ImageButtonAnimation.1
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                if (ImageButtonAnimation.this.mRos > 0) {
                    ImageButtonAnimation.this.mRotation.setFloatValues(ImageButtonAnimation.this.mRos, ImageButtonAnimation.this.maxDegree + ImageButtonAnimation.this.mRos);
                    LogUtil.m65d(ImageButtonAnimation.TAG, "888888888");
                }
            }
        });
    }

    public void end() {
        this.mRotation.end();
    }
}
