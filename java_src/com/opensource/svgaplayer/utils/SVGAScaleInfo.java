package com.opensource.svgaplayer.utils;

import android.widget.ImageView;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: SVGAScaleInfo.kt */
@Metadata(m37bv = {1, 0, 3}, m36d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0011\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J.\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u00042\u0006\u0010\u001f\u001a\u00020\u00042\u0006\u0010 \u001a\u00020\u00042\u0006\u0010!\u001a\u00020\"J\b\u0010#\u001a\u00020\u001cH\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0006\"\u0004\b\u0011\u0010\bR\u001a\u0010\u0012\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0006\"\u0004\b\u0014\u0010\bR\u001a\u0010\u0015\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0006\"\u0004\b\u0017\u0010\bR\u001a\u0010\u0018\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u0006\"\u0004\b\u001a\u0010\b¨\u0006$"}, m35d2 = {"Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;", "", "()V", "ratio", "", "getRatio", "()F", "setRatio", "(F)V", "ratioX", "", "getRatioX", "()Z", "setRatioX", "(Z)V", "scaleFx", "getScaleFx", "setScaleFx", "scaleFy", "getScaleFy", "setScaleFy", "tranFx", "getTranFx", "setTranFx", "tranFy", "getTranFy", "setTranFy", "performScaleType", "", "canvasWidth", "canvasHeight", "videoWidth", "videoHeight", "scaleType", "Landroid/widget/ImageView$ScaleType;", "resetVar", "library_release"}, m34k = 1, m33mv = {1, 1, 13})
/* loaded from: classes.dex */
public final class SVGAScaleInfo {
    private boolean ratioX;
    private float tranFx;
    private float tranFy;
    private float scaleFx = 1.0f;
    private float scaleFy = 1.0f;
    private float ratio = 1.0f;

    @Metadata(m37bv = {1, 0, 3}, m34k = 3, m33mv = {1, 1, 13})
    /* loaded from: classes.dex */
    public final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ImageView.ScaleType.values().length];
            $EnumSwitchMapping$0 = iArr;
            iArr[ImageView.ScaleType.CENTER.ordinal()] = 1;
            iArr[ImageView.ScaleType.CENTER_CROP.ordinal()] = 2;
            iArr[ImageView.ScaleType.CENTER_INSIDE.ordinal()] = 3;
            iArr[ImageView.ScaleType.FIT_CENTER.ordinal()] = 4;
            iArr[ImageView.ScaleType.FIT_START.ordinal()] = 5;
            iArr[ImageView.ScaleType.FIT_END.ordinal()] = 6;
            iArr[ImageView.ScaleType.FIT_XY.ordinal()] = 7;
        }
    }

    public final float getTranFx() {
        return this.tranFx;
    }

    public final void setTranFx(float f) {
        this.tranFx = f;
    }

    public final float getTranFy() {
        return this.tranFy;
    }

    public final void setTranFy(float f) {
        this.tranFy = f;
    }

    public final float getScaleFx() {
        return this.scaleFx;
    }

    public final void setScaleFx(float f) {
        this.scaleFx = f;
    }

    public final float getScaleFy() {
        return this.scaleFy;
    }

    public final void setScaleFy(float f) {
        this.scaleFy = f;
    }

    public final float getRatio() {
        return this.ratio;
    }

    public final void setRatio(float f) {
        this.ratio = f;
    }

    public final boolean getRatioX() {
        return this.ratioX;
    }

    public final void setRatioX(boolean z) {
        this.ratioX = z;
    }

    private final void resetVar() {
        this.tranFx = 0.0f;
        this.tranFy = 0.0f;
        this.scaleFx = 1.0f;
        this.scaleFy = 1.0f;
        this.ratio = 1.0f;
        this.ratioX = false;
    }

    public final void performScaleType(float f, float f2, float f3, float f4, ImageView.ScaleType scaleType) {
        Intrinsics.checkParameterIsNotNull(scaleType, "scaleType");
        if (f != 0.0f && f2 != 0.0f && f3 != 0.0f && f4 != 0.0f) {
            resetVar();
            float f5 = (f - f3) / 2.0f;
            float f6 = (f2 - f4) / 2.0f;
            float f7 = f3 / f4;
            float f8 = f / f2;
            float f9 = f2 / f4;
            float f10 = f / f3;
            boolean z = false;
            switch (WhenMappings.$EnumSwitchMapping$0[scaleType.ordinal()]) {
                case 1:
                    this.tranFx = f5;
                    this.tranFy = f6;
                    return;
                case 2:
                    if (f7 > f8) {
                        this.ratio = f9;
                        this.ratioX = false;
                        this.scaleFx = f9;
                        this.scaleFy = f9;
                        this.tranFx = (f - (f3 * f9)) / 2.0f;
                        return;
                    }
                    this.ratio = f10;
                    this.ratioX = true;
                    this.scaleFx = f10;
                    this.scaleFy = f10;
                    this.tranFy = (f2 - (f4 * f10)) / 2.0f;
                    return;
                case 3:
                    if (f3 < f && f4 < f2) {
                        this.tranFx = f5;
                        this.tranFy = f6;
                        return;
                    } else if (f7 > f8) {
                        this.ratio = f10;
                        this.ratioX = true;
                        this.scaleFx = f10;
                        this.scaleFy = f10;
                        this.tranFy = (f2 - (f4 * f10)) / 2.0f;
                        return;
                    } else {
                        this.ratio = f9;
                        this.ratioX = false;
                        this.scaleFx = f9;
                        this.scaleFy = f9;
                        this.tranFx = (f - (f3 * f9)) / 2.0f;
                        return;
                    }
                case 4:
                    if (f7 > f8) {
                        this.ratio = f10;
                        this.ratioX = true;
                        this.scaleFx = f10;
                        this.scaleFy = f10;
                        this.tranFy = (f2 - (f4 * f10)) / 2.0f;
                        return;
                    }
                    this.ratio = f9;
                    this.ratioX = false;
                    this.scaleFx = f9;
                    this.scaleFy = f9;
                    this.tranFx = (f - (f3 * f9)) / 2.0f;
                    return;
                case 5:
                    if (f7 > f8) {
                        this.ratio = f10;
                        this.ratioX = true;
                        this.scaleFx = f10;
                        this.scaleFy = f10;
                        return;
                    }
                    this.ratio = f9;
                    this.ratioX = false;
                    this.scaleFx = f9;
                    this.scaleFy = f9;
                    return;
                case 6:
                    if (f7 > f8) {
                        this.ratio = f10;
                        this.ratioX = true;
                        this.scaleFx = f10;
                        this.scaleFy = f10;
                        this.tranFy = f2 - (f4 * f10);
                        return;
                    }
                    this.ratio = f9;
                    this.ratioX = false;
                    this.scaleFx = f9;
                    this.scaleFy = f9;
                    this.tranFx = f - (f3 * f9);
                    return;
                case 7:
                    this.ratio = Math.max(f10, f9);
                    if (f10 > f9) {
                        z = true;
                    }
                    this.ratioX = z;
                    this.scaleFx = f10;
                    this.scaleFy = f9;
                    return;
                default:
                    this.ratio = f10;
                    this.ratioX = true;
                    this.scaleFx = f10;
                    this.scaleFy = f10;
                    return;
            }
        }
    }
}
