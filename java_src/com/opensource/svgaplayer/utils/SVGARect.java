package com.opensource.svgaplayer.utils;

import kotlin.Metadata;
/* compiled from: SVGAStructs.kt */
@Metadata(m37bv = {1, 0, 3}, m36d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0006\n\u0002\b\n\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003¢\u0006\u0002\u0010\u0007R\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\t¨\u0006\r"}, m35d2 = {"Lcom/opensource/svgaplayer/utils/SVGARect;", "", "x", "", "y", "width", "height", "(DDDD)V", "getHeight", "()D", "getWidth", "getX", "getY", "library_release"}, m34k = 1, m33mv = {1, 1, 13})
/* loaded from: classes.dex */
public final class SVGARect {
    private final double height;
    private final double width;

    /* renamed from: x */
    private final double f1027x;

    /* renamed from: y */
    private final double f1028y;

    public SVGARect(double d, double d2, double d3, double d4) {
        this.f1027x = d;
        this.f1028y = d2;
        this.width = d3;
        this.height = d4;
    }

    public final double getHeight() {
        return this.height;
    }

    public final double getWidth() {
        return this.width;
    }

    public final double getX() {
        return this.f1027x;
    }

    public final double getY() {
        return this.f1028y;
    }
}
