package com.jaygoo.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.os.Build;
import android.text.TextUtils;
import android.util.AttributeSet;
import androidx.core.content.ContextCompat;
import java.text.DecimalFormat;
/* loaded from: classes.dex */
public class SeekBar {
    public static final int INDICATOR_ALWAYS_HIDE = 1;
    public static final int INDICATOR_ALWAYS_SHOW = 3;
    public static final int INDICATOR_ALWAYS_SHOW_AFTER_TOUCH = 2;
    public static final int INDICATOR_SHOW_WHEN_TOUCH = 0;
    public static final int MATCH_PARENT = -2;
    public static final int WRAP_CONTENT = -1;
    ValueAnimator anim;
    int bottom;
    float currPercent;
    private int indicatorArrowSize;
    private int indicatorBackgroundColor;
    Bitmap indicatorBitmap;
    private int indicatorDrawableId;
    private int indicatorHeight;
    private int indicatorMargin;
    private int indicatorPaddingBottom;
    private int indicatorPaddingLeft;
    private int indicatorPaddingRight;
    private int indicatorPaddingTop;
    private float indicatorRadius;
    private int indicatorShowMode;
    private int indicatorTextColor;
    DecimalFormat indicatorTextDecimalFormat;
    private int indicatorTextSize;
    String indicatorTextStringFormat;
    private int indicatorWidth;
    boolean isLeft;
    private boolean isShowIndicator;
    int left;
    RangeSeekBar rangeSeekBar;
    int right;
    int scaleThumbHeight;
    int scaleThumbWidth;
    Bitmap thumbBitmap;
    private int thumbDrawableId;
    private int thumbHeight;
    Bitmap thumbInactivatedBitmap;
    private int thumbInactivatedDrawableId;
    float thumbScaleRatio;
    private int thumbWidth;
    int top;
    String userText2Draw;
    float material = 0.0f;
    boolean isActivate = false;
    boolean isVisible = true;
    Path indicatorArrowPath = new Path();
    Rect indicatorTextRect = new Rect();
    Rect indicatorRect = new Rect();
    Paint paint = new Paint(1);

    /* loaded from: classes.dex */
    public @interface IndicatorModeDef {
    }

    public SeekBar(RangeSeekBar rangeSeekBar, AttributeSet attributeSet, boolean z) {
        this.rangeSeekBar = rangeSeekBar;
        this.isLeft = z;
        initAttrs(attributeSet);
        initBitmap();
        initVariables();
    }

    private void initAttrs(AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, C1372R.styleable.RangeSeekBar);
        if (obtainStyledAttributes != null) {
            this.indicatorMargin = (int) obtainStyledAttributes.getDimension(C1372R.styleable.RangeSeekBar_rsb_indicator_margin, 0.0f);
            this.indicatorDrawableId = obtainStyledAttributes.getResourceId(C1372R.styleable.RangeSeekBar_rsb_indicator_drawable, 0);
            this.indicatorShowMode = obtainStyledAttributes.getInt(C1372R.styleable.RangeSeekBar_rsb_indicator_show_mode, 1);
            this.indicatorHeight = obtainStyledAttributes.getLayoutDimension(C1372R.styleable.RangeSeekBar_rsb_indicator_height, -1);
            this.indicatorWidth = obtainStyledAttributes.getLayoutDimension(C1372R.styleable.RangeSeekBar_rsb_indicator_width, -1);
            this.indicatorTextSize = (int) obtainStyledAttributes.getDimension(C1372R.styleable.RangeSeekBar_rsb_indicator_text_size, Utils.dp2px(getContext(), 14.0f));
            this.indicatorTextColor = obtainStyledAttributes.getColor(C1372R.styleable.RangeSeekBar_rsb_indicator_text_color, -1);
            this.indicatorBackgroundColor = obtainStyledAttributes.getColor(C1372R.styleable.RangeSeekBar_rsb_indicator_background_color, ContextCompat.getColor(getContext(), C1372R.C1373color.colorAccent));
            this.indicatorPaddingLeft = (int) obtainStyledAttributes.getDimension(C1372R.styleable.RangeSeekBar_rsb_indicator_padding_left, 0.0f);
            this.indicatorPaddingRight = (int) obtainStyledAttributes.getDimension(C1372R.styleable.RangeSeekBar_rsb_indicator_padding_right, 0.0f);
            this.indicatorPaddingTop = (int) obtainStyledAttributes.getDimension(C1372R.styleable.RangeSeekBar_rsb_indicator_padding_top, 0.0f);
            this.indicatorPaddingBottom = (int) obtainStyledAttributes.getDimension(C1372R.styleable.RangeSeekBar_rsb_indicator_padding_bottom, 0.0f);
            this.indicatorArrowSize = (int) obtainStyledAttributes.getDimension(C1372R.styleable.RangeSeekBar_rsb_indicator_arrow_size, 0.0f);
            this.thumbDrawableId = obtainStyledAttributes.getResourceId(C1372R.styleable.RangeSeekBar_rsb_thumb_drawable, C1372R.C1374drawable.rsb_default_thumb);
            this.thumbInactivatedDrawableId = obtainStyledAttributes.getResourceId(C1372R.styleable.RangeSeekBar_rsb_thumb_inactivated_drawable, 0);
            this.thumbWidth = (int) obtainStyledAttributes.getDimension(C1372R.styleable.RangeSeekBar_rsb_thumb_width, Utils.dp2px(getContext(), 26.0f));
            this.thumbHeight = (int) obtainStyledAttributes.getDimension(C1372R.styleable.RangeSeekBar_rsb_thumb_height, Utils.dp2px(getContext(), 26.0f));
            this.thumbScaleRatio = obtainStyledAttributes.getFloat(C1372R.styleable.RangeSeekBar_rsb_thumb_scale_ratio, 1.0f);
            this.indicatorRadius = obtainStyledAttributes.getDimension(C1372R.styleable.RangeSeekBar_rsb_indicator_radius, 0.0f);
            obtainStyledAttributes.recycle();
        }
    }

    protected void initVariables() {
        this.scaleThumbWidth = this.thumbWidth;
        this.scaleThumbHeight = this.thumbHeight;
        if (this.indicatorHeight == -1) {
            this.indicatorHeight = Utils.measureText("8", this.indicatorTextSize).height() + this.indicatorPaddingTop + this.indicatorPaddingBottom;
        }
        if (this.indicatorArrowSize <= 0) {
            this.indicatorArrowSize = this.thumbWidth / 4;
        }
    }

    public Context getContext() {
        return this.rangeSeekBar.getContext();
    }

    public Resources getResources() {
        if (getContext() != null) {
            return getContext().getResources();
        }
        return null;
    }

    private void initBitmap() {
        setIndicatorDrawableId(this.indicatorDrawableId);
        setThumbDrawableId(this.thumbDrawableId, this.thumbWidth, this.thumbHeight);
        setThumbInactivatedDrawableId(this.thumbInactivatedDrawableId, this.thumbWidth, this.thumbHeight);
    }

    public void onSizeChanged(int i, int i2) {
        initVariables();
        initBitmap();
        float f = i;
        this.left = (int) (f - (getThumbScaleWidth() / 2.0f));
        this.right = (int) (f + (getThumbScaleWidth() / 2.0f));
        this.top = i2 - (getThumbHeight() / 2);
        this.bottom = i2 + (getThumbHeight() / 2);
    }

    public void scaleThumb() {
        this.scaleThumbWidth = (int) getThumbScaleWidth();
        this.scaleThumbHeight = (int) getThumbScaleHeight();
        int progressBottom = this.rangeSeekBar.getProgressBottom();
        int i = this.scaleThumbHeight;
        this.top = progressBottom - (i / 2);
        this.bottom = progressBottom + (i / 2);
        setThumbDrawableId(this.thumbDrawableId, this.scaleThumbWidth, i);
    }

    public void resetThumb() {
        this.scaleThumbWidth = getThumbWidth();
        this.scaleThumbHeight = getThumbHeight();
        int progressBottom = this.rangeSeekBar.getProgressBottom();
        int i = this.scaleThumbHeight;
        this.top = progressBottom - (i / 2);
        this.bottom = progressBottom + (i / 2);
        setThumbDrawableId(this.thumbDrawableId, this.scaleThumbWidth, i);
    }

    public float getRawHeight() {
        return getIndicatorHeight() + getIndicatorArrowSize() + getIndicatorMargin() + getThumbScaleHeight();
    }

    public void draw(Canvas canvas) {
        if (this.isVisible) {
            canvas.save();
            canvas.translate((int) (this.rangeSeekBar.getProgressWidth() * this.currPercent), 0.0f);
            canvas.translate(this.left, 0.0f);
            if (this.isShowIndicator) {
                onDrawIndicator(canvas, this.paint, formatCurrentIndicatorText(this.userText2Draw));
            }
            onDrawThumb(canvas);
            canvas.restore();
        }
    }

    protected void onDrawThumb(Canvas canvas) {
        Bitmap bitmap = this.thumbInactivatedBitmap;
        if (bitmap == null || this.isActivate) {
            Bitmap bitmap2 = this.thumbBitmap;
            if (bitmap2 != null) {
                canvas.drawBitmap(bitmap2, 0.0f, this.rangeSeekBar.getProgressTop() + ((this.rangeSeekBar.getProgressHeight() - this.scaleThumbHeight) / 2.0f), (Paint) null);
                return;
            }
            return;
        }
        canvas.drawBitmap(bitmap, 0.0f, this.rangeSeekBar.getProgressTop() + ((this.rangeSeekBar.getProgressHeight() - this.scaleThumbHeight) / 2.0f), (Paint) null);
    }

    protected String formatCurrentIndicatorText(String str) {
        SeekBarState[] rangeSeekBarState = this.rangeSeekBar.getRangeSeekBarState();
        if (TextUtils.isEmpty(str)) {
            if (this.isLeft) {
                DecimalFormat decimalFormat = this.indicatorTextDecimalFormat;
                if (decimalFormat != null) {
                    str = decimalFormat.format(rangeSeekBarState[0].value);
                } else {
                    str = rangeSeekBarState[0].indicatorText;
                }
            } else {
                DecimalFormat decimalFormat2 = this.indicatorTextDecimalFormat;
                if (decimalFormat2 != null) {
                    str = decimalFormat2.format(rangeSeekBarState[1].value);
                } else {
                    str = rangeSeekBarState[1].indicatorText;
                }
            }
        }
        String str2 = this.indicatorTextStringFormat;
        return str2 != null ? String.format(str2, str) : str;
    }

    public void onDrawIndicator(Canvas canvas, Paint paint, String str) {
        int i;
        int i2;
        if (str != null) {
            paint.setTextSize(this.indicatorTextSize);
            paint.setStyle(Paint.Style.FILL);
            paint.setColor(this.indicatorBackgroundColor);
            paint.getTextBounds(str, 0, str.length(), this.indicatorTextRect);
            int width = this.indicatorTextRect.width() + this.indicatorPaddingLeft + this.indicatorPaddingRight;
            int i3 = this.indicatorWidth;
            if (i3 > width) {
                width = i3;
            }
            int height = this.indicatorTextRect.height() + this.indicatorPaddingTop + this.indicatorPaddingBottom;
            int i4 = this.indicatorHeight;
            if (i4 > height) {
                height = i4;
            }
            this.indicatorRect.left = (int) ((this.scaleThumbWidth / 2.0f) - (width / 2.0f));
            this.indicatorRect.top = ((this.bottom - height) - this.scaleThumbHeight) - this.indicatorMargin;
            Rect rect = this.indicatorRect;
            rect.right = rect.left + width;
            Rect rect2 = this.indicatorRect;
            rect2.bottom = rect2.top + height;
            if (this.indicatorBitmap == null) {
                int i5 = this.scaleThumbWidth / 2;
                int i6 = this.indicatorRect.bottom;
                int i7 = this.indicatorArrowSize;
                int i8 = i6 - i7;
                this.indicatorArrowPath.reset();
                this.indicatorArrowPath.moveTo(i5, i6);
                float f = i5 - i7;
                float f2 = i8;
                this.indicatorArrowPath.lineTo(f, f2);
                this.indicatorArrowPath.lineTo(i7 + i5, f2);
                this.indicatorArrowPath.close();
                canvas.drawPath(this.indicatorArrowPath, paint);
                this.indicatorRect.bottom -= this.indicatorArrowSize;
                this.indicatorRect.top -= this.indicatorArrowSize;
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
            Bitmap bitmap = this.indicatorBitmap;
            if (bitmap != null) {
                Utils.drawBitmap(canvas, paint, bitmap, this.indicatorRect);
            } else if (this.indicatorRadius > 0.0f) {
                RectF rectF = new RectF(this.indicatorRect);
                float f3 = this.indicatorRadius;
                canvas.drawRoundRect(rectF, f3, f3, paint);
            } else {
                canvas.drawRect(this.indicatorRect, paint);
            }
            if (this.indicatorPaddingLeft > 0) {
                i = this.indicatorRect.left + this.indicatorPaddingLeft;
            } else if (this.indicatorPaddingRight > 0) {
                i = (this.indicatorRect.right - this.indicatorPaddingRight) - this.indicatorTextRect.width();
            } else {
                i = ((width - this.indicatorTextRect.width()) / 2) + this.indicatorRect.left;
            }
            if (this.indicatorPaddingTop > 0) {
                i2 = this.indicatorRect.top + this.indicatorTextRect.height() + this.indicatorPaddingTop;
            } else if (this.indicatorPaddingBottom > 0) {
                i2 = (this.indicatorRect.bottom - this.indicatorTextRect.height()) - this.indicatorPaddingBottom;
            } else {
                i2 = (this.indicatorRect.bottom - ((height - this.indicatorTextRect.height()) / 2)) + 1;
            }
            paint.setColor(this.indicatorTextColor);
            canvas.drawText(str, i, i2, paint);
        }
    }

    public boolean collide(float f, float f2) {
        int progressWidth = (int) (this.rangeSeekBar.getProgressWidth() * this.currPercent);
        return f > ((float) (this.left + progressWidth)) && f < ((float) (this.right + progressWidth)) && f2 > ((float) this.top) && f2 < ((float) this.bottom);
    }

    public void slide(float f) {
        if (f < 0.0f) {
            f = 0.0f;
        } else if (f > 1.0f) {
            f = 1.0f;
        }
        this.currPercent = f;
    }

    public void setShowIndicatorEnable(boolean z) {
        int i = this.indicatorShowMode;
        if (i == 0) {
            this.isShowIndicator = z;
        } else if (i == 1) {
            this.isShowIndicator = false;
        } else if (i == 2 || i == 3) {
            this.isShowIndicator = true;
        }
    }

    public void materialRestore() {
        ValueAnimator valueAnimator = this.anim;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        ValueAnimator ofFloat = ValueAnimator.ofFloat(this.material, 0.0f);
        this.anim = ofFloat;
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.jaygoo.widget.SeekBar.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator2) {
                SeekBar.this.material = ((Float) valueAnimator2.getAnimatedValue()).floatValue();
                if (SeekBar.this.rangeSeekBar != null) {
                    SeekBar.this.rangeSeekBar.invalidate();
                }
            }
        });
        this.anim.addListener(new AnimatorListenerAdapter() { // from class: com.jaygoo.widget.SeekBar.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                SeekBar.this.material = 0.0f;
                if (SeekBar.this.rangeSeekBar != null) {
                    SeekBar.this.rangeSeekBar.invalidate();
                }
            }
        });
        this.anim.start();
    }

    public void setIndicatorText(String str) {
        this.userText2Draw = str;
    }

    public void setIndicatorTextDecimalFormat(String str) {
        this.indicatorTextDecimalFormat = new DecimalFormat(str);
    }

    public DecimalFormat getIndicatorTextDecimalFormat() {
        return this.indicatorTextDecimalFormat;
    }

    public void setIndicatorTextStringFormat(String str) {
        this.indicatorTextStringFormat = str;
    }

    public int getIndicatorDrawableId() {
        return this.indicatorDrawableId;
    }

    public void setIndicatorDrawableId(int i) {
        if (i != 0) {
            this.indicatorDrawableId = i;
            this.indicatorBitmap = BitmapFactory.decodeResource(getResources(), i);
        }
    }

    public int getIndicatorArrowSize() {
        return this.indicatorArrowSize;
    }

    public void setIndicatorArrowSize(int i) {
        this.indicatorArrowSize = i;
    }

    public int getIndicatorPaddingLeft() {
        return this.indicatorPaddingLeft;
    }

    public void setIndicatorPaddingLeft(int i) {
        this.indicatorPaddingLeft = i;
    }

    public int getIndicatorPaddingRight() {
        return this.indicatorPaddingRight;
    }

    public void setIndicatorPaddingRight(int i) {
        this.indicatorPaddingRight = i;
    }

    public int getIndicatorPaddingTop() {
        return this.indicatorPaddingTop;
    }

    public void setIndicatorPaddingTop(int i) {
        this.indicatorPaddingTop = i;
    }

    public int getIndicatorPaddingBottom() {
        return this.indicatorPaddingBottom;
    }

    public void setIndicatorPaddingBottom(int i) {
        this.indicatorPaddingBottom = i;
    }

    public int getIndicatorMargin() {
        return this.indicatorMargin;
    }

    public void setIndicatorMargin(int i) {
        this.indicatorMargin = i;
    }

    public int getIndicatorShowMode() {
        return this.indicatorShowMode;
    }

    public void setIndicatorShowMode(int i) {
        this.indicatorShowMode = i;
    }

    public void showIndicator(boolean z) {
        this.isShowIndicator = z;
    }

    public boolean isShowIndicator() {
        return this.isShowIndicator;
    }

    public int getIndicatorRawHeight() {
        int i;
        int i2 = this.indicatorHeight;
        if (i2 > 0) {
            if (this.indicatorBitmap != null) {
                i = this.indicatorMargin;
            } else {
                i2 += this.indicatorArrowSize;
                i = this.indicatorMargin;
            }
        } else if (this.indicatorBitmap != null) {
            i2 = Utils.measureText("8", this.indicatorTextSize).height() + this.indicatorPaddingTop + this.indicatorPaddingBottom;
            i = this.indicatorMargin;
        } else {
            i2 = Utils.measureText("8", this.indicatorTextSize).height() + this.indicatorPaddingTop + this.indicatorPaddingBottom + this.indicatorMargin;
            i = this.indicatorArrowSize;
        }
        return i2 + i;
    }

    public int getIndicatorHeight() {
        return this.indicatorHeight;
    }

    public void setIndicatorHeight(int i) {
        this.indicatorHeight = i;
    }

    public int getIndicatorWidth() {
        return this.indicatorWidth;
    }

    public void setIndicatorWidth(int i) {
        this.indicatorWidth = i;
    }

    public int getIndicatorTextSize() {
        return this.indicatorTextSize;
    }

    public void setIndicatorTextSize(int i) {
        this.indicatorTextSize = i;
    }

    public int getIndicatorTextColor() {
        return this.indicatorTextColor;
    }

    public void setIndicatorTextColor(int i) {
        this.indicatorTextColor = i;
    }

    public int getIndicatorBackgroundColor() {
        return this.indicatorBackgroundColor;
    }

    public void setIndicatorBackgroundColor(int i) {
        this.indicatorBackgroundColor = i;
    }

    public int getThumbInactivatedDrawableId() {
        return this.thumbInactivatedDrawableId;
    }

    public void setThumbInactivatedDrawableId(int i, int i2, int i3) {
        if (i != 0 && getResources() != null) {
            this.thumbInactivatedDrawableId = i;
            if (Build.VERSION.SDK_INT >= 21) {
                this.thumbInactivatedBitmap = Utils.drawableToBitmap(i2, i3, getResources().getDrawable(i, null));
            } else {
                this.thumbInactivatedBitmap = Utils.drawableToBitmap(i2, i3, getResources().getDrawable(i));
            }
        }
    }

    public int getThumbDrawableId() {
        return this.thumbDrawableId;
    }

    public void setThumbDrawableId(int i, int i2, int i3) {
        if (i != 0 && getResources() != null && i2 > 0 && i3 > 0) {
            this.thumbDrawableId = i;
            if (Build.VERSION.SDK_INT >= 21) {
                this.thumbBitmap = Utils.drawableToBitmap(i2, i3, getResources().getDrawable(i, null));
            } else {
                this.thumbBitmap = Utils.drawableToBitmap(i2, i3, getResources().getDrawable(i));
            }
        }
    }

    public void setThumbDrawableId(int i) {
        if (this.thumbWidth <= 0 || this.thumbHeight <= 0) {
            throw new IllegalArgumentException("please set thumbWidth and thumbHeight first!");
        } else if (i != 0 && getResources() != null) {
            this.thumbDrawableId = i;
            if (Build.VERSION.SDK_INT >= 21) {
                this.thumbBitmap = Utils.drawableToBitmap(this.thumbWidth, this.thumbHeight, getResources().getDrawable(i, null));
            } else {
                this.thumbBitmap = Utils.drawableToBitmap(this.thumbWidth, this.thumbHeight, getResources().getDrawable(i));
            }
        }
    }

    public int getThumbWidth() {
        return this.thumbWidth;
    }

    public void setThumbWidth(int i) {
        this.thumbWidth = i;
    }

    public float getThumbScaleHeight() {
        return this.thumbHeight * this.thumbScaleRatio;
    }

    public float getThumbScaleWidth() {
        return this.thumbWidth * this.thumbScaleRatio;
    }

    public int getThumbHeight() {
        return this.thumbHeight;
    }

    public void setThumbHeight(int i) {
        this.thumbHeight = i;
    }

    public float getIndicatorRadius() {
        return this.indicatorRadius;
    }

    public void setIndicatorRadius(float f) {
        this.indicatorRadius = f;
    }

    protected boolean getActivate() {
        return this.isActivate;
    }

    public void setActivate(boolean z) {
        this.isActivate = z;
    }

    public void setTypeface(Typeface typeface) {
        this.paint.setTypeface(typeface);
    }

    public float getThumbScaleRatio() {
        return this.thumbScaleRatio;
    }

    public boolean isVisible() {
        return this.isVisible;
    }

    public void setVisible(boolean z) {
        this.isVisible = z;
    }

    public float getProgress() {
        return this.rangeSeekBar.getMinProgress() + ((this.rangeSeekBar.getMaxProgress() - this.rangeSeekBar.getMinProgress()) * this.currPercent);
    }
}
