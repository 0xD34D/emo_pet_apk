package p005cn.bingoogolapple.badgeview;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import android.view.animation.OvershootInterpolator;
import java.lang.ref.WeakReference;
/* renamed from: cn.bingoogolapple.badgeview.BGADragBadgeView */
/* loaded from: classes.dex */
public class BGADragBadgeView extends View {
    private static final String TAG = "BGADragBadgeView";
    private Paint mBadgePaint;
    private BGABadgeViewHelper mBadgeViewHelper;
    private boolean mDismissAble;
    private int mDismissThreshold;
    private float mDragRadius;
    private int mDragStickRadiusDifference;
    private BGAExplosionAnimator mExplosionAnimator;
    private boolean mIsDragDisappear;
    private WindowManager.LayoutParams mLayoutParams;
    private int mMaxDragRadius;
    private int mStartX;
    private int mStartY;
    private PointF mStickCenter;
    private float mStickRadius;
    private WindowManager mWindowManager;
    private PointF[] mStickPoints = {new PointF(0.0f, 0.0f), new PointF(0.0f, 0.0f)};
    private PointF[] mDragPoints = {new PointF(0.0f, 0.0f), new PointF(0.0f, 0.0f)};
    private PointF mControlPoint = new PointF(0.0f, 0.0f);
    private PointF mDragCenter = new PointF(0.0f, 0.0f);
    private SetExplosionAnimatorNullTask mSetExplosionAnimatorNullTask = new SetExplosionAnimatorNullTask(this);

    public BGADragBadgeView(Context context, BGABadgeViewHelper bGABadgeViewHelper) {
        super(context);
        this.mWindowManager = (WindowManager) context.getSystemService("window");
        this.mBadgeViewHelper = bGABadgeViewHelper;
        initBadgePaint();
        initLayoutParams();
        initStick();
    }

    private void initBadgePaint() {
        Paint paint = new Paint();
        this.mBadgePaint = paint;
        paint.setAntiAlias(true);
        this.mBadgePaint.setStyle(Paint.Style.FILL);
        this.mBadgePaint.setTextAlign(Paint.Align.CENTER);
        this.mBadgePaint.setTextSize(this.mBadgeViewHelper.getBadgeTextSize());
    }

    private void initLayoutParams() {
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        this.mLayoutParams = layoutParams;
        layoutParams.gravity = 51;
        this.mLayoutParams.flags = 8;
        this.mLayoutParams.format = -3;
        this.mLayoutParams.type = 1000;
        this.mLayoutParams.width = -1;
        this.mLayoutParams.height = -1;
    }

    private void initStick() {
        this.mMaxDragRadius = BGABadgeViewUtil.dp2px(getContext(), 10.0f);
        this.mDragStickRadiusDifference = BGABadgeViewUtil.dp2px(getContext(), 1.0f);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        try {
            BGAExplosionAnimator bGAExplosionAnimator = this.mExplosionAnimator;
            if (bGAExplosionAnimator != null) {
                bGAExplosionAnimator.draw(canvas);
            } else if (this.mBadgeViewHelper.isShowDrawable()) {
                if (this.mBadgeViewHelper.getBadgeBgColor() == -65536) {
                    this.mBadgePaint.setColor(this.mBadgeViewHelper.getBitmap().getPixel(this.mBadgeViewHelper.getBitmap().getWidth() / 2, this.mBadgeViewHelper.getBitmap().getHeight() / 2));
                } else {
                    this.mBadgePaint.setColor(this.mBadgeViewHelper.getBadgeBgColor());
                }
                drawStick(canvas);
                drawDrawableBadge(canvas);
            } else {
                this.mBadgePaint.setColor(this.mBadgeViewHelper.getBadgeBgColor());
                drawStick(canvas);
                drawTextBadge(canvas);
            }
        } catch (Exception unused) {
            removeSelfWithException();
        }
    }

    private void drawDrawableBadge(Canvas canvas) {
        canvas.drawBitmap(this.mBadgeViewHelper.getBitmap(), this.mStartX, this.mStartY, this.mBadgePaint);
    }

    private void drawTextBadge(Canvas canvas) {
        this.mBadgePaint.setColor(this.mBadgeViewHelper.getBadgeBgColor());
        int i = this.mStartX;
        canvas.drawRoundRect(new RectF(i, this.mStartY, i + this.mBadgeViewHelper.getBadgeRectF().width(), this.mStartY + this.mBadgeViewHelper.getBadgeRectF().height()), this.mBadgeViewHelper.getBadgeRectF().height() / 2.0f, this.mBadgeViewHelper.getBadgeRectF().height() / 2.0f, this.mBadgePaint);
        this.mBadgePaint.setColor(this.mBadgeViewHelper.getBadgeTextColor());
        canvas.drawText(this.mBadgeViewHelper.getBadgeText() == null ? "" : this.mBadgeViewHelper.getBadgeText(), this.mStartX + (this.mBadgeViewHelper.getBadgeRectF().width() / 2.0f), (this.mStartY + this.mBadgeViewHelper.getBadgeRectF().height()) - this.mBadgeViewHelper.getBadgePadding(), this.mBadgePaint);
    }

    private void drawStick(Canvas canvas) {
        float currentStickRadius = getCurrentStickRadius();
        float f = this.mStickCenter.y - this.mDragCenter.y;
        float f2 = this.mStickCenter.x - this.mDragCenter.x;
        Double valueOf = f2 != 0.0f ? Double.valueOf(f / f2) : null;
        this.mDragPoints = BGABadgeViewUtil.getIntersectionPoints(this.mDragCenter, this.mDragRadius, valueOf);
        this.mStickPoints = BGABadgeViewUtil.getIntersectionPoints(this.mStickCenter, currentStickRadius, valueOf);
        this.mControlPoint = BGABadgeViewUtil.getMiddlePoint(this.mDragCenter, this.mStickCenter);
        if (!this.mIsDragDisappear) {
            if (!this.mDismissAble) {
                Path path = new Path();
                path.moveTo(this.mStickPoints[0].x, this.mStickPoints[0].y);
                path.quadTo(this.mControlPoint.x, this.mControlPoint.y, this.mDragPoints[0].x, this.mDragPoints[0].y);
                path.lineTo(this.mDragPoints[1].x, this.mDragPoints[1].y);
                path.quadTo(this.mControlPoint.x, this.mControlPoint.y, this.mStickPoints[1].x, this.mStickPoints[1].y);
                path.close();
                canvas.drawPath(path, this.mBadgePaint);
                canvas.drawCircle(this.mStickCenter.x, this.mStickCenter.y, currentStickRadius, this.mBadgePaint);
            }
            canvas.drawCircle(this.mDragCenter.x, this.mDragCenter.y, this.mDragRadius, this.mBadgePaint);
        }
    }

    private float getCurrentStickRadius() {
        return BGABadgeViewUtil.evaluate(Math.min(BGABadgeViewUtil.getDistanceBetween2Points(this.mDragCenter, this.mStickCenter), this.mDismissThreshold) / this.mDismissThreshold, Float.valueOf(this.mStickRadius), Float.valueOf(this.mStickRadius * 0.2f)).floatValue();
    }

    public void setStickCenter(float f, float f2) {
        this.mStickCenter = new PointF(f, f2);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        try {
            int action = motionEvent.getAction();
            if (action != 0) {
                if (action != 1) {
                    if (action == 2) {
                        handleActionMove(motionEvent);
                    } else if (action != 3) {
                    }
                }
                handleActionUp(motionEvent);
            } else {
                handleActionDown(motionEvent);
            }
        } catch (Exception unused) {
            removeSelfWithException();
        }
        return true;
    }

    private void handleActionDown(MotionEvent motionEvent) {
        if (this.mExplosionAnimator == null && getParent() == null) {
            float min = Math.min(this.mBadgeViewHelper.getBadgeRectF().width() / 2.0f, this.mMaxDragRadius);
            this.mDragRadius = min;
            float f = min - this.mDragStickRadiusDifference;
            this.mStickRadius = f;
            this.mDismissThreshold = (int) (f * 10.0f);
            this.mDismissAble = false;
            this.mIsDragDisappear = false;
            this.mWindowManager.addView(this, this.mLayoutParams);
            updateDragPosition(motionEvent.getRawX(), motionEvent.getRawY());
        }
    }

    private void handleActionMove(MotionEvent motionEvent) {
        if (this.mExplosionAnimator == null && getParent() != null) {
            updateDragPosition(motionEvent.getRawX(), motionEvent.getRawY());
            if (BGABadgeViewUtil.getDistanceBetween2Points(this.mDragCenter, this.mStickCenter) > this.mDismissThreshold) {
                this.mDismissAble = true;
                postInvalidate();
            } else if (this.mBadgeViewHelper.isResumeTravel()) {
                this.mDismissAble = false;
                postInvalidate();
            }
        }
    }

    private void handleActionUp(MotionEvent motionEvent) {
        handleActionMove(motionEvent);
        if (!this.mDismissAble) {
            try {
                startSpringAnim();
            } catch (Exception unused) {
                removeSelf();
                this.mBadgeViewHelper.endDragWithoutDismiss();
            }
        } else if (BGABadgeViewUtil.getDistanceBetween2Points(this.mDragCenter, this.mStickCenter) > this.mDismissThreshold) {
            try {
                this.mIsDragDisappear = true;
                startDismissAnim(getNewStartX(motionEvent.getRawX()), getNewStartY(motionEvent.getRawY()));
            } catch (Exception unused2) {
                removeSelf();
                this.mBadgeViewHelper.endDragWithDismiss();
            }
        } else {
            removeSelf();
            this.mBadgeViewHelper.endDragWithoutDismiss();
        }
    }

    private void startSpringAnim() {
        final PointF pointF = new PointF(this.mDragCenter.x, this.mDragCenter.y);
        ValueAnimator ofFloat = ValueAnimator.ofFloat(1.0f);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: cn.bingoogolapple.badgeview.BGADragBadgeView.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                PointF pointByPercent = BGABadgeViewUtil.getPointByPercent(pointF, BGADragBadgeView.this.mStickCenter, valueAnimator.getAnimatedFraction());
                BGADragBadgeView.this.updateDragPosition(pointByPercent.x, pointByPercent.y);
            }
        });
        ofFloat.addListener(new AnimatorListenerAdapter() { // from class: cn.bingoogolapple.badgeview.BGADragBadgeView.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                BGADragBadgeView.this.removeSelf();
                BGADragBadgeView.this.mBadgeViewHelper.endDragWithoutDismiss();
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                BGADragBadgeView.this.removeSelf();
                BGADragBadgeView.this.mBadgeViewHelper.endDragWithoutDismiss();
            }
        });
        ofFloat.setInterpolator(new OvershootInterpolator(4.0f));
        ofFloat.setRepeatCount(1);
        ofFloat.setRepeatMode(-1);
        ofFloat.setDuration(150L);
        ofFloat.start();
    }

    private void startDismissAnim(int i, int i2) {
        int width = ((int) this.mBadgeViewHelper.getBadgeRectF().width()) / 2;
        int height = ((int) this.mBadgeViewHelper.getBadgeRectF().height()) / 2;
        Rect rect = new Rect(i - width, i2 - height, i + width, i2 + height);
        Bitmap createBitmapSafely = BGABadgeViewUtil.createBitmapSafely(this, rect, 1);
        if (createBitmapSafely == null) {
            removeSelf();
            this.mBadgeViewHelper.endDragWithDismiss();
        } else if (this.mExplosionAnimator != null) {
            removeSelf();
            this.mBadgeViewHelper.endDragWithDismiss();
        } else {
            BGAExplosionAnimator bGAExplosionAnimator = new BGAExplosionAnimator(this, rect, createBitmapSafely);
            this.mExplosionAnimator = bGAExplosionAnimator;
            bGAExplosionAnimator.addListener(new AnimatorListenerAdapter() { // from class: cn.bingoogolapple.badgeview.BGADragBadgeView.3
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    BGADragBadgeView.this.removeSelf();
                    BGADragBadgeView.this.mBadgeViewHelper.endDragWithDismiss();
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationCancel(Animator animator) {
                    BGADragBadgeView.this.removeSelf();
                    BGADragBadgeView.this.mBadgeViewHelper.endDragWithDismiss();
                }
            });
            this.mExplosionAnimator.start();
        }
    }

    public void removeSelf() {
        if (getParent() != null) {
            this.mWindowManager.removeView(this);
        }
        this.mDismissAble = false;
        this.mIsDragDisappear = false;
        postDelayed(this.mSetExplosionAnimatorNullTask, 60L);
    }

    public void updateDragPosition(float f, float f2) {
        this.mStartX = getNewStartX(f);
        this.mStartY = getNewStartY(f2);
        this.mDragCenter.set(f, f2);
        postInvalidate();
    }

    private int getNewStartX(float f) {
        int width = (int) this.mBadgeViewHelper.getBadgeRectF().width();
        int i = ((int) f) - (width / 2);
        if (i < 0) {
            i = 0;
        }
        return i > this.mWindowManager.getDefaultDisplay().getWidth() - width ? this.mWindowManager.getDefaultDisplay().getWidth() - width : i;
    }

    private int getNewStartY(float f) {
        int height = (int) this.mBadgeViewHelper.getBadgeRectF().height();
        return Math.min(Math.max(0, ((int) f) - (height / 2)), getHeight() - height);
    }

    private void removeSelfWithException() {
        removeSelf();
        if (BGABadgeViewUtil.getDistanceBetween2Points(this.mDragCenter, this.mStickCenter) > this.mDismissThreshold) {
            this.mBadgeViewHelper.endDragWithDismiss();
        } else {
            this.mBadgeViewHelper.endDragWithoutDismiss();
        }
    }

    /* renamed from: cn.bingoogolapple.badgeview.BGADragBadgeView$SetExplosionAnimatorNullTask */
    /* loaded from: classes.dex */
    public static class SetExplosionAnimatorNullTask implements Runnable {
        private final WeakReference<BGADragBadgeView> mDragBadgeView;

        public SetExplosionAnimatorNullTask(BGADragBadgeView bGADragBadgeView) {
            this.mDragBadgeView = new WeakReference<>(bGADragBadgeView);
        }

        @Override // java.lang.Runnable
        public void run() {
            BGADragBadgeView bGADragBadgeView = this.mDragBadgeView.get();
            if (bGADragBadgeView != null) {
                bGADragBadgeView.mExplosionAnimator = null;
            }
        }
    }
}
