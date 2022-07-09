package com.jaygoo.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.solver.widgets.analyzer.BasicMeasure;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
/* loaded from: classes.dex */
public class VerticalRangeSeekBar extends RangeSeekBar {
    public static final int DIRECTION_LEFT = 1;
    public static final int DIRECTION_RIGHT = 2;
    public static final int TEXT_DIRECTION_HORIZONTAL = 2;
    public static final int TEXT_DIRECTION_VERTICAL = 1;
    private int maxTickMarkWidth;
    private int orientation;
    private int tickMarkDirection;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface DirectionDef {
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface TextDirectionDef {
    }

    public VerticalRangeSeekBar(Context context) {
        this(context, null);
    }

    public VerticalRangeSeekBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.orientation = 1;
        this.tickMarkDirection = 1;
        initAttrs(attributeSet);
        initSeekBar(attributeSet);
    }

    private void initAttrs(AttributeSet attributeSet) {
        try {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, C1372R.styleable.VerticalRangeSeekBar);
            this.orientation = obtainStyledAttributes.getInt(C1372R.styleable.VerticalRangeSeekBar_rsb_orientation, 1);
            this.tickMarkDirection = obtainStyledAttributes.getInt(C1372R.styleable.VerticalRangeSeekBar_rsb_tick_mark_orientation, 1);
            obtainStyledAttributes.recycle();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    protected void initSeekBar(AttributeSet attributeSet) {
        boolean z = true;
        this.leftSB = new VerticalSeekBar(this, attributeSet, true);
        this.rightSB = new VerticalSeekBar(this, attributeSet, false);
        SeekBar seekBar = this.rightSB;
        if (getSeekBarMode() == 1) {
            z = false;
        }
        seekBar.setVisible(z);
    }

    @Override // com.jaygoo.widget.RangeSeekBar, android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i2, i, i4, i3);
    }

    @Override // com.jaygoo.widget.RangeSeekBar, android.view.View
    public void onMeasure(int i, int i2) {
        int i3;
        int i4;
        int size = View.MeasureSpec.getSize(i);
        int mode = View.MeasureSpec.getMode(i);
        if (mode == 1073741824) {
            i3 = View.MeasureSpec.makeMeasureSpec(size, BasicMeasure.EXACTLY);
        } else if (mode == Integer.MIN_VALUE && (getParent() instanceof ViewGroup) && size == -1) {
            i3 = View.MeasureSpec.makeMeasureSpec(((ViewGroup) getParent()).getMeasuredHeight(), Integer.MIN_VALUE);
        } else {
            if (getGravity() == 2) {
                i4 = (getProgressTop() * 2) + getProgressHeight();
            } else {
                i4 = (int) getRawHeight();
            }
            i3 = View.MeasureSpec.makeMeasureSpec(i4, BasicMeasure.EXACTLY);
        }
        super.onMeasure(i3, i2);
    }

    @Override // com.jaygoo.widget.RangeSeekBar, android.view.View
    public void onDraw(Canvas canvas) {
        if (this.orientation == 1) {
            canvas.rotate(-90.0f);
            canvas.translate(-getHeight(), 0.0f);
        } else {
            canvas.rotate(90.0f);
            canvas.translate(0.0f, -getWidth());
        }
        super.onDraw(canvas);
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x010e  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0117  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x011c A[SYNTHETIC] */
    @Override // com.jaygoo.widget.RangeSeekBar
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected void onDrawTickMark(Canvas canvas, Paint paint) {
        float f;
        int i;
        int i2;
        int progressLeft;
        if (getTickMarkTextArray() != null) {
            int length = getTickMarkTextArray().length;
            int progressWidth = getProgressWidth() / (length - 1);
            for (int i3 = 0; i3 < length; i3++) {
                String charSequence = getTickMarkTextArray()[i3].toString();
                if (!TextUtils.isEmpty(charSequence)) {
                    paint.getTextBounds(charSequence, 0, charSequence.length(), this.tickMarkTextRect);
                    paint.setColor(getTickMarkTextColor());
                    if (getTickMarkMode() == 1) {
                        if (getTickMarkGravity() == 2) {
                            progressLeft = (getProgressLeft() + (i3 * progressWidth)) - this.tickMarkTextRect.width();
                        } else if (getTickMarkGravity() == 1) {
                            f = (getProgressLeft() + (i3 * progressWidth)) - (this.tickMarkTextRect.width() / 2.0f);
                        } else {
                            progressLeft = getProgressLeft() + (i3 * progressWidth);
                        }
                        f = progressLeft;
                    } else {
                        float parseFloat = Utils.parseFloat(charSequence);
                        SeekBarState[] rangeSeekBarState = getRangeSeekBarState();
                        if (!(Utils.compareFloat(parseFloat, rangeSeekBarState[0].value) == -1 || Utils.compareFloat(parseFloat, rangeSeekBarState[1].value) == 1 || getSeekBarMode() != 2)) {
                            paint.setColor(getTickMarkInRangeTextColor());
                        }
                        f = (getProgressLeft() + ((getProgressWidth() * (parseFloat - getMinProgress())) / (getMaxProgress() - getMinProgress()))) - (this.tickMarkTextRect.width() / 2.0f);
                    }
                    if (getTickMarkLayoutGravity() == 0) {
                        i = getProgressTop() - getTickMarkTextMargin();
                    } else {
                        i = getProgressBottom() + getTickMarkTextMargin() + this.tickMarkTextRect.height();
                    }
                    float f2 = i;
                    float width = (this.tickMarkTextRect.width() / 2.0f) + f;
                    float height = f2 - (this.tickMarkTextRect.height() / 2.0f);
                    if (this.tickMarkDirection == 1) {
                        int i4 = this.orientation;
                        if (i4 == 1) {
                            i2 = 90;
                        } else if (i4 == 2) {
                            i2 = -90;
                        }
                        if (i2 != 0) {
                            canvas.rotate(i2, width, height);
                        }
                        canvas.drawText(charSequence, f, f2, paint);
                        if (i2 == 0) {
                            canvas.rotate(-i2, width, height);
                        }
                    }
                    i2 = 0;
                    if (i2 != 0) {
                    }
                    canvas.drawText(charSequence, f, f2, paint);
                    if (i2 == 0) {
                    }
                }
            }
        }
    }

    @Override // com.jaygoo.widget.RangeSeekBar
    protected int getTickMarkRawHeight() {
        int tickMarkTextMargin;
        int i;
        if (this.maxTickMarkWidth > 0) {
            tickMarkTextMargin = getTickMarkTextMargin();
            i = this.maxTickMarkWidth;
        } else if (getTickMarkTextArray() == null || getTickMarkTextArray().length <= 0) {
            return 0;
        } else {
            int length = getTickMarkTextArray().length;
            this.maxTickMarkWidth = Utils.measureText(String.valueOf(getTickMarkTextArray()[0]), getTickMarkTextSize()).width();
            for (int i2 = 1; i2 < length; i2++) {
                int width = Utils.measureText(String.valueOf(getTickMarkTextArray()[i2]), getTickMarkTextSize()).width();
                if (this.maxTickMarkWidth < width) {
                    this.maxTickMarkWidth = width;
                }
            }
            tickMarkTextMargin = getTickMarkTextMargin();
            i = this.maxTickMarkWidth;
        }
        return tickMarkTextMargin + i;
    }

    @Override // com.jaygoo.widget.RangeSeekBar
    public void setTickMarkTextSize(int i) {
        super.setTickMarkTextSize(i);
        this.maxTickMarkWidth = 0;
    }

    @Override // com.jaygoo.widget.RangeSeekBar
    public void setTickMarkTextArray(CharSequence[] charSequenceArr) {
        super.setTickMarkTextArray(charSequenceArr);
        this.maxTickMarkWidth = 0;
    }

    @Override // com.jaygoo.widget.RangeSeekBar
    protected float getEventX(MotionEvent motionEvent) {
        if (this.orientation == 1) {
            return getHeight() - motionEvent.getY();
        }
        return motionEvent.getY();
    }

    @Override // com.jaygoo.widget.RangeSeekBar
    protected float getEventY(MotionEvent motionEvent) {
        if (this.orientation == 1) {
            return motionEvent.getX();
        }
        return (-motionEvent.getX()) + getWidth();
    }

    @Override // com.jaygoo.widget.RangeSeekBar
    public VerticalSeekBar getLeftSeekBar() {
        return (VerticalSeekBar) this.leftSB;
    }

    @Override // com.jaygoo.widget.RangeSeekBar
    public VerticalSeekBar getRightSeekBar() {
        return (VerticalSeekBar) this.rightSB;
    }

    public int getOrientation() {
        return this.orientation;
    }

    public void setOrientation(int i) {
        this.orientation = i;
    }

    public int getTickMarkDirection() {
        return this.tickMarkDirection;
    }

    public void setTickMarkDirection(int i) {
        this.tickMarkDirection = i;
    }
}
