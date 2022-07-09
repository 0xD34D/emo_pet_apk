package com.opensource.svgaplayer.utils;

import kotlin.Metadata;
/* compiled from: SVGAStructs.kt */
@Metadata(m37bv = {1, 0, 3}, m36d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0007\n\u0002\b\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003¢\u0006\u0002\u0010\u0006R\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\b¨\u0006\u000b"}, m35d2 = {"Lcom/opensource/svgaplayer/utils/SVGAPoint;", "", "x", "", "y", "value", "(FFF)V", "getValue", "()F", "getX", "getY", "library_release"}, m34k = 1, m33mv = {1, 1, 13})
/* loaded from: classes.dex */
public final class SVGAPoint {
    private final float value;

    /* renamed from: x */
    private final float f1025x;

    /* renamed from: y */
    private final float f1026y;

    public SVGAPoint(float f, float f2, float f3) {
        this.f1025x = f;
        this.f1026y = f2;
        this.value = f3;
    }

    public final float getValue() {
        return this.value;
    }

    public final float getX() {
        return this.f1025x;
    }

    public final float getY() {
        return this.f1026y;
    }
}
