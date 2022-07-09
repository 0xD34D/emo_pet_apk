package com.youth.banner.transformer;

import android.view.View;
/* loaded from: classes.dex */
public class DepthPageTransformer extends BasePageTransformer {
    private static final float DEFAULT_MIN_SCALE = 0.75f;
    private float mMinScale;

    public DepthPageTransformer() {
        this.mMinScale = 0.75f;
    }

    public DepthPageTransformer(float f) {
        this.mMinScale = 0.75f;
        this.mMinScale = f;
    }

    @Override // androidx.viewpager2.widget.ViewPager2.PageTransformer
    public void transformPage(View view, float f) {
        int width = view.getWidth();
        if (f < -1.0f) {
            view.setAlpha(0.0f);
        } else if (f <= 0.0f) {
            view.setAlpha(1.0f);
            view.setTranslationX(0.0f);
            view.setScaleX(1.0f);
            view.setScaleY(1.0f);
        } else if (f <= 1.0f) {
            view.setVisibility(0);
            view.setAlpha(1.0f - f);
            view.setTranslationX(width * (-f));
            float f2 = this.mMinScale;
            float abs = f2 + ((1.0f - f2) * (1.0f - Math.abs(f)));
            view.setScaleX(abs);
            view.setScaleY(abs);
            if (f == 1.0f) {
                view.setVisibility(4);
            }
        } else {
            view.setAlpha(0.0f);
        }
    }
}
