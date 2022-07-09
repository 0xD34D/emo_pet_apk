package com.opensource.svgaplayer;

import kotlin.Metadata;
/* compiled from: SVGACallback.kt */
@Metadata(m37bv = {1, 0, 3}, m36d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0006\n\u0000\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\b\u0010\u0004\u001a\u00020\u0003H&J\b\u0010\u0005\u001a\u00020\u0003H&J\u0018\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH&¨\u0006\u000b"}, m35d2 = {"Lcom/opensource/svgaplayer/SVGACallback;", "", "onFinished", "", "onPause", "onRepeat", "onStep", "frame", "", "percentage", "", "library_release"}, m34k = 1, m33mv = {1, 1, 13})
/* loaded from: classes.dex */
public interface SVGACallback {
    void onFinished();

    void onPause();

    void onRepeat();

    void onStep(int i, double d);
}
