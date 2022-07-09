package com.youth.banner.util;

import android.content.res.Resources;
import android.graphics.Outline;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
/* loaded from: classes.dex */
public class BannerUtils {
    public static int getRealPosition(boolean z, int i, int i2) {
        if (!z) {
            return i;
        }
        if (i == 0) {
            return i2 - 1;
        }
        if (i == i2 + 1) {
            return 0;
        }
        return i - 1;
    }

    public static View getView(ViewGroup viewGroup, int i) {
        View inflate = LayoutInflater.from(viewGroup.getContext()).inflate(i, viewGroup, false);
        ViewGroup.LayoutParams layoutParams = inflate.getLayoutParams();
        if (!(layoutParams.height == -1 && layoutParams.width == -1)) {
            layoutParams.height = -1;
            layoutParams.width = -1;
            inflate.setLayoutParams(layoutParams);
        }
        return inflate;
    }

    public static float dp2px(float f) {
        return TypedValue.applyDimension(1, f, Resources.getSystem().getDisplayMetrics());
    }

    public static void setBannerRound(View view, final float f) {
        view.setOutlineProvider(new ViewOutlineProvider() { // from class: com.youth.banner.util.BannerUtils.1
            @Override // android.view.ViewOutlineProvider
            public void getOutline(View view2, Outline outline) {
                outline.setRoundRect(0, 0, view2.getWidth(), view2.getHeight(), f);
            }
        });
        view.setClipToOutline(true);
    }
}
