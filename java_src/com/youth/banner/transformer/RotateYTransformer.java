package com.youth.banner.transformer;

import android.view.View;
/* loaded from: classes.dex */
public class RotateYTransformer extends BasePageTransformer {
    private static final float DEFAULT_MAX_ROTATE = 35.0f;
    private float mMaxRotate;

    public RotateYTransformer() {
        this.mMaxRotate = DEFAULT_MAX_ROTATE;
    }

    public RotateYTransformer(float f) {
        this.mMaxRotate = DEFAULT_MAX_ROTATE;
        this.mMaxRotate = f;
    }

    @Override // androidx.viewpager2.widget.ViewPager2.PageTransformer
    public void transformPage(View view, float f) {
        view.setPivotY(view.getHeight() / 2);
        if (f < -1.0f) {
            view.setRotationY(this.mMaxRotate * (-1.0f));
            view.setPivotX(view.getWidth());
        } else if (f <= 1.0f) {
            view.setRotationY(this.mMaxRotate * f);
            if (f < 0.0f) {
                view.setPivotX(view.getWidth() * (((-f) * 0.5f) + 0.5f));
                view.setPivotX(view.getWidth());
                return;
            }
            view.setPivotX(view.getWidth() * 0.5f * (1.0f - f));
            view.setPivotX(0.0f);
        } else {
            view.setRotationY(this.mMaxRotate * 1.0f);
            view.setPivotX(0.0f);
        }
    }
}
