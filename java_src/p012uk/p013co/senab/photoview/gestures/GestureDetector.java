package p012uk.p013co.senab.photoview.gestures;

import android.view.MotionEvent;
/* renamed from: uk.co.senab.photoview.gestures.GestureDetector */
/* loaded from: classes.dex */
public interface GestureDetector {
    boolean isDragging();

    boolean isScaling();

    boolean onTouchEvent(MotionEvent motionEvent);

    void setOnGestureListener(OnGestureListener onGestureListener);
}
