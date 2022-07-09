package com.jaygoo.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.solver.widgets.analyzer.BasicMeasure;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class RangeSeekBar extends View {
    private static final int MIN_INTERCEPT_DISTANCE = 100;
    public static final int SEEKBAR_MODE_RANGE = 2;
    public static final int SEEKBAR_MODE_SINGLE = 1;
    public static final int TICK_MARK_GRAVITY_CENTER = 1;
    public static final int TICK_MARK_GRAVITY_LEFT = 0;
    public static final int TICK_MARK_GRAVITY_RIGHT = 2;
    public static final int TRICK_MARK_MODE_NUMBER = 0;
    public static final int TRICK_MARK_MODE_OTHER = 1;
    private OnRangeChangedListener callback;
    SeekBar currTouchSB;
    private boolean enableThumbOverlap;
    private int gravity;
    private boolean isEnable;
    boolean isScaleThumb;
    SeekBar leftSB;
    private float maxProgress;
    private float minInterval;
    private float minProgress;
    Paint paint;
    Bitmap progressBitmap;
    private int progressBottom;
    private int progressColor;
    Bitmap progressDefaultBitmap;
    private int progressDefaultColor;
    private int progressDefaultDrawableId;
    RectF progressDefaultDstRect;
    private int progressDrawableId;
    RectF progressDstRect;
    private int progressHeight;
    private int progressLeft;
    private int progressPaddingRight;
    private float progressRadius;
    private int progressRight;
    Rect progressSrcRect;
    private int progressTop;
    private int progressWidth;
    float reservePercent;
    SeekBar rightSB;
    private int seekBarMode;
    RectF stepDivRect;
    private int steps;
    private boolean stepsAutoBonding;
    List<Bitmap> stepsBitmaps;
    private int stepsColor;
    private int stepsDrawableId;
    private float stepsHeight;
    private float stepsRadius;
    private float stepsWidth;
    private int tickMarkGravity;
    private int tickMarkInRangeTextColor;
    private int tickMarkLayoutGravity;
    private int tickMarkMode;
    private CharSequence[] tickMarkTextArray;
    private int tickMarkTextColor;
    private int tickMarkTextMargin;
    Rect tickMarkTextRect;
    private int tickMarkTextSize;
    float touchDownX;
    float touchDownY;

    /* loaded from: classes.dex */
    public static class Gravity {
        public static final int BOTTOM = 1;
        public static final int CENTER = 2;
        public static final int TOP = 0;
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface GravityDef {
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface SeekBarModeDef {
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface TickMarkGravityDef {
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface TickMarkLayoutGravityDef {
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface TickMarkModeDef {
    }

    public RangeSeekBar(Context context) {
        this(context, null);
    }

    public RangeSeekBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.isEnable = true;
        this.isScaleThumb = false;
        this.paint = new Paint();
        this.progressDefaultDstRect = new RectF();
        this.progressDstRect = new RectF();
        this.progressSrcRect = new Rect();
        this.stepDivRect = new RectF();
        this.tickMarkTextRect = new Rect();
        this.stepsBitmaps = new ArrayList();
        initAttrs(attributeSet);
        initPaint();
        initSeekBar(attributeSet);
        initStepsBitmap();
    }

    private void initProgressBitmap() {
        if (this.progressBitmap == null) {
            this.progressBitmap = Utils.drawableToBitmap(getContext(), this.progressWidth, this.progressHeight, this.progressDrawableId);
        }
        if (this.progressDefaultBitmap == null) {
            this.progressDefaultBitmap = Utils.drawableToBitmap(getContext(), this.progressWidth, this.progressHeight, this.progressDefaultDrawableId);
        }
    }

    private boolean verifyStepsMode() {
        return this.steps >= 1 && this.stepsHeight > 0.0f && this.stepsWidth > 0.0f;
    }

    private void initStepsBitmap() {
        if (verifyStepsMode() && this.stepsDrawableId != 0 && this.stepsBitmaps.isEmpty()) {
            Bitmap drawableToBitmap = Utils.drawableToBitmap(getContext(), (int) this.stepsWidth, (int) this.stepsHeight, this.stepsDrawableId);
            for (int i = 0; i <= this.steps; i++) {
                this.stepsBitmaps.add(drawableToBitmap);
            }
        }
    }

    private void initSeekBar(AttributeSet attributeSet) {
        boolean z = true;
        this.leftSB = new SeekBar(this, attributeSet, true);
        SeekBar seekBar = new SeekBar(this, attributeSet, false);
        this.rightSB = seekBar;
        if (this.seekBarMode == 1) {
            z = false;
        }
        seekBar.setVisible(z);
    }

    private void initAttrs(AttributeSet attributeSet) {
        try {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, C1372R.styleable.RangeSeekBar);
            this.seekBarMode = obtainStyledAttributes.getInt(C1372R.styleable.RangeSeekBar_rsb_mode, 2);
            this.minProgress = obtainStyledAttributes.getFloat(C1372R.styleable.RangeSeekBar_rsb_min, 0.0f);
            this.maxProgress = obtainStyledAttributes.getFloat(C1372R.styleable.RangeSeekBar_rsb_max, 100.0f);
            this.minInterval = obtainStyledAttributes.getFloat(C1372R.styleable.RangeSeekBar_rsb_min_interval, 0.0f);
            this.gravity = obtainStyledAttributes.getInt(C1372R.styleable.RangeSeekBar_rsb_gravity, 0);
            this.progressColor = obtainStyledAttributes.getColor(C1372R.styleable.RangeSeekBar_rsb_progress_color, -11806366);
            this.progressRadius = (int) obtainStyledAttributes.getDimension(C1372R.styleable.RangeSeekBar_rsb_progress_radius, -1.0f);
            this.progressDefaultColor = obtainStyledAttributes.getColor(C1372R.styleable.RangeSeekBar_rsb_progress_default_color, -2631721);
            this.progressDrawableId = obtainStyledAttributes.getResourceId(C1372R.styleable.RangeSeekBar_rsb_progress_drawable, 0);
            this.progressDefaultDrawableId = obtainStyledAttributes.getResourceId(C1372R.styleable.RangeSeekBar_rsb_progress_drawable_default, 0);
            this.progressHeight = (int) obtainStyledAttributes.getDimension(C1372R.styleable.RangeSeekBar_rsb_progress_height, Utils.dp2px(getContext(), 2.0f));
            this.tickMarkMode = obtainStyledAttributes.getInt(C1372R.styleable.RangeSeekBar_rsb_tick_mark_mode, 0);
            this.tickMarkGravity = obtainStyledAttributes.getInt(C1372R.styleable.RangeSeekBar_rsb_tick_mark_gravity, 1);
            this.tickMarkLayoutGravity = obtainStyledAttributes.getInt(C1372R.styleable.RangeSeekBar_rsb_tick_mark_layout_gravity, 0);
            this.tickMarkTextArray = obtainStyledAttributes.getTextArray(C1372R.styleable.RangeSeekBar_rsb_tick_mark_text_array);
            this.tickMarkTextMargin = (int) obtainStyledAttributes.getDimension(C1372R.styleable.RangeSeekBar_rsb_tick_mark_text_margin, Utils.dp2px(getContext(), 7.0f));
            this.tickMarkTextSize = (int) obtainStyledAttributes.getDimension(C1372R.styleable.RangeSeekBar_rsb_tick_mark_text_size, Utils.dp2px(getContext(), 12.0f));
            this.tickMarkTextColor = obtainStyledAttributes.getColor(C1372R.styleable.RangeSeekBar_rsb_tick_mark_text_color, this.progressDefaultColor);
            this.tickMarkInRangeTextColor = obtainStyledAttributes.getColor(C1372R.styleable.RangeSeekBar_rsb_tick_mark_text_color, this.progressColor);
            this.steps = obtainStyledAttributes.getInt(C1372R.styleable.RangeSeekBar_rsb_steps, 0);
            this.stepsColor = obtainStyledAttributes.getColor(C1372R.styleable.RangeSeekBar_rsb_step_color, -6447715);
            this.stepsRadius = obtainStyledAttributes.getDimension(C1372R.styleable.RangeSeekBar_rsb_step_radius, 0.0f);
            this.stepsWidth = obtainStyledAttributes.getDimension(C1372R.styleable.RangeSeekBar_rsb_step_width, 0.0f);
            this.stepsHeight = obtainStyledAttributes.getDimension(C1372R.styleable.RangeSeekBar_rsb_step_height, 0.0f);
            this.stepsDrawableId = obtainStyledAttributes.getResourceId(C1372R.styleable.RangeSeekBar_rsb_step_drawable, 0);
            this.stepsAutoBonding = obtainStyledAttributes.getBoolean(C1372R.styleable.RangeSeekBar_rsb_step_auto_bonding, true);
            obtainStyledAttributes.recycle();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    protected void onMeasureProgress(int i, int i2) {
        int paddingBottom = (i2 - getPaddingBottom()) - getPaddingTop();
        if (i2 > 0) {
            int i3 = this.gravity;
            if (i3 == 0) {
                float max = (this.leftSB.getIndicatorShowMode() == 1 && this.rightSB.getIndicatorShowMode() == 1) ? 0.0f : Math.max(this.leftSB.getIndicatorRawHeight(), this.rightSB.getIndicatorRawHeight());
                float max2 = Math.max(this.leftSB.getThumbScaleHeight(), this.rightSB.getThumbScaleHeight());
                int i4 = this.progressHeight;
                float f = max2 - (i4 / 2.0f);
                this.progressTop = (int) (((f - i4) / 2.0f) + max);
                if (this.tickMarkTextArray != null && this.tickMarkLayoutGravity == 0) {
                    this.progressTop = (int) Math.max(getTickMarkRawHeight(), max + ((f - this.progressHeight) / 2.0f));
                }
                this.progressBottom = this.progressTop + this.progressHeight;
            } else if (i3 == 1) {
                if (this.tickMarkTextArray == null || this.tickMarkLayoutGravity != 1) {
                    this.progressBottom = (int) ((paddingBottom - (Math.max(this.leftSB.getThumbScaleHeight(), this.rightSB.getThumbScaleHeight()) / 2.0f)) + (this.progressHeight / 2.0f));
                } else {
                    this.progressBottom = paddingBottom - getTickMarkRawHeight();
                }
                this.progressTop = this.progressBottom - this.progressHeight;
            } else {
                int i5 = this.progressHeight;
                int i6 = (paddingBottom - i5) / 2;
                this.progressTop = i6;
                this.progressBottom = i6 + i5;
            }
            int max3 = ((int) Math.max(this.leftSB.getThumbScaleWidth(), this.rightSB.getThumbScaleWidth())) / 2;
            this.progressLeft = getPaddingLeft() + max3;
            int paddingRight = (i - max3) - getPaddingRight();
            this.progressRight = paddingRight;
            this.progressWidth = paddingRight - this.progressLeft;
            this.progressDefaultDstRect.set(getProgressLeft(), getProgressTop(), getProgressRight(), getProgressBottom());
            this.progressPaddingRight = i - this.progressRight;
            if (this.progressRadius <= 0.0f) {
                this.progressRadius = (int) ((getProgressBottom() - getProgressTop()) * 0.45f);
            }
            initProgressBitmap();
        }
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        int i3;
        float f;
        float f2;
        float f3;
        int size = View.MeasureSpec.getSize(i2);
        int mode = View.MeasureSpec.getMode(i2);
        if (mode == 1073741824) {
            i3 = View.MeasureSpec.makeMeasureSpec(size, BasicMeasure.EXACTLY);
        } else if (mode == Integer.MIN_VALUE && (getParent() instanceof ViewGroup) && size == -1) {
            i3 = View.MeasureSpec.makeMeasureSpec(((ViewGroup) getParent()).getMeasuredHeight(), Integer.MIN_VALUE);
        } else {
            if (this.gravity == 2) {
                if (this.tickMarkTextArray == null || this.tickMarkLayoutGravity != 1) {
                    f2 = getRawHeight();
                    f3 = Math.max(this.leftSB.getThumbScaleHeight(), this.rightSB.getThumbScaleHeight()) / 2.0f;
                } else {
                    f2 = getRawHeight();
                    f3 = getTickMarkRawHeight();
                }
                f = (f2 - f3) * 2.0f;
            } else {
                f = getRawHeight();
            }
            i3 = View.MeasureSpec.makeMeasureSpec((int) f, BasicMeasure.EXACTLY);
        }
        super.onMeasure(i, i3);
    }

    protected int getTickMarkRawHeight() {
        CharSequence[] charSequenceArr = this.tickMarkTextArray;
        if (charSequenceArr == null || charSequenceArr.length <= 0) {
            return 0;
        }
        return this.tickMarkTextMargin + Utils.measureText(String.valueOf(charSequenceArr[0]), this.tickMarkTextSize).height() + 3;
    }

    protected float getRawHeight() {
        if (this.seekBarMode == 1) {
            float rawHeight = this.leftSB.getRawHeight();
            if (this.tickMarkLayoutGravity != 1 || this.tickMarkTextArray == null) {
                return rawHeight;
            }
            return (rawHeight - (this.leftSB.getThumbScaleHeight() / 2.0f)) + (this.progressHeight / 2.0f) + Math.max((this.leftSB.getThumbScaleHeight() - this.progressHeight) / 2.0f, getTickMarkRawHeight());
        }
        float max = Math.max(this.leftSB.getRawHeight(), this.rightSB.getRawHeight());
        if (this.tickMarkLayoutGravity != 1 || this.tickMarkTextArray == null) {
            return max;
        }
        float max2 = Math.max(this.leftSB.getThumbScaleHeight(), this.rightSB.getThumbScaleHeight());
        return (max - (max2 / 2.0f)) + (this.progressHeight / 2.0f) + Math.max((max2 - this.progressHeight) / 2.0f, getTickMarkRawHeight());
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        onMeasureProgress(i, i2);
        setRange(this.minProgress, this.maxProgress, this.minInterval);
        int progressBottom = (getProgressBottom() + getProgressTop()) / 2;
        this.leftSB.onSizeChanged(getProgressLeft(), progressBottom);
        if (this.seekBarMode == 2) {
            this.rightSB.onSizeChanged(getProgressLeft(), progressBottom);
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        onDrawTickMark(canvas, this.paint);
        onDrawProgressBar(canvas, this.paint);
        onDrawSteps(canvas, this.paint);
        onDrawSeekBar(canvas);
    }

    protected void onDrawTickMark(Canvas canvas, Paint paint) {
        float f;
        int i;
        int progressLeft;
        CharSequence[] charSequenceArr = this.tickMarkTextArray;
        if (charSequenceArr != null) {
            int length = this.progressWidth / (charSequenceArr.length - 1);
            int i2 = 0;
            while (true) {
                CharSequence[] charSequenceArr2 = this.tickMarkTextArray;
                if (i2 < charSequenceArr2.length) {
                    String charSequence = charSequenceArr2[i2].toString();
                    if (!TextUtils.isEmpty(charSequence)) {
                        paint.getTextBounds(charSequence, 0, charSequence.length(), this.tickMarkTextRect);
                        paint.setColor(this.tickMarkTextColor);
                        if (this.tickMarkMode == 1) {
                            int i3 = this.tickMarkGravity;
                            if (i3 == 2) {
                                progressLeft = (getProgressLeft() + (i2 * length)) - this.tickMarkTextRect.width();
                            } else if (i3 == 1) {
                                f = (getProgressLeft() + (i2 * length)) - (this.tickMarkTextRect.width() / 2.0f);
                            } else {
                                progressLeft = getProgressLeft() + (i2 * length);
                            }
                            f = progressLeft;
                        } else {
                            float parseFloat = Utils.parseFloat(charSequence);
                            SeekBarState[] rangeSeekBarState = getRangeSeekBarState();
                            if (!(Utils.compareFloat(parseFloat, rangeSeekBarState[0].value) == -1 || Utils.compareFloat(parseFloat, rangeSeekBarState[1].value) == 1 || this.seekBarMode != 2)) {
                                paint.setColor(this.tickMarkInRangeTextColor);
                            }
                            float f2 = this.minProgress;
                            f = (getProgressLeft() + ((this.progressWidth * (parseFloat - f2)) / (this.maxProgress - f2))) - (this.tickMarkTextRect.width() / 2.0f);
                        }
                        if (this.tickMarkLayoutGravity == 0) {
                            i = getProgressTop() - this.tickMarkTextMargin;
                        } else {
                            i = getProgressBottom() + this.tickMarkTextMargin + this.tickMarkTextRect.height();
                        }
                        canvas.drawText(charSequence, f, i, paint);
                    }
                    i2++;
                } else {
                    return;
                }
            }
        }
    }

    protected void onDrawProgressBar(Canvas canvas, Paint paint) {
        if (Utils.verifyBitmap(this.progressDefaultBitmap)) {
            canvas.drawBitmap(this.progressDefaultBitmap, (Rect) null, this.progressDefaultDstRect, paint);
        } else {
            paint.setColor(this.progressDefaultColor);
            RectF rectF = this.progressDefaultDstRect;
            float f = this.progressRadius;
            canvas.drawRoundRect(rectF, f, f, paint);
        }
        if (this.seekBarMode == 2) {
            this.progressDstRect.top = getProgressTop();
            this.progressDstRect.left = this.leftSB.left + (this.leftSB.getThumbScaleWidth() / 2.0f) + (this.progressWidth * this.leftSB.currPercent);
            this.progressDstRect.right = this.rightSB.left + (this.rightSB.getThumbScaleWidth() / 2.0f) + (this.progressWidth * this.rightSB.currPercent);
            this.progressDstRect.bottom = getProgressBottom();
        } else {
            this.progressDstRect.top = getProgressTop();
            this.progressDstRect.left = this.leftSB.left + (this.leftSB.getThumbScaleWidth() / 2.0f);
            this.progressDstRect.right = this.leftSB.left + (this.leftSB.getThumbScaleWidth() / 2.0f) + (this.progressWidth * this.leftSB.currPercent);
            this.progressDstRect.bottom = getProgressBottom();
        }
        if (Utils.verifyBitmap(this.progressBitmap)) {
            this.progressSrcRect.top = 0;
            this.progressSrcRect.bottom = this.progressBitmap.getHeight();
            int width = this.progressBitmap.getWidth();
            if (this.seekBarMode == 2) {
                float f2 = width;
                this.progressSrcRect.left = (int) (this.leftSB.currPercent * f2);
                this.progressSrcRect.right = (int) (f2 * this.rightSB.currPercent);
            } else {
                this.progressSrcRect.left = 0;
                this.progressSrcRect.right = (int) (width * this.leftSB.currPercent);
            }
            canvas.drawBitmap(this.progressBitmap, this.progressSrcRect, this.progressDstRect, (Paint) null);
            return;
        }
        paint.setColor(this.progressColor);
        RectF rectF2 = this.progressDstRect;
        float f3 = this.progressRadius;
        canvas.drawRoundRect(rectF2, f3, f3, paint);
    }

    protected void onDrawSteps(Canvas canvas, Paint paint) {
        if (verifyStepsMode()) {
            int progressWidth = getProgressWidth() / this.steps;
            float progressHeight = (this.stepsHeight - getProgressHeight()) / 2.0f;
            for (int i = 0; i <= this.steps; i++) {
                float progressLeft = (getProgressLeft() + (i * progressWidth)) - (this.stepsWidth / 2.0f);
                this.stepDivRect.set(progressLeft, getProgressTop() - progressHeight, this.stepsWidth + progressLeft, getProgressBottom() + progressHeight);
                if (this.stepsBitmaps.isEmpty() || this.stepsBitmaps.size() <= i) {
                    paint.setColor(this.stepsColor);
                    RectF rectF = this.stepDivRect;
                    float f = this.stepsRadius;
                    canvas.drawRoundRect(rectF, f, f, paint);
                } else {
                    canvas.drawBitmap(this.stepsBitmaps.get(i), (Rect) null, this.stepDivRect, paint);
                }
            }
        }
    }

    protected void onDrawSeekBar(Canvas canvas) {
        if (this.leftSB.getIndicatorShowMode() == 3) {
            this.leftSB.setShowIndicatorEnable(true);
        }
        this.leftSB.draw(canvas);
        if (this.seekBarMode == 2) {
            if (this.rightSB.getIndicatorShowMode() == 3) {
                this.rightSB.setShowIndicatorEnable(true);
            }
            this.rightSB.draw(canvas);
        }
    }

    private void initPaint() {
        this.paint.setStyle(Paint.Style.FILL);
        this.paint.setColor(this.progressDefaultColor);
        this.paint.setTextSize(this.tickMarkTextSize);
    }

    private void changeThumbActivateState(boolean z) {
        SeekBar seekBar;
        boolean z2 = false;
        if (!z || (seekBar = this.currTouchSB) == null) {
            this.leftSB.setActivate(false);
            if (this.seekBarMode == 2) {
                this.rightSB.setActivate(false);
                return;
            }
            return;
        }
        SeekBar seekBar2 = this.leftSB;
        z2 = true;
        if (seekBar == seekBar2) {
        }
        seekBar2.setActivate(z2);
        if (this.seekBarMode == 2) {
            this.rightSB.setActivate(!z2);
        }
    }

    protected float getEventX(MotionEvent motionEvent) {
        return motionEvent.getX();
    }

    protected float getEventY(MotionEvent motionEvent) {
        return motionEvent.getY();
    }

    private void scaleCurrentSeekBarThumb() {
        SeekBar seekBar = this.currTouchSB;
        if (seekBar != null && seekBar.getThumbScaleRatio() > 1.0f && !this.isScaleThumb) {
            this.isScaleThumb = true;
            this.currTouchSB.scaleThumb();
        }
    }

    private void resetCurrentSeekBarThumb() {
        SeekBar seekBar = this.currTouchSB;
        if (seekBar != null && seekBar.getThumbScaleRatio() > 1.0f && this.isScaleThumb) {
            this.isScaleThumb = false;
            this.currTouchSB.resetThumb();
        }
    }

    protected float calculateCurrentSeekBarPercent(float f) {
        float f2 = 0.0f;
        if (this.currTouchSB == null) {
            return 0.0f;
        }
        f2 = ((f - getProgressLeft()) * 1.0f) / this.progressWidth;
        if (f >= getProgressLeft() && f > getProgressRight()) {
            f2 = 1.0f;
        }
        if (this.seekBarMode != 2) {
            return f2;
        }
        SeekBar seekBar = this.currTouchSB;
        SeekBar seekBar2 = this.leftSB;
        return seekBar == seekBar2 ? f2 > this.rightSB.currPercent - this.reservePercent ? this.rightSB.currPercent - this.reservePercent : f2 : (seekBar != this.rightSB || f2 >= seekBar2.currPercent + this.reservePercent) ? f2 : this.leftSB.currPercent + this.reservePercent;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z = true;
        if (!this.isEnable) {
            return true;
        }
        int action = motionEvent.getAction();
        float f = 1.0f;
        boolean z2 = false;
        if (action != 0) {
            if (action == 1) {
                if (verifyStepsMode() && this.stepsAutoBonding) {
                    float calculateCurrentSeekBarPercent = calculateCurrentSeekBarPercent(getEventX(motionEvent));
                    float f2 = 1.0f / this.steps;
                    this.currTouchSB.slide(new BigDecimal(calculateCurrentSeekBarPercent / f2).setScale(0, RoundingMode.HALF_UP).intValue() * f2);
                }
                if (this.seekBarMode == 2) {
                    this.rightSB.setShowIndicatorEnable(false);
                }
                this.leftSB.setShowIndicatorEnable(false);
                this.currTouchSB.materialRestore();
                resetCurrentSeekBarThumb();
                if (this.callback != null) {
                    SeekBarState[] rangeSeekBarState = getRangeSeekBarState();
                    this.callback.onRangeChanged(this, rangeSeekBarState[0].value, rangeSeekBarState[1].value, false);
                }
                if (getParent() != null) {
                    getParent().requestDisallowInterceptTouchEvent(true);
                }
                OnRangeChangedListener onRangeChangedListener = this.callback;
                if (onRangeChangedListener != null) {
                    if (this.currTouchSB != this.leftSB) {
                        z = false;
                    }
                    onRangeChangedListener.onStopTrackingTouch(this, z);
                }
                changeThumbActivateState(false);
            } else if (action == 2) {
                float eventX = getEventX(motionEvent);
                if (this.seekBarMode == 2 && this.leftSB.currPercent == this.rightSB.currPercent) {
                    this.currTouchSB.materialRestore();
                    OnRangeChangedListener onRangeChangedListener2 = this.callback;
                    if (onRangeChangedListener2 != null) {
                        onRangeChangedListener2.onStopTrackingTouch(this, this.currTouchSB == this.leftSB);
                    }
                    if (eventX - this.touchDownX > 0.0f) {
                        SeekBar seekBar = this.currTouchSB;
                        if (seekBar != this.rightSB) {
                            seekBar.setShowIndicatorEnable(false);
                            resetCurrentSeekBarThumb();
                            this.currTouchSB = this.rightSB;
                        }
                    } else {
                        SeekBar seekBar2 = this.currTouchSB;
                        if (seekBar2 != this.leftSB) {
                            seekBar2.setShowIndicatorEnable(false);
                            resetCurrentSeekBarThumb();
                            this.currTouchSB = this.leftSB;
                        }
                    }
                    OnRangeChangedListener onRangeChangedListener3 = this.callback;
                    if (onRangeChangedListener3 != null) {
                        onRangeChangedListener3.onStartTrackingTouch(this, this.currTouchSB == this.leftSB);
                    }
                }
                scaleCurrentSeekBarThumb();
                SeekBar seekBar3 = this.currTouchSB;
                if (seekBar3.material < 1.0f) {
                    f = this.currTouchSB.material + 0.1f;
                }
                seekBar3.material = f;
                this.touchDownX = eventX;
                this.currTouchSB.slide(calculateCurrentSeekBarPercent(eventX));
                this.currTouchSB.setShowIndicatorEnable(true);
                if (this.callback != null) {
                    SeekBarState[] rangeSeekBarState2 = getRangeSeekBarState();
                    this.callback.onRangeChanged(this, rangeSeekBarState2[0].value, rangeSeekBarState2[1].value, true);
                }
                invalidate();
                if (getParent() != null) {
                    getParent().requestDisallowInterceptTouchEvent(true);
                }
                changeThumbActivateState(true);
            } else if (action == 3) {
                if (this.seekBarMode == 2) {
                    this.rightSB.setShowIndicatorEnable(false);
                }
                SeekBar seekBar4 = this.currTouchSB;
                if (seekBar4 == this.leftSB) {
                    resetCurrentSeekBarThumb();
                } else if (seekBar4 == this.rightSB) {
                    resetCurrentSeekBarThumb();
                }
                this.leftSB.setShowIndicatorEnable(false);
                if (this.callback != null) {
                    SeekBarState[] rangeSeekBarState3 = getRangeSeekBarState();
                    this.callback.onRangeChanged(this, rangeSeekBarState3[0].value, rangeSeekBarState3[1].value, false);
                }
                if (getParent() != null) {
                    getParent().requestDisallowInterceptTouchEvent(true);
                }
                changeThumbActivateState(false);
            }
            return super.onTouchEvent(motionEvent);
        }
        this.touchDownX = getEventX(motionEvent);
        this.touchDownY = getEventY(motionEvent);
        if (this.seekBarMode != 2) {
            this.currTouchSB = this.leftSB;
            scaleCurrentSeekBarThumb();
        } else if (this.rightSB.currPercent >= 1.0f && this.leftSB.collide(getEventX(motionEvent), getEventY(motionEvent))) {
            this.currTouchSB = this.leftSB;
            scaleCurrentSeekBarThumb();
        } else if (this.rightSB.collide(getEventX(motionEvent), getEventY(motionEvent))) {
            this.currTouchSB = this.rightSB;
            scaleCurrentSeekBarThumb();
        } else {
            float progressLeft = ((this.touchDownX - getProgressLeft()) * 1.0f) / this.progressWidth;
            if (Math.abs(this.leftSB.currPercent - progressLeft) < Math.abs(this.rightSB.currPercent - progressLeft)) {
                this.currTouchSB = this.leftSB;
            } else {
                this.currTouchSB = this.rightSB;
            }
            this.currTouchSB.slide(calculateCurrentSeekBarPercent(this.touchDownX));
        }
        if (getParent() != null) {
            getParent().requestDisallowInterceptTouchEvent(true);
        }
        OnRangeChangedListener onRangeChangedListener4 = this.callback;
        if (onRangeChangedListener4 != null) {
            if (this.currTouchSB == this.leftSB) {
                z2 = true;
            }
            onRangeChangedListener4.onStartTrackingTouch(this, z2);
        }
        changeThumbActivateState(true);
        return true;
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.minValue = this.minProgress;
        savedState.maxValue = this.maxProgress;
        savedState.rangeInterval = this.minInterval;
        SeekBarState[] rangeSeekBarState = getRangeSeekBarState();
        savedState.currSelectedMin = rangeSeekBarState[0].value;
        savedState.currSelectedMax = rangeSeekBarState[1].value;
        return savedState;
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        try {
            SavedState savedState = (SavedState) parcelable;
            super.onRestoreInstanceState(savedState.getSuperState());
            setRange(savedState.minValue, savedState.maxValue, savedState.rangeInterval);
            setProgress(savedState.currSelectedMin, savedState.currSelectedMax);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void setOnRangeChangedListener(OnRangeChangedListener onRangeChangedListener) {
        this.callback = onRangeChangedListener;
    }

    public void setProgress(float f) {
        setProgress(f, this.maxProgress);
    }

    public void setProgress(float f, float f2) {
        float min = Math.min(f, f2);
        float max = Math.max(min, f2);
        float f3 = this.minInterval;
        if (max - min < f3) {
            min = max - f3;
        }
        float f4 = this.minProgress;
        if (min >= f4) {
            float f5 = this.maxProgress;
            if (max <= f5) {
                float f6 = f5 - f4;
                this.leftSB.currPercent = Math.abs(min - f4) / f6;
                if (this.seekBarMode == 2) {
                    this.rightSB.currPercent = Math.abs(max - this.minProgress) / f6;
                }
                OnRangeChangedListener onRangeChangedListener = this.callback;
                if (onRangeChangedListener != null) {
                    onRangeChangedListener.onRangeChanged(this, min, max, false);
                }
                invalidate();
                return;
            }
            throw new IllegalArgumentException("setProgress() max > (preset max - offsetValue) . #max:" + max + " #preset max:" + max);
        }
        throw new IllegalArgumentException("setProgress() min < (preset min - offsetValue) . #min:" + min + " #preset min:" + max);
    }

    public void setRange(float f, float f2) {
        setRange(f, f2, this.minInterval);
    }

    public void setRange(float f, float f2, float f3) {
        if (f2 <= f) {
            throw new IllegalArgumentException("setRange() max must be greater than min ! #max:" + f2 + " #min:" + f);
        } else if (f3 >= 0.0f) {
            float f4 = f2 - f;
            if (f3 < f4) {
                this.maxProgress = f2;
                this.minProgress = f;
                this.minInterval = f3;
                this.reservePercent = f3 / f4;
                if (this.seekBarMode == 2) {
                    if (this.leftSB.currPercent + this.reservePercent <= 1.0f && this.leftSB.currPercent + this.reservePercent > this.rightSB.currPercent) {
                        this.rightSB.currPercent = this.leftSB.currPercent + this.reservePercent;
                    } else if (this.rightSB.currPercent - this.reservePercent >= 0.0f && this.rightSB.currPercent - this.reservePercent < this.leftSB.currPercent) {
                        this.leftSB.currPercent = this.rightSB.currPercent - this.reservePercent;
                    }
                }
                invalidate();
                return;
            }
            throw new IllegalArgumentException("setRange() interval must be less than (max - min) ! #minInterval:" + f3 + " #max - min:" + f4);
        } else {
            throw new IllegalArgumentException("setRange() interval must be greater than zero ! #minInterval:" + f3);
        }
    }

    public SeekBarState[] getRangeSeekBarState() {
        SeekBarState seekBarState = new SeekBarState();
        seekBarState.value = this.leftSB.getProgress();
        seekBarState.indicatorText = String.valueOf(seekBarState.value);
        if (Utils.compareFloat(seekBarState.value, this.minProgress) == 0) {
            seekBarState.isMin = true;
        } else if (Utils.compareFloat(seekBarState.value, this.maxProgress) == 0) {
            seekBarState.isMax = true;
        }
        SeekBarState seekBarState2 = new SeekBarState();
        if (this.seekBarMode == 2) {
            seekBarState2.value = this.rightSB.getProgress();
            seekBarState2.indicatorText = String.valueOf(seekBarState2.value);
            if (Utils.compareFloat(this.rightSB.currPercent, this.minProgress) == 0) {
                seekBarState2.isMin = true;
            } else if (Utils.compareFloat(this.rightSB.currPercent, this.maxProgress) == 0) {
                seekBarState2.isMax = true;
            }
        }
        return new SeekBarState[]{seekBarState, seekBarState2};
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        this.isEnable = z;
    }

    public void setIndicatorText(String str) {
        this.leftSB.setIndicatorText(str);
        if (this.seekBarMode == 2) {
            this.rightSB.setIndicatorText(str);
        }
    }

    public void setIndicatorTextDecimalFormat(String str) {
        this.leftSB.setIndicatorTextDecimalFormat(str);
        if (this.seekBarMode == 2) {
            this.rightSB.setIndicatorTextDecimalFormat(str);
        }
    }

    public void setIndicatorTextStringFormat(String str) {
        this.leftSB.setIndicatorTextStringFormat(str);
        if (this.seekBarMode == 2) {
            this.rightSB.setIndicatorTextStringFormat(str);
        }
    }

    public SeekBar getLeftSeekBar() {
        return this.leftSB;
    }

    public SeekBar getRightSeekBar() {
        return this.rightSB;
    }

    public int getProgressTop() {
        return this.progressTop;
    }

    public int getProgressBottom() {
        return this.progressBottom;
    }

    public int getProgressLeft() {
        return this.progressLeft;
    }

    public int getProgressRight() {
        return this.progressRight;
    }

    public int getProgressPaddingRight() {
        return this.progressPaddingRight;
    }

    public int getProgressHeight() {
        return this.progressHeight;
    }

    public void setProgressHeight(int i) {
        this.progressHeight = i;
    }

    public float getMinProgress() {
        return this.minProgress;
    }

    public float getMaxProgress() {
        return this.maxProgress;
    }

    public void setProgressColor(int i, int i2) {
        this.progressDefaultColor = i;
        this.progressColor = i2;
    }

    public int getTickMarkTextColor() {
        return this.tickMarkTextColor;
    }

    public void setTickMarkTextColor(int i) {
        this.tickMarkTextColor = i;
    }

    public int getTickMarkInRangeTextColor() {
        return this.tickMarkInRangeTextColor;
    }

    public void setTickMarkInRangeTextColor(int i) {
        this.tickMarkInRangeTextColor = i;
    }

    public int getSeekBarMode() {
        return this.seekBarMode;
    }

    public void setSeekBarMode(int i) {
        this.seekBarMode = i;
        SeekBar seekBar = this.rightSB;
        boolean z = true;
        if (i == 1) {
            z = false;
        }
        seekBar.setVisible(z);
    }

    public int getTickMarkMode() {
        return this.tickMarkMode;
    }

    public void setTickMarkMode(int i) {
        this.tickMarkMode = i;
    }

    public int getTickMarkTextMargin() {
        return this.tickMarkTextMargin;
    }

    public void setTickMarkTextMargin(int i) {
        this.tickMarkTextMargin = i;
    }

    public int getTickMarkTextSize() {
        return this.tickMarkTextSize;
    }

    public void setTickMarkTextSize(int i) {
        this.tickMarkTextSize = i;
    }

    public int getTickMarkGravity() {
        return this.tickMarkGravity;
    }

    public void setTickMarkGravity(int i) {
        this.tickMarkGravity = i;
    }

    public CharSequence[] getTickMarkTextArray() {
        return this.tickMarkTextArray;
    }

    public void setTickMarkTextArray(CharSequence[] charSequenceArr) {
        this.tickMarkTextArray = charSequenceArr;
    }

    public float getMinInterval() {
        return this.minInterval;
    }

    public float getProgressRadius() {
        return this.progressRadius;
    }

    public void setProgressRadius(float f) {
        this.progressRadius = f;
    }

    public int getProgressColor() {
        return this.progressColor;
    }

    public void setProgressColor(int i) {
        this.progressColor = i;
    }

    public int getProgressDefaultColor() {
        return this.progressDefaultColor;
    }

    public void setProgressDefaultColor(int i) {
        this.progressDefaultColor = i;
    }

    public int getProgressDrawableId() {
        return this.progressDrawableId;
    }

    public void setProgressDrawableId(int i) {
        this.progressDrawableId = i;
        this.progressBitmap = null;
        initProgressBitmap();
    }

    public int getProgressDefaultDrawableId() {
        return this.progressDefaultDrawableId;
    }

    public void setProgressDefaultDrawableId(int i) {
        this.progressDefaultDrawableId = i;
        this.progressDefaultBitmap = null;
        initProgressBitmap();
    }

    public int getProgressWidth() {
        return this.progressWidth;
    }

    public void setProgressWidth(int i) {
        this.progressWidth = i;
    }

    public void setTypeface(Typeface typeface) {
        this.paint.setTypeface(typeface);
    }

    public boolean isEnableThumbOverlap() {
        return this.enableThumbOverlap;
    }

    public void setEnableThumbOverlap(boolean z) {
        this.enableThumbOverlap = z;
    }

    public void setSteps(int i) {
        this.steps = i;
    }

    public int getSteps() {
        return this.steps;
    }

    public int getStepsColor() {
        return this.stepsColor;
    }

    public void setStepsColor(int i) {
        this.stepsColor = i;
    }

    public float getStepsWidth() {
        return this.stepsWidth;
    }

    public void setStepsWidth(float f) {
        this.stepsWidth = f;
    }

    public float getStepsHeight() {
        return this.stepsHeight;
    }

    public void setStepsHeight(float f) {
        this.stepsHeight = f;
    }

    public float getStepsRadius() {
        return this.stepsRadius;
    }

    public void setStepsRadius(float f) {
        this.stepsRadius = f;
    }

    public void setProgressTop(int i) {
        this.progressTop = i;
    }

    public void setProgressBottom(int i) {
        this.progressBottom = i;
    }

    public void setProgressLeft(int i) {
        this.progressLeft = i;
    }

    public void setProgressRight(int i) {
        this.progressRight = i;
    }

    public int getTickMarkLayoutGravity() {
        return this.tickMarkLayoutGravity;
    }

    public void setTickMarkLayoutGravity(int i) {
        this.tickMarkLayoutGravity = i;
    }

    public int getGravity() {
        return this.gravity;
    }

    public void setGravity(int i) {
        this.gravity = i;
    }

    public boolean isStepsAutoBonding() {
        return this.stepsAutoBonding;
    }

    public void setStepsAutoBonding(boolean z) {
        this.stepsAutoBonding = z;
    }

    public int getStepsDrawableId() {
        return this.stepsDrawableId;
    }

    public void setStepsDrawableId(int i) {
        this.stepsBitmaps.clear();
        this.stepsDrawableId = i;
        initStepsBitmap();
    }

    public List<Bitmap> getStepsBitmaps() {
        return this.stepsBitmaps;
    }

    public void setStepsBitmaps(List<Bitmap> list) {
        if (list == null || list.isEmpty() || list.size() <= this.steps) {
            throw new IllegalArgumentException("stepsBitmaps must > steps !");
        }
        this.stepsBitmaps.clear();
        this.stepsBitmaps.addAll(list);
    }

    public void setStepsDrawable(List<Integer> list) {
        if (list == null || list.isEmpty() || list.size() <= this.steps) {
            throw new IllegalArgumentException("stepsDrawableIds must > steps !");
        } else if (verifyStepsMode()) {
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < list.size(); i++) {
                arrayList.add(Utils.drawableToBitmap(getContext(), (int) this.stepsWidth, (int) this.stepsHeight, list.get(i).intValue()));
            }
            setStepsBitmaps(arrayList);
        } else {
            throw new IllegalArgumentException("stepsWidth must > 0, stepsHeight must > 0,steps must > 0 First!!");
        }
    }
}
