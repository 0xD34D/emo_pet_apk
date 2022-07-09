package com.jaygoo.widget;

import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
/* loaded from: classes.dex */
public class VerticalSeekBar extends SeekBar {
    private int indicatorTextOrientation;
    VerticalRangeSeekBar verticalSeekBar;

    public VerticalSeekBar(RangeSeekBar rangeSeekBar, AttributeSet attributeSet, boolean z) {
        super(rangeSeekBar, attributeSet, z);
        initAttrs(attributeSet);
        this.verticalSeekBar = (VerticalRangeSeekBar) rangeSeekBar;
    }

    private void initAttrs(AttributeSet attributeSet) {
        try {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, C1372R.styleable.VerticalRangeSeekBar);
            this.indicatorTextOrientation = obtainStyledAttributes.getInt(C1372R.styleable.VerticalRangeSeekBar_rsb_indicator_text_orientation, 1);
            obtainStyledAttributes.recycle();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.jaygoo.widget.SeekBar
    public void onDrawIndicator(Canvas canvas, Paint paint, String str) {
        if (str != null) {
            if (this.indicatorTextOrientation == 1) {
                drawVerticalIndicator(canvas, paint, str);
            } else {
                super.onDrawIndicator(canvas, paint, str);
            }
        }
    }

    protected void drawVerticalIndicator(Canvas canvas, Paint paint, String str) {
        paint.setTextSize(getIndicatorTextSize());
        paint.setStyle(Paint.Style.FILL);
        paint.setColor(getIndicatorBackgroundColor());
        int i = 0;
        paint.getTextBounds(str, 0, str.length(), this.indicatorTextRect);
        int height = this.indicatorTextRect.height() + getIndicatorPaddingLeft() + getIndicatorPaddingRight();
        if (getIndicatorWidth() > height) {
            height = getIndicatorWidth();
        }
        int width = this.indicatorTextRect.width() + getIndicatorPaddingTop() + getIndicatorPaddingBottom();
        if (getIndicatorHeight() > width) {
            width = getIndicatorHeight();
        }
        this.indicatorRect.left = (this.scaleThumbWidth / 2) - (height / 2);
        this.indicatorRect.top = ((this.bottom - width) - this.scaleThumbHeight) - getIndicatorMargin();
        this.indicatorRect.right = this.indicatorRect.left + height;
        this.indicatorRect.bottom = this.indicatorRect.top + width;
        if (this.indicatorBitmap == null) {
            int i2 = this.scaleThumbWidth / 2;
            int i3 = this.indicatorRect.bottom;
            int indicatorArrowSize = i2 - getIndicatorArrowSize();
            int indicatorArrowSize2 = i3 - getIndicatorArrowSize();
            int indicatorArrowSize3 = getIndicatorArrowSize() + i2;
            this.indicatorArrowPath.reset();
            this.indicatorArrowPath.moveTo(i2, i3);
            float f = indicatorArrowSize;
            float f2 = indicatorArrowSize2;
            this.indicatorArrowPath.lineTo(f, f2);
            this.indicatorArrowPath.lineTo(indicatorArrowSize3, f2);
            this.indicatorArrowPath.close();
            canvas.drawPath(this.indicatorArrowPath, paint);
            this.indicatorRect.bottom -= getIndicatorArrowSize();
            this.indicatorRect.top -= getIndicatorArrowSize();
        }
        int dp2px = Utils.dp2px(getContext(), 1.0f);
        int width2 = (((this.indicatorRect.width() / 2) - ((int) (this.rangeSeekBar.getProgressWidth() * this.currPercent))) - this.rangeSeekBar.getProgressLeft()) + dp2px;
        int width3 = (((this.indicatorRect.width() / 2) - ((int) (this.rangeSeekBar.getProgressWidth() * (1.0f - this.currPercent)))) - this.rangeSeekBar.getProgressPaddingRight()) + dp2px;
        if (width2 > 0) {
            this.indicatorRect.left += width2;
            this.indicatorRect.right += width2;
        } else if (width3 > 0) {
            this.indicatorRect.left -= width3;
            this.indicatorRect.right -= width3;
        }
        if (this.indicatorBitmap != null) {
            Utils.drawBitmap(canvas, paint, this.indicatorBitmap, this.indicatorRect);
        } else if (getIndicatorRadius() > 0.0f) {
            canvas.drawRoundRect(new RectF(this.indicatorRect), getIndicatorRadius(), getIndicatorRadius(), paint);
        } else {
            canvas.drawRect(this.indicatorRect, paint);
        }
        int width4 = ((this.indicatorRect.left + ((this.indicatorRect.width() - this.indicatorTextRect.width()) / 2)) + getIndicatorPaddingLeft()) - getIndicatorPaddingRight();
        int height2 = ((this.indicatorRect.bottom - ((this.indicatorRect.height() - this.indicatorTextRect.height()) / 2)) + getIndicatorPaddingTop()) - getIndicatorPaddingBottom();
        paint.setColor(getIndicatorTextColor());
        float f3 = width4;
        float width5 = (this.indicatorTextRect.width() / 2.0f) + f3;
        float f4 = height2;
        float height3 = f4 - (this.indicatorTextRect.height() / 2.0f);
        if (this.indicatorTextOrientation == 1) {
            if (this.verticalSeekBar.getOrientation() == 1) {
                i = 90;
            } else if (this.verticalSeekBar.getOrientation() == 2) {
                i = -90;
            }
        }
        if (i != 0) {
            canvas.rotate(i, width5, height3);
        }
        canvas.drawText(str, f3, f4, paint);
        if (i != 0) {
            canvas.rotate(-i, width5, height3);
        }
    }

    public int getIndicatorTextOrientation() {
        return this.indicatorTextOrientation;
    }

    public void setIndicatorTextOrientation(int i) {
        this.indicatorTextOrientation = i;
    }
}
