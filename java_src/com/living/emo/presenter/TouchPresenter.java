package com.living.emo.presenter;

import android.graphics.Point;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageView;
import com.living.emo.interfaces.ITouchListenerPresenter;
import com.living.emo.util.LogUtil;
/* loaded from: classes.dex */
public class TouchPresenter implements ITouchListenerPresenter {
    private static final String TAG = "com.living.emo.presenter.TouchPresenter";
    protected int lastX;
    protected int lastY;
    private float mAngle;
    private int mCenX;
    private int mCenY;
    private float oriRotation = 0.0f;
    private int count = 0;
    private boolean mMore = false;
    private boolean mLess = false;
    private boolean mAmount = true;
    private TouchListener mTouchListener = null;

    /* loaded from: classes.dex */
    public interface TouchListener {
        void onPlaySound();

        void onTouchDownAcion();

        void onTouchUpAcion();
    }

    @Override // com.living.emo.interfaces.ITouchListenerPresenter
    public void onTouch(ImageView imageView, MotionEvent motionEvent) {
        int action = motionEvent.getAction() & 255;
        if (action == 0) {
            this.lastY = (int) motionEvent.getRawY();
            this.lastX = (int) motionEvent.getRawX();
            this.oriRotation = imageView.getRotation();
            if (this.mTouchListener != null) {
                LogUtil.m65d(TAG, "--------onTouchDownAcion-----------");
                this.mTouchListener.onTouchDownAcion();
            }
            this.mAngle = angle(new Point(this.mCenX, this.mCenY), new Point(this.lastX, this.lastY), new Point(this.lastX, this.mCenY));
            String str = TAG;
            LogUtil.m65d(str, "----------mAngle-------=" + this.mAngle);
        }
        delDrag(imageView, motionEvent, action);
    }

    public void delDrag(View view, MotionEvent motionEvent, int i) {
        if (i != 1) {
            if (i == 2) {
                motionEvent.getRawX();
                motionEvent.getRawY();
                Point point = new Point(this.mCenX, this.mCenY);
                Point point2 = new Point(this.lastX, this.lastY);
                float angle = this.oriRotation + angle(point, point2, new Point((int) motionEvent.getRawX(), (int) motionEvent.getRawY()));
                this.oriRotation = angle;
                view.setRotation(angle);
                this.lastX = (int) motionEvent.getRawX();
                this.lastY = (int) motionEvent.getRawY();
                float angle2 = angle(point, point2, new Point(this.lastX, this.mCenY));
                String str = TAG;
                LogUtil.m65d(str, "------secsec-------=" + angle2);
                if (Math.abs(angle2 - this.mAngle) > 20.0f) {
                    this.mMore = true;
                }
                if (this.count > 3) {
                    this.mLess = true;
                }
                LogUtil.m65d(str, "------sec------" + this.mMore + "------mangle-----" + this.mLess + "equlll" + this.mAmount);
                if (this.mMore && this.mLess && this.mAmount) {
                    TouchListener touchListener = this.mTouchListener;
                    if (touchListener != null) {
                        touchListener.onPlaySound();
                        this.mAmount = false;
                    }
                    LogUtil.m65d(str, "播放段音效");
                }
                this.count++;
                return;
            } else if (i != 6) {
                return;
            }
        }
        this.count = 0;
        this.mMore = false;
        this.mLess = false;
        this.mAmount = true;
        if (this.mTouchListener != null) {
            LogUtil.m65d(TAG, "--------onTouchUpAcion-----------");
            this.mTouchListener.onTouchUpAcion();
        }
    }

    public float angle(Point point, Point point2, Point point3) {
        String str = TAG;
        LogUtil.m65d(str, "---cen-----:x:" + point.x + "-----y" + point.y);
        LogUtil.m64e(str, "---first-----:x:" + point2.x + "-----y" + point2.y);
        LogUtil.m63i(str, "---second-----:x:" + point3.x + "-----y" + point3.y);
        float f = (float) (point2.x - point.x);
        float f2 = (float) (point2.y - point.y);
        float f3 = (float) (point3.x - point.x);
        float f4 = (float) (point3.y - point.y);
        float f5 = (float) (((point3.x - point2.x) * (point3.x - point2.x)) + ((point3.y - point2.y) * (point3.y - point2.y)));
        float f6 = (f * f) + (f2 * f2);
        float f7 = (f3 * f3) + (f4 * f4);
        boolean z = ((point2.x - point.x) * (point3.y - point.y)) - ((point2.y - point.y) * (point3.x - point.x)) > 0;
        double sqrt = ((f6 + f7) - f5) / ((Math.sqrt(f6) * 2.0d) * Math.sqrt(f7));
        LogUtil.m65d(str, sqrt + "----22222222");
        if (sqrt > 1.0d) {
            sqrt = 1.0d;
        } else if (sqrt < -1.0d) {
            sqrt = -1.0d;
        }
        double acos = Math.acos(sqrt);
        LogUtil.m65d(str, "----radian----" + acos + "=---Math.toDegrees(radian)------" + Math.toDegrees(acos));
        return (float) (z ? Math.toDegrees(acos) : -Math.toDegrees(acos));
    }

    public void setTouchListener(TouchListener touchListener) {
        if (this.mTouchListener == null) {
            this.mTouchListener = touchListener;
        }
    }

    public void setCenterPoint(int i, int i2) {
        if (this.mCenX == 0 && this.mCenY == 0) {
            this.mCenX = i;
            this.mCenY = i2;
        }
    }
}
