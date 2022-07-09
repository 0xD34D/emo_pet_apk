package p012uk.p013co.senab.photoview.gestures;

import android.content.Context;
import android.view.MotionEvent;
import p012uk.p013co.senab.photoview.Compat;
/* renamed from: uk.co.senab.photoview.gestures.EclairGestureDetector */
/* loaded from: classes.dex */
public class EclairGestureDetector extends CupcakeGestureDetector {
    private static final int INVALID_POINTER_ID = -1;
    private int mActivePointerId = -1;
    private int mActivePointerIndex = 0;

    public EclairGestureDetector(Context context) {
        super(context);
    }

    @Override // p012uk.p013co.senab.photoview.gestures.CupcakeGestureDetector
    float getActiveX(MotionEvent motionEvent) {
        try {
            return motionEvent.getX(this.mActivePointerIndex);
        } catch (Exception unused) {
            return motionEvent.getX();
        }
    }

    @Override // p012uk.p013co.senab.photoview.gestures.CupcakeGestureDetector
    float getActiveY(MotionEvent motionEvent) {
        try {
            return motionEvent.getY(this.mActivePointerIndex);
        } catch (Exception unused) {
            return motionEvent.getY();
        }
    }

    @Override // p012uk.p013co.senab.photoview.gestures.CupcakeGestureDetector, p012uk.p013co.senab.photoview.gestures.GestureDetector
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction() & 255;
        int i = 0;
        if (action != 0) {
            int i2 = 1;
            if (action == 1 || action == 3) {
                this.mActivePointerId = -1;
            } else if (action == 6) {
                int pointerIndex = Compat.getPointerIndex(motionEvent.getAction());
                if (motionEvent.getPointerId(pointerIndex) == this.mActivePointerId) {
                    if (pointerIndex != 0) {
                        i2 = 0;
                    }
                    this.mActivePointerId = motionEvent.getPointerId(i2);
                    this.mLastTouchX = motionEvent.getX(i2);
                    this.mLastTouchY = motionEvent.getY(i2);
                }
            }
        } else {
            this.mActivePointerId = motionEvent.getPointerId(0);
        }
        int i3 = this.mActivePointerId;
        if (i3 != -1) {
            i = i3;
        }
        this.mActivePointerIndex = motionEvent.findPointerIndex(i);
        return super.onTouchEvent(motionEvent);
    }
}
