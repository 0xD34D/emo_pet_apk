package com.zyyoona7.wheel;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Camera;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.media.AudioManager;
import android.media.SoundPool;
import android.os.Build;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.Scroller;
import androidx.core.content.ContextCompat;
import androidx.core.view.ViewCompat;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
/* loaded from: classes.dex */
public class WheelView<T> extends View implements Runnable {
    public static final int CURVED_ARC_DIRECTION_CENTER = 1;
    public static final int CURVED_ARC_DIRECTION_LEFT = 0;
    public static final int CURVED_ARC_DIRECTION_RIGHT = 2;
    private static final long DEFAULT_CLICK_CONFIRM = 120;
    public static final float DEFAULT_CURVED_FACTOR = 0.75f;
    private static final String DEFAULT_INTEGER_FORMAT = "%02d";
    private static final int DEFAULT_NORMAL_TEXT_COLOR = -12303292;
    private static final float DEFAULT_REFRACT_RATIO = 1.0f;
    private static final int DEFAULT_SCROLL_DURATION = 250;
    private static final int DEFAULT_SELECTED_TEXT_COLOR = -16777216;
    private static final int DEFAULT_VISIBLE_ITEM = 5;
    public static final int DIVIDER_TYPE_FILL = 0;
    public static final int DIVIDER_TYPE_WRAP = 1;
    public static final int SCROLL_STATE_DRAGGING = 1;
    public static final int SCROLL_STATE_IDLE = 0;
    public static final int SCROLL_STATE_SCROLLING = 2;
    private static final String TAG = "WheelView";
    public static final int TEXT_ALIGN_CENTER = 1;
    public static final int TEXT_ALIGN_LEFT = 0;
    public static final int TEXT_ALIGN_RIGHT = 2;
    private boolean isAutoFitTextSize;
    private boolean isCurved;
    private boolean isCyclic;
    private boolean isDrawSelectedRect;
    private boolean isFlingScroll;
    private boolean isForceFinishScroll;
    private boolean isIntegerNeedFormat;
    private boolean isResetSelectedPosition;
    private boolean isShowDivider;
    private boolean isSoundEffect;
    private Typeface mBoldTypeface;
    private Camera mCamera;
    private int mCenterToBaselineY;
    private int mCenterX;
    private int mCenterY;
    private int mClipBottom;
    private int mClipLeft;
    private int mClipRight;
    private int mClipTop;
    private int mCurrentScrollPosition;
    private int mCurvedArcDirection;
    private float mCurvedArcDirectionFactor;
    private List<T> mDataList;
    private Paint.Cap mDividerCap;
    private int mDividerColor;
    private float mDividerOffset;
    private float mDividerPaddingForWrap;
    private float mDividerSize;
    private int mDividerType;
    private long mDownStartTime;
    private Rect mDrawRect;
    private Paint.FontMetrics mFontMetrics;
    private String mIntegerFormat;
    private boolean mIsBoldForSelectedItem;
    private int mItemHeight;
    private float mLastTouchY;
    private float mLineSpacing;
    private Matrix mMatrix;
    private int mMaxFlingVelocity;
    private int mMaxScrollY;
    private int mMaxTextWidth;
    private int mMinFlingVelocity;
    private int mMinScrollY;
    private Typeface mNormalTypeface;
    private OnItemSelectedListener<T> mOnItemSelectedListener;
    private OnWheelChangedListener mOnWheelChangedListener;
    private Paint mPaint;
    private float mRefractRatio;
    private int mScrollOffsetY;
    private int mScrolledY;
    private Scroller mScroller;
    private int mSelectedItemBottomLimit;
    private int mSelectedItemPosition;
    private int mSelectedItemTextColor;
    private int mSelectedItemTopLimit;
    private int mSelectedRectColor;
    private SoundHelper mSoundHelper;
    private int mStartX;
    private int mTextAlign;
    private float mTextBoundaryMargin;
    private int mTextColor;
    private float mTextSize;
    private VelocityTracker mVelocityTracker;
    private int mVisibleItems;
    private static final float DEFAULT_LINE_SPACING = dp2px(2.0f);
    private static final float DEFAULT_TEXT_SIZE = sp2px(15.0f);
    private static final float DEFAULT_TEXT_BOUNDARY_MARGIN = dp2px(2.0f);
    private static final float DEFAULT_DIVIDER_HEIGHT = dp2px(1.0f);

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface CurvedArcDirection {
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface DividerType {
    }

    /* loaded from: classes.dex */
    public interface OnItemSelectedListener<T> {
        void onItemSelected(WheelView<T> wheelView, T t, int i);
    }

    /* loaded from: classes.dex */
    public interface OnWheelChangedListener {
        void onWheelItemChanged(int i, int i2);

        void onWheelScroll(int i);

        void onWheelScrollStateChanged(int i);

        void onWheelSelected(int i);
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface TextAlign {
    }

    protected void onItemSelected(T t, int i) {
    }

    protected void onWheelItemChanged(int i, int i2) {
    }

    protected void onWheelScroll(int i) {
    }

    protected void onWheelScrollStateChanged(int i) {
    }

    protected void onWheelSelected(int i) {
    }

    public WheelView(Context context) {
        this(context, null);
    }

    public WheelView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public WheelView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mPaint = new Paint(1);
        this.mDividerCap = Paint.Cap.ROUND;
        this.mDataList = new ArrayList(1);
        this.isResetSelectedPosition = false;
        this.mScrolledY = 0;
        this.isForceFinishScroll = false;
        this.mIsBoldForSelectedItem = false;
        this.mNormalTypeface = null;
        this.mBoldTypeface = null;
        this.isSoundEffect = false;
        initAttrsAndDefault(context, attributeSet);
        initValue(context);
    }

    private void initAttrsAndDefault(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1641R.styleable.WheelView);
        this.mTextSize = obtainStyledAttributes.getDimension(C1641R.styleable.WheelView_wv_textSize, DEFAULT_TEXT_SIZE);
        this.isAutoFitTextSize = obtainStyledAttributes.getBoolean(C1641R.styleable.WheelView_wv_autoFitTextSize, false);
        this.mTextAlign = obtainStyledAttributes.getInt(C1641R.styleable.WheelView_wv_textAlign, 1);
        int i = C1641R.styleable.WheelView_wv_textBoundaryMargin;
        float f = DEFAULT_TEXT_BOUNDARY_MARGIN;
        this.mTextBoundaryMargin = obtainStyledAttributes.getDimension(i, f);
        this.mTextColor = obtainStyledAttributes.getColor(C1641R.styleable.WheelView_wv_normalItemTextColor, DEFAULT_NORMAL_TEXT_COLOR);
        this.mSelectedItemTextColor = obtainStyledAttributes.getColor(C1641R.styleable.WheelView_wv_selectedItemTextColor, -16777216);
        this.mLineSpacing = obtainStyledAttributes.getDimension(C1641R.styleable.WheelView_wv_lineSpacing, DEFAULT_LINE_SPACING);
        this.isIntegerNeedFormat = obtainStyledAttributes.getBoolean(C1641R.styleable.WheelView_wv_integerNeedFormat, false);
        String string = obtainStyledAttributes.getString(C1641R.styleable.WheelView_wv_integerFormat);
        this.mIntegerFormat = string;
        if (TextUtils.isEmpty(string)) {
            this.mIntegerFormat = "%02d";
        }
        int i2 = obtainStyledAttributes.getInt(C1641R.styleable.WheelView_wv_visibleItems, 5);
        this.mVisibleItems = i2;
        this.mVisibleItems = adjustVisibleItems(i2);
        int i3 = obtainStyledAttributes.getInt(C1641R.styleable.WheelView_wv_selectedItemPosition, 0);
        this.mSelectedItemPosition = i3;
        this.mCurrentScrollPosition = i3;
        this.isCyclic = obtainStyledAttributes.getBoolean(C1641R.styleable.WheelView_wv_cyclic, false);
        this.isShowDivider = obtainStyledAttributes.getBoolean(C1641R.styleable.WheelView_wv_showDivider, false);
        this.mDividerType = obtainStyledAttributes.getInt(C1641R.styleable.WheelView_wv_dividerType, 0);
        this.mDividerSize = obtainStyledAttributes.getDimension(C1641R.styleable.WheelView_wv_dividerHeight, DEFAULT_DIVIDER_HEIGHT);
        this.mDividerColor = obtainStyledAttributes.getColor(C1641R.styleable.WheelView_wv_dividerColor, -16777216);
        this.mDividerPaddingForWrap = obtainStyledAttributes.getDimension(C1641R.styleable.WheelView_wv_dividerPaddingForWrap, f);
        this.mDividerOffset = obtainStyledAttributes.getDimensionPixelOffset(C1641R.styleable.WheelView_wv_dividerOffset, 0);
        this.isDrawSelectedRect = obtainStyledAttributes.getBoolean(C1641R.styleable.WheelView_wv_drawSelectedRect, false);
        this.mSelectedRectColor = obtainStyledAttributes.getColor(C1641R.styleable.WheelView_wv_selectedRectColor, 0);
        this.isCurved = obtainStyledAttributes.getBoolean(C1641R.styleable.WheelView_wv_curved, true);
        this.mCurvedArcDirection = obtainStyledAttributes.getInt(C1641R.styleable.WheelView_wv_curvedArcDirection, 1);
        this.mCurvedArcDirectionFactor = obtainStyledAttributes.getFloat(C1641R.styleable.WheelView_wv_curvedArcDirectionFactor, 0.75f);
        float f2 = obtainStyledAttributes.getFloat(C1641R.styleable.WheelView_wv_curvedRefractRatio, 0.9f);
        float f3 = obtainStyledAttributes.getFloat(C1641R.styleable.WheelView_wv_refractRatio, 1.0f);
        this.mRefractRatio = f3;
        if (this.isCurved) {
            f3 = Math.min(f2, f3);
        }
        this.mRefractRatio = f3;
        if (f3 > 1.0f) {
            this.mRefractRatio = 1.0f;
        } else if (f3 < 0.0f) {
            this.mRefractRatio = 1.0f;
        }
        obtainStyledAttributes.recycle();
    }

    private void initValue(Context context) {
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.mMaxFlingVelocity = viewConfiguration.getScaledMaximumFlingVelocity();
        this.mMinFlingVelocity = viewConfiguration.getScaledMinimumFlingVelocity();
        this.mScroller = new Scroller(context);
        this.mDrawRect = new Rect();
        this.mCamera = new Camera();
        this.mMatrix = new Matrix();
        if (!isInEditMode()) {
            this.mSoundHelper = SoundHelper.obtain();
            initDefaultVolume(context);
        }
        calculateTextSize();
        updateTextAlign();
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        SoundHelper soundHelper = this.mSoundHelper;
        if (soundHelper != null) {
            soundHelper.release();
        }
    }

    private void initDefaultVolume(Context context) {
        AudioManager audioManager = (AudioManager) context.getSystemService("audio");
        if (audioManager != null) {
            this.mSoundHelper.setPlayVolume((audioManager.getStreamVolume(3) * 1.0f) / audioManager.getStreamMaxVolume(3));
            return;
        }
        this.mSoundHelper.setPlayVolume(0.3f);
    }

    private void calculateTextSize() {
        this.mPaint.setTextSize(this.mTextSize);
        for (int i = 0; i < this.mDataList.size(); i++) {
            this.mMaxTextWidth = Math.max((int) this.mPaint.measureText(getDataText(this.mDataList.get(i))), this.mMaxTextWidth);
        }
        Paint.FontMetrics fontMetrics = this.mPaint.getFontMetrics();
        this.mFontMetrics = fontMetrics;
        this.mItemHeight = (int) ((fontMetrics.bottom - this.mFontMetrics.top) + this.mLineSpacing);
    }

    private void updateTextAlign() {
        int i = this.mTextAlign;
        if (i == 0) {
            this.mPaint.setTextAlign(Paint.Align.LEFT);
        } else if (i != 2) {
            this.mPaint.setTextAlign(Paint.Align.CENTER);
        } else {
            this.mPaint.setTextAlign(Paint.Align.RIGHT);
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int i3;
        if (this.isCurved) {
            i3 = (int) ((((this.mItemHeight * this.mVisibleItems) * 2) / 3.141592653589793d) + getPaddingTop() + getPaddingBottom());
        } else {
            i3 = (this.mItemHeight * this.mVisibleItems) + getPaddingTop() + getPaddingBottom();
        }
        int paddingLeft = (int) (this.mMaxTextWidth + getPaddingLeft() + getPaddingRight() + (this.mTextBoundaryMargin * 2.0f));
        if (this.isCurved) {
            paddingLeft += (int) (Math.sin(0.06544984694978735d) * i3);
        }
        setMeasuredDimension(resolveSizeAndState(paddingLeft, i, 0), resolveSizeAndState(i3, i2, 0));
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.mDrawRect.set(getPaddingLeft(), getPaddingTop(), getWidth() - getPaddingRight(), getHeight() - getPaddingBottom());
        this.mCenterX = this.mDrawRect.centerX();
        int centerY = this.mDrawRect.centerY();
        this.mCenterY = centerY;
        int i5 = this.mItemHeight;
        float f = this.mDividerOffset;
        this.mSelectedItemTopLimit = (int) ((centerY - (i5 / 2)) - f);
        this.mSelectedItemBottomLimit = (int) (centerY + (i5 / 2) + f);
        this.mClipLeft = getPaddingLeft();
        this.mClipTop = getPaddingTop();
        this.mClipRight = getWidth() - getPaddingRight();
        this.mClipBottom = getHeight() - getPaddingBottom();
        calculateDrawStart();
        calculateLimitY();
        int calculateItemDistance = calculateItemDistance(this.mSelectedItemPosition);
        if (calculateItemDistance > 0) {
            doScroll(calculateItemDistance);
        }
    }

    private void calculateDrawStart() {
        int i = this.mTextAlign;
        if (i == 0) {
            this.mStartX = (int) (getPaddingLeft() + this.mTextBoundaryMargin);
        } else if (i != 2) {
            this.mStartX = getWidth() / 2;
        } else {
            this.mStartX = (int) ((getWidth() - getPaddingRight()) - this.mTextBoundaryMargin);
        }
        this.mCenterToBaselineY = (int) (this.mFontMetrics.ascent + ((this.mFontMetrics.descent - this.mFontMetrics.ascent) / 2.0f));
    }

    private void calculateLimitY() {
        boolean z = this.isCyclic;
        this.mMinScrollY = z ? Integer.MIN_VALUE : 0;
        this.mMaxScrollY = z ? Integer.MAX_VALUE : (this.mDataList.size() - 1) * this.mItemHeight;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0032  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected void onDraw(Canvas canvas) {
        int i;
        int i2;
        super.onDraw(canvas);
        drawSelectedRect(canvas);
        drawDivider(canvas);
        int dividedItemHeight = this.mScrollOffsetY / dividedItemHeight();
        int dividedItemHeight2 = this.mScrollOffsetY % dividedItemHeight();
        int i3 = (this.mVisibleItems + 1) / 2;
        if (dividedItemHeight2 < 0) {
            i = (dividedItemHeight - i3) - 1;
        } else if (dividedItemHeight2 > 0) {
            i = dividedItemHeight - i3;
            i2 = dividedItemHeight + i3 + 1;
            while (i < i2) {
                if (this.isCurved) {
                    draw3DItem(canvas, i, dividedItemHeight2);
                } else {
                    drawItem(canvas, i, dividedItemHeight2);
                }
                i++;
            }
        } else {
            i = dividedItemHeight - i3;
        }
        i2 = dividedItemHeight + i3;
        while (i < i2) {
        }
    }

    private void drawSelectedRect(Canvas canvas) {
        if (this.isDrawSelectedRect) {
            this.mPaint.setColor(this.mSelectedRectColor);
            canvas.drawRect(this.mClipLeft, this.mSelectedItemTopLimit, this.mClipRight, this.mSelectedItemBottomLimit, this.mPaint);
        }
    }

    private void drawDivider(Canvas canvas) {
        if (this.isShowDivider) {
            this.mPaint.setColor(this.mDividerColor);
            float strokeWidth = this.mPaint.getStrokeWidth();
            this.mPaint.setStrokeJoin(Paint.Join.ROUND);
            this.mPaint.setStrokeCap(Paint.Cap.ROUND);
            this.mPaint.setStrokeWidth(this.mDividerSize);
            if (this.mDividerType == 0) {
                float f = this.mClipLeft;
                int i = this.mSelectedItemTopLimit;
                canvas.drawLine(f, i, this.mClipRight, i, this.mPaint);
                float f2 = this.mClipLeft;
                int i2 = this.mSelectedItemBottomLimit;
                canvas.drawLine(f2, i2, this.mClipRight, i2, this.mPaint);
            } else {
                int i3 = this.mCenterX;
                int i4 = this.mMaxTextWidth;
                float f3 = this.mDividerPaddingForWrap;
                int i5 = (int) ((i3 - (i4 / 2)) - f3);
                int i6 = (int) (i3 + (i4 / 2) + f3);
                int i7 = this.mClipLeft;
                if (i5 < i7) {
                    i5 = i7;
                }
                int i8 = this.mClipRight;
                if (i6 > i8) {
                    i6 = i8;
                }
                float f4 = i5;
                int i9 = this.mSelectedItemTopLimit;
                float f5 = i6;
                canvas.drawLine(f4, i9, f5, i9, this.mPaint);
                int i10 = this.mSelectedItemBottomLimit;
                canvas.drawLine(f4, i10, f5, i10, this.mPaint);
            }
            this.mPaint.setStrokeWidth(strokeWidth);
        }
    }

    private void drawItem(Canvas canvas, int i, int i2) {
        String dataByIndex = getDataByIndex(i);
        if (dataByIndex != null) {
            int dividedItemHeight = ((i - (this.mScrollOffsetY / dividedItemHeight())) * this.mItemHeight) - i2;
            int i3 = this.mStartX;
            int remeasureTextSize = this.isAutoFitTextSize ? remeasureTextSize(dataByIndex) : this.mCenterToBaselineY;
            if (Math.abs(dividedItemHeight) <= 0) {
                this.mPaint.setColor(this.mSelectedItemTextColor);
                clipAndDraw2DText(canvas, dataByIndex, this.mSelectedItemTopLimit, this.mSelectedItemBottomLimit, dividedItemHeight, remeasureTextSize);
            } else if (dividedItemHeight > 0 && dividedItemHeight < this.mItemHeight) {
                this.mPaint.setColor(this.mSelectedItemTextColor);
                clipAndDraw2DText(canvas, dataByIndex, this.mSelectedItemTopLimit, this.mSelectedItemBottomLimit, dividedItemHeight, remeasureTextSize);
                this.mPaint.setColor(this.mTextColor);
                float textSize = this.mPaint.getTextSize();
                this.mPaint.setTextSize(this.mRefractRatio * textSize);
                changeTypefaceIfBoldForSelectedItem();
                clipAndDraw2DText(canvas, dataByIndex, this.mSelectedItemBottomLimit, this.mClipBottom, dividedItemHeight, remeasureTextSize);
                this.mPaint.setTextSize(textSize);
                resetTypefaceIfBoldForSelectedItem();
            } else if (dividedItemHeight >= 0 || dividedItemHeight <= (-this.mItemHeight)) {
                this.mPaint.setColor(this.mTextColor);
                float textSize2 = this.mPaint.getTextSize();
                this.mPaint.setTextSize(this.mRefractRatio * textSize2);
                changeTypefaceIfBoldForSelectedItem();
                clipAndDraw2DText(canvas, dataByIndex, this.mClipTop, this.mClipBottom, dividedItemHeight, remeasureTextSize);
                this.mPaint.setTextSize(textSize2);
                resetTypefaceIfBoldForSelectedItem();
            } else {
                this.mPaint.setColor(this.mSelectedItemTextColor);
                clipAndDraw2DText(canvas, dataByIndex, this.mSelectedItemTopLimit, this.mSelectedItemBottomLimit, dividedItemHeight, remeasureTextSize);
                this.mPaint.setColor(this.mTextColor);
                float textSize3 = this.mPaint.getTextSize();
                this.mPaint.setTextSize(this.mRefractRatio * textSize3);
                changeTypefaceIfBoldForSelectedItem();
                clipAndDraw2DText(canvas, dataByIndex, this.mClipTop, this.mSelectedItemTopLimit, dividedItemHeight, remeasureTextSize);
                this.mPaint.setTextSize(textSize3);
                resetTypefaceIfBoldForSelectedItem();
            }
            if (this.isAutoFitTextSize) {
                this.mPaint.setTextSize(this.mTextSize);
                this.mStartX = i3;
            }
        }
    }

    private void clipAndDraw2DText(Canvas canvas, String str, int i, int i2, int i3, int i4) {
        canvas.save();
        canvas.clipRect(this.mClipLeft, i, this.mClipRight, i2);
        canvas.drawText(str, 0, str.length(), this.mStartX, (this.mCenterY + i3) - i4, this.mPaint);
        canvas.restore();
    }

    private int remeasureTextSize(String str) {
        float f;
        float measureText = this.mPaint.measureText(str);
        float width = getWidth();
        float f2 = this.mTextBoundaryMargin * 2.0f;
        if (f2 > width / 10.0f) {
            f = (width * 9.0f) / 10.0f;
            f2 = f / 10.0f;
        } else {
            f = width - f2;
        }
        if (f <= 0.0f) {
            return this.mCenterToBaselineY;
        }
        float f3 = this.mTextSize;
        while (measureText > f) {
            f3 -= 1.0f;
            if (f3 <= 0.0f) {
                break;
            }
            this.mPaint.setTextSize(f3);
            measureText = this.mPaint.measureText(str);
        }
        recalculateStartX(f2 / 2.0f);
        return recalculateCenterToBaselineY();
    }

    private void recalculateStartX(float f) {
        int i = this.mTextAlign;
        if (i == 0) {
            this.mStartX = (int) f;
        } else if (i != 2) {
            this.mStartX = getWidth() / 2;
        } else {
            this.mStartX = (int) (getWidth() - f);
        }
    }

    private int recalculateCenterToBaselineY() {
        Paint.FontMetrics fontMetrics = this.mPaint.getFontMetrics();
        return (int) (fontMetrics.ascent + ((fontMetrics.descent - fontMetrics.ascent) / 2.0f));
    }

    private void draw3DItem(Canvas canvas, int i, int i2) {
        String dataByIndex = getDataByIndex(i);
        if (dataByIndex != null) {
            int dividedItemHeight = ((i - (this.mScrollOffsetY / dividedItemHeight())) * this.mItemHeight) - i2;
            double height = ((getHeight() - getPaddingTop()) - getPaddingBottom()) / 2;
            if (Math.abs(dividedItemHeight) <= (3.141592653589793d * height) / 2.0d) {
                double d = dividedItemHeight / height;
                float degrees = (float) Math.toDegrees(-d);
                float sin = (float) (Math.sin(d) * height);
                float cos = (float) ((1.0d - Math.cos(d)) * height);
                int cos2 = (int) (Math.cos(d) * 255.0d);
                int i3 = this.mStartX;
                int remeasureTextSize = this.isAutoFitTextSize ? remeasureTextSize(dataByIndex) : this.mCenterToBaselineY;
                if (Math.abs(dividedItemHeight) <= 0) {
                    this.mPaint.setColor(this.mSelectedItemTextColor);
                    this.mPaint.setAlpha(255);
                    clipAndDraw3DText(canvas, dataByIndex, this.mSelectedItemTopLimit, this.mSelectedItemBottomLimit, degrees, sin, cos, remeasureTextSize);
                } else if (dividedItemHeight > 0 && dividedItemHeight < this.mItemHeight) {
                    this.mPaint.setColor(this.mSelectedItemTextColor);
                    this.mPaint.setAlpha(255);
                    clipAndDraw3DText(canvas, dataByIndex, this.mSelectedItemTopLimit, this.mSelectedItemBottomLimit, degrees, sin, cos, remeasureTextSize);
                    this.mPaint.setColor(this.mTextColor);
                    this.mPaint.setAlpha(cos2);
                    float textSize = this.mPaint.getTextSize();
                    this.mPaint.setTextSize(this.mRefractRatio * textSize);
                    changeTypefaceIfBoldForSelectedItem();
                    clipAndDraw3DText(canvas, dataByIndex, this.mSelectedItemBottomLimit, this.mClipBottom, degrees, sin, cos, recalculateCenterToBaselineY());
                    this.mPaint.setTextSize(textSize);
                    resetTypefaceIfBoldForSelectedItem();
                } else if (dividedItemHeight >= 0 || dividedItemHeight <= (-this.mItemHeight)) {
                    this.mPaint.setColor(this.mTextColor);
                    this.mPaint.setAlpha(cos2);
                    float textSize2 = this.mPaint.getTextSize();
                    this.mPaint.setTextSize(this.mRefractRatio * textSize2);
                    changeTypefaceIfBoldForSelectedItem();
                    clipAndDraw3DText(canvas, dataByIndex, this.mClipTop, this.mClipBottom, degrees, sin, cos, recalculateCenterToBaselineY());
                    this.mPaint.setTextSize(textSize2);
                    resetTypefaceIfBoldForSelectedItem();
                } else {
                    this.mPaint.setColor(this.mSelectedItemTextColor);
                    this.mPaint.setAlpha(255);
                    clipAndDraw3DText(canvas, dataByIndex, this.mSelectedItemTopLimit, this.mSelectedItemBottomLimit, degrees, sin, cos, remeasureTextSize);
                    this.mPaint.setColor(this.mTextColor);
                    this.mPaint.setAlpha(cos2);
                    float textSize3 = this.mPaint.getTextSize();
                    this.mPaint.setTextSize(this.mRefractRatio * textSize3);
                    changeTypefaceIfBoldForSelectedItem();
                    clipAndDraw3DText(canvas, dataByIndex, this.mClipTop, this.mSelectedItemTopLimit, degrees, sin, cos, recalculateCenterToBaselineY());
                    this.mPaint.setTextSize(textSize3);
                    resetTypefaceIfBoldForSelectedItem();
                }
                if (this.isAutoFitTextSize) {
                    this.mPaint.setTextSize(this.mTextSize);
                    this.mStartX = i3;
                }
            }
        }
    }

    private void clipAndDraw3DText(Canvas canvas, String str, int i, int i2, float f, float f2, float f3, int i3) {
        canvas.save();
        canvas.clipRect(this.mClipLeft, i, this.mClipRight, i2);
        draw3DText(canvas, str, f, f2, f3, i3);
        canvas.restore();
    }

    private void draw3DText(Canvas canvas, String str, float f, float f2, float f3, int i) {
        this.mCamera.save();
        this.mCamera.translate(0.0f, 0.0f, f3);
        this.mCamera.rotateX(f);
        this.mCamera.getMatrix(this.mMatrix);
        this.mCamera.restore();
        int i2 = this.mCenterX;
        float f4 = i2;
        int i3 = this.mCurvedArcDirection;
        if (i3 == 0) {
            f4 = (this.mCurvedArcDirectionFactor + 1.0f) * i2;
        } else if (i3 == 2) {
            f4 = i2 * (1.0f - this.mCurvedArcDirectionFactor);
        }
        float f5 = this.mCenterY + f2;
        this.mMatrix.preTranslate(-f4, -f5);
        this.mMatrix.postTranslate(f4, f5);
        canvas.concat(this.mMatrix);
        canvas.drawText(str, 0, str.length(), this.mStartX, f5 - i, this.mPaint);
    }

    private void changeTypefaceIfBoldForSelectedItem() {
        if (this.mIsBoldForSelectedItem) {
            this.mPaint.setTypeface(this.mNormalTypeface);
        }
    }

    private void resetTypefaceIfBoldForSelectedItem() {
        if (this.mIsBoldForSelectedItem) {
            this.mPaint.setTypeface(this.mBoldTypeface);
        }
    }

    private String getDataByIndex(int i) {
        int size = this.mDataList.size();
        if (size == 0) {
            return null;
        }
        if (this.isCyclic) {
            int i2 = i % size;
            if (i2 < 0) {
                i2 += size;
            }
            return getDataText(this.mDataList.get(i2));
        } else if (i < 0 || i >= size) {
            return null;
        } else {
            return getDataText(this.mDataList.get(i));
        }
    }

    protected String getDataText(T t) {
        if (t == null) {
            return "";
        }
        if (t instanceof IWheelEntity) {
            return ((IWheelEntity) t).getWheelText();
        }
        if (t instanceof Integer) {
            return this.isIntegerNeedFormat ? String.format(Locale.getDefault(), this.mIntegerFormat, t) : String.valueOf(t);
        }
        if (t instanceof String) {
            return (String) t;
        }
        return t.toString();
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!isEnabled() || this.mDataList.isEmpty()) {
            return super.onTouchEvent(motionEvent);
        }
        initVelocityTracker();
        this.mVelocityTracker.addMovement(motionEvent);
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            if (getParent() != null) {
                getParent().requestDisallowInterceptTouchEvent(true);
            }
            if (!this.mScroller.isFinished()) {
                this.mScroller.forceFinished(true);
                this.isForceFinishScroll = true;
            }
            this.mLastTouchY = motionEvent.getY();
            this.mDownStartTime = System.currentTimeMillis();
        } else if (actionMasked == 1) {
            this.isForceFinishScroll = false;
            this.mVelocityTracker.computeCurrentVelocity(1000, this.mMaxFlingVelocity);
            float yVelocity = this.mVelocityTracker.getYVelocity();
            if (Math.abs(yVelocity) > this.mMinFlingVelocity) {
                this.mScroller.forceFinished(true);
                this.isFlingScroll = true;
                this.mScroller.fling(0, this.mScrollOffsetY, 0, (int) (-yVelocity), 0, 0, this.mMinScrollY, this.mMaxScrollY);
            } else {
                int y = System.currentTimeMillis() - this.mDownStartTime <= DEFAULT_CLICK_CONFIRM ? (int) (motionEvent.getY() - this.mCenterY) : 0;
                int calculateDistanceToEndPoint = y + calculateDistanceToEndPoint((this.mScrollOffsetY + y) % dividedItemHeight());
                boolean z = calculateDistanceToEndPoint < 0 && this.mScrollOffsetY + calculateDistanceToEndPoint >= this.mMinScrollY;
                boolean z2 = calculateDistanceToEndPoint > 0 && this.mScrollOffsetY + calculateDistanceToEndPoint <= this.mMaxScrollY;
                if (z || z2) {
                    this.mScroller.startScroll(0, this.mScrollOffsetY, 0, calculateDistanceToEndPoint);
                }
            }
            invalidateIfYChanged();
            ViewCompat.postOnAnimation(this, this);
            recycleVelocityTracker();
        } else if (actionMasked == 2) {
            float y2 = motionEvent.getY();
            float f = y2 - this.mLastTouchY;
            OnWheelChangedListener onWheelChangedListener = this.mOnWheelChangedListener;
            if (onWheelChangedListener != null) {
                onWheelChangedListener.onWheelScrollStateChanged(1);
            }
            onWheelScrollStateChanged(1);
            if (Math.abs(f) >= 1.0f) {
                doScroll((int) (-f));
                this.mLastTouchY = y2;
                invalidateIfYChanged();
            }
        } else if (actionMasked == 3) {
            recycleVelocityTracker();
        }
        return true;
    }

    private void initVelocityTracker() {
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        }
    }

    private void recycleVelocityTracker() {
        VelocityTracker velocityTracker = this.mVelocityTracker;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.mVelocityTracker = null;
        }
    }

    private void doScroll(int i) {
        int i2 = this.mScrollOffsetY + i;
        this.mScrollOffsetY = i2;
        if (!this.isCyclic) {
            int i3 = this.mMinScrollY;
            if (i2 < i3) {
                this.mScrollOffsetY = i3;
                return;
            }
            int i4 = this.mMaxScrollY;
            if (i2 > i4) {
                this.mScrollOffsetY = i4;
            }
        }
    }

    private void invalidateIfYChanged() {
        int i = this.mScrollOffsetY;
        if (i != this.mScrolledY) {
            this.mScrolledY = i;
            OnWheelChangedListener onWheelChangedListener = this.mOnWheelChangedListener;
            if (onWheelChangedListener != null) {
                onWheelChangedListener.onWheelScroll(i);
            }
            onWheelScroll(this.mScrollOffsetY);
            observeItemChanged();
            invalidate();
        }
    }

    private void observeItemChanged() {
        int i = this.mCurrentScrollPosition;
        int currentPosition = getCurrentPosition();
        if (i != currentPosition) {
            OnWheelChangedListener onWheelChangedListener = this.mOnWheelChangedListener;
            if (onWheelChangedListener != null) {
                onWheelChangedListener.onWheelItemChanged(i, currentPosition);
            }
            onWheelItemChanged(i, currentPosition);
            playSoundEffect();
            this.mCurrentScrollPosition = currentPosition;
        }
    }

    public void playSoundEffect() {
        SoundHelper soundHelper = this.mSoundHelper;
        if (soundHelper != null && this.isSoundEffect) {
            soundHelper.playSoundEffect();
        }
    }

    public void forceFinishScroll() {
        if (!this.mScroller.isFinished()) {
            this.mScroller.forceFinished(true);
        }
    }

    public void abortFinishScroll() {
        if (!this.mScroller.isFinished()) {
            this.mScroller.abortAnimation();
        }
    }

    private int calculateDistanceToEndPoint(int i) {
        int abs = Math.abs(i);
        int i2 = this.mItemHeight;
        return abs > i2 / 2 ? this.mScrollOffsetY < 0 ? (-i2) - i : i2 - i : -i;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.mScroller.isFinished() && !this.isForceFinishScroll && !this.isFlingScroll) {
            if (this.mItemHeight != 0) {
                OnWheelChangedListener onWheelChangedListener = this.mOnWheelChangedListener;
                if (onWheelChangedListener != null) {
                    onWheelChangedListener.onWheelScrollStateChanged(0);
                }
                onWheelScrollStateChanged(0);
                int currentPosition = getCurrentPosition();
                if (currentPosition != this.mSelectedItemPosition) {
                    this.mSelectedItemPosition = currentPosition;
                    this.mCurrentScrollPosition = currentPosition;
                    OnItemSelectedListener<T> onItemSelectedListener = this.mOnItemSelectedListener;
                    if (onItemSelectedListener != null) {
                        onItemSelectedListener.onItemSelected(this, this.mDataList.get(currentPosition), this.mSelectedItemPosition);
                    }
                    onItemSelected(this.mDataList.get(this.mSelectedItemPosition), this.mSelectedItemPosition);
                    OnWheelChangedListener onWheelChangedListener2 = this.mOnWheelChangedListener;
                    if (onWheelChangedListener2 != null) {
                        onWheelChangedListener2.onWheelSelected(this.mSelectedItemPosition);
                    }
                    onWheelSelected(this.mSelectedItemPosition);
                } else {
                    return;
                }
            } else {
                return;
            }
        }
        if (this.mScroller.computeScrollOffset()) {
            int i = this.mScrollOffsetY;
            int currY = this.mScroller.getCurrY();
            this.mScrollOffsetY = currY;
            if (i != currY) {
                OnWheelChangedListener onWheelChangedListener3 = this.mOnWheelChangedListener;
                if (onWheelChangedListener3 != null) {
                    onWheelChangedListener3.onWheelScrollStateChanged(2);
                }
                onWheelScrollStateChanged(2);
            }
            invalidateIfYChanged();
            ViewCompat.postOnAnimation(this, this);
        } else if (this.isFlingScroll) {
            this.isFlingScroll = false;
            Scroller scroller = this.mScroller;
            int i2 = this.mScrollOffsetY;
            scroller.startScroll(0, i2, 0, calculateDistanceToEndPoint(i2 % dividedItemHeight()));
            invalidateIfYChanged();
            ViewCompat.postOnAnimation(this, this);
        }
    }

    private int getCurrentPosition() {
        int i;
        if (this.mDataList.isEmpty()) {
            return -1;
        }
        int i2 = this.mScrollOffsetY;
        if (i2 < 0) {
            i = (i2 - (this.mItemHeight / 2)) / dividedItemHeight();
        } else {
            i = (i2 + (this.mItemHeight / 2)) / dividedItemHeight();
        }
        int size = i % this.mDataList.size();
        return size < 0 ? size + this.mDataList.size() : size;
    }

    private int dividedItemHeight() {
        int i = this.mItemHeight;
        if (i > 0) {
            return i;
        }
        return 1;
    }

    public boolean isSoundEffect() {
        return this.isSoundEffect;
    }

    public void setSoundEffect(boolean z) {
        this.isSoundEffect = z;
    }

    public void setSoundEffectResource(int i) {
        SoundHelper soundHelper = this.mSoundHelper;
        if (soundHelper != null) {
            soundHelper.load(getContext(), i);
        }
    }

    public float getPlayVolume() {
        SoundHelper soundHelper = this.mSoundHelper;
        if (soundHelper == null) {
            return 0.0f;
        }
        return soundHelper.getPlayVolume();
    }

    public void setPlayVolume(float f) {
        SoundHelper soundHelper = this.mSoundHelper;
        if (soundHelper != null) {
            soundHelper.setPlayVolume(f);
        }
    }

    public T getItemData(int i) {
        if (isPositionInRange(i)) {
            return this.mDataList.get(i);
        }
        if (this.mDataList.size() > 0 && i >= this.mDataList.size()) {
            List<T> list = this.mDataList;
            return list.get(list.size() - 1);
        } else if (this.mDataList.size() <= 0 || i >= 0) {
            return null;
        } else {
            return this.mDataList.get(0);
        }
    }

    public T getSelectedItemData() {
        return getItemData(this.mSelectedItemPosition);
    }

    public List<T> getData() {
        return this.mDataList;
    }

    public void setData(List<T> list) {
        if (list != null) {
            this.mDataList = list;
            if (this.isResetSelectedPosition || list.size() <= 0) {
                this.mSelectedItemPosition = 0;
                this.mCurrentScrollPosition = 0;
            } else if (this.mSelectedItemPosition >= this.mDataList.size()) {
                int size = this.mDataList.size() - 1;
                this.mSelectedItemPosition = size;
                this.mCurrentScrollPosition = size;
            }
            forceFinishScroll();
            calculateTextSize();
            calculateLimitY();
            this.mScrollOffsetY = this.mSelectedItemPosition * this.mItemHeight;
            requestLayout();
            invalidate();
        }
    }

    public boolean isResetSelectedPosition() {
        return this.isResetSelectedPosition;
    }

    public void setResetSelectedPosition(boolean z) {
        this.isResetSelectedPosition = z;
    }

    public float getTextSize() {
        return this.mTextSize;
    }

    public void setTextSize(float f) {
        setTextSize(f, false);
    }

    public void setTextSize(float f, boolean z) {
        float f2 = this.mTextSize;
        if (z) {
            f = sp2px(f);
        }
        this.mTextSize = f;
        if (f2 != f) {
            forceFinishScroll();
            calculateTextSize();
            calculateDrawStart();
            calculateLimitY();
            this.mScrollOffsetY = this.mSelectedItemPosition * this.mItemHeight;
            requestLayout();
            invalidate();
        }
    }

    public boolean isAutoFitTextSize() {
        return this.isAutoFitTextSize;
    }

    public void setAutoFitTextSize(boolean z) {
        this.isAutoFitTextSize = z;
        invalidate();
    }

    public Typeface getTypeface() {
        return this.mPaint.getTypeface();
    }

    public void setTypeface(Typeface typeface) {
        setTypeface(typeface, false);
    }

    public void setTypeface(Typeface typeface, boolean z) {
        if (typeface != null && this.mPaint.getTypeface() != typeface) {
            forceFinishScroll();
            this.mIsBoldForSelectedItem = z;
            if (z) {
                if (typeface.isBold()) {
                    this.mNormalTypeface = Typeface.create(typeface, 0);
                    this.mBoldTypeface = typeface;
                } else {
                    this.mNormalTypeface = typeface;
                    this.mBoldTypeface = Typeface.create(typeface, 1);
                }
                this.mPaint.setTypeface(this.mBoldTypeface);
            } else {
                this.mPaint.setTypeface(typeface);
            }
            calculateTextSize();
            calculateDrawStart();
            this.mScrollOffsetY = this.mSelectedItemPosition * this.mItemHeight;
            calculateLimitY();
            requestLayout();
            invalidate();
        }
    }

    public int getTextAlign() {
        return this.mTextAlign;
    }

    public void setTextAlign(int i) {
        if (this.mTextAlign != i) {
            this.mTextAlign = i;
            updateTextAlign();
            calculateDrawStart();
            invalidate();
        }
    }

    public int getNormalItemTextColor() {
        return this.mTextColor;
    }

    public void setNormalItemTextColorRes(int i) {
        setNormalItemTextColor(ContextCompat.getColor(getContext(), i));
    }

    public void setNormalItemTextColor(int i) {
        if (this.mTextColor != i) {
            this.mTextColor = i;
            invalidate();
        }
    }

    public int getSelectedItemTextColor() {
        return this.mSelectedItemTextColor;
    }

    public void setSelectedItemTextColorRes(int i) {
        setSelectedItemTextColor(ContextCompat.getColor(getContext(), i));
    }

    public void setSelectedItemTextColor(int i) {
        if (this.mSelectedItemTextColor != i) {
            this.mSelectedItemTextColor = i;
            invalidate();
        }
    }

    public float getTextBoundaryMargin() {
        return this.mTextBoundaryMargin;
    }

    public void setTextBoundaryMargin(float f) {
        setTextBoundaryMargin(f, false);
    }

    public void setTextBoundaryMargin(float f, boolean z) {
        float f2 = this.mTextBoundaryMargin;
        if (z) {
            f = dp2px(f);
        }
        this.mTextBoundaryMargin = f;
        if (f2 != f) {
            requestLayout();
            invalidate();
        }
    }

    public float getLineSpacing() {
        return this.mLineSpacing;
    }

    public void setLineSpacing(float f) {
        setLineSpacing(f, false);
    }

    public void setLineSpacing(float f, boolean z) {
        float f2 = this.mLineSpacing;
        if (z) {
            f = dp2px(f);
        }
        this.mLineSpacing = f;
        if (f2 != f) {
            this.mScrollOffsetY = 0;
            calculateTextSize();
            requestLayout();
            invalidate();
        }
    }

    public boolean isIntegerNeedFormat() {
        return this.isIntegerNeedFormat;
    }

    public void setIntegerNeedFormat(boolean z) {
        if (this.isIntegerNeedFormat != z) {
            this.isIntegerNeedFormat = z;
            calculateTextSize();
            requestLayout();
            invalidate();
        }
    }

    public void setIntegerNeedFormat(String str) {
        this.isIntegerNeedFormat = true;
        this.mIntegerFormat = str;
        calculateTextSize();
        requestLayout();
        invalidate();
    }

    public String getIntegerFormat() {
        return this.mIntegerFormat;
    }

    public void setIntegerFormat(String str) {
        if (!TextUtils.isEmpty(str) && !str.equals(this.mIntegerFormat)) {
            this.mIntegerFormat = str;
            calculateTextSize();
            requestLayout();
            invalidate();
        }
    }

    public int getVisibleItems() {
        return this.mVisibleItems;
    }

    public void setVisibleItems(int i) {
        if (this.mVisibleItems != i) {
            this.mVisibleItems = adjustVisibleItems(i);
            this.mScrollOffsetY = 0;
            requestLayout();
            invalidate();
        }
    }

    private int adjustVisibleItems(int i) {
        return Math.abs(((i / 2) * 2) + 1);
    }

    public boolean isCyclic() {
        return this.isCyclic;
    }

    public void setCyclic(boolean z) {
        if (this.isCyclic != z) {
            this.isCyclic = z;
            forceFinishScroll();
            calculateLimitY();
            this.mScrollOffsetY = this.mSelectedItemPosition * this.mItemHeight;
            invalidate();
        }
    }

    public int getSelectedItemPosition() {
        return this.mSelectedItemPosition;
    }

    public void setSelectedItemPosition(int i) {
        setSelectedItemPosition(i, false);
    }

    public void setSelectedItemPosition(int i, boolean z) {
        setSelectedItemPosition(i, z, 0);
    }

    public void setSelectedItemPosition(int i, boolean z, int i2) {
        int calculateItemDistance;
        if (isPositionInRange(i) && (calculateItemDistance = calculateItemDistance(i)) != 0) {
            abortFinishScroll();
            if (z) {
                Scroller scroller = this.mScroller;
                int i3 = this.mScrollOffsetY;
                if (i2 <= 0) {
                    i2 = 250;
                }
                scroller.startScroll(0, i3, 0, calculateItemDistance, i2);
                invalidateIfYChanged();
                ViewCompat.postOnAnimation(this, this);
                return;
            }
            doScroll(calculateItemDistance);
            this.mSelectedItemPosition = i;
            OnItemSelectedListener<T> onItemSelectedListener = this.mOnItemSelectedListener;
            if (onItemSelectedListener != null) {
                onItemSelectedListener.onItemSelected(this, this.mDataList.get(i), this.mSelectedItemPosition);
            }
            onItemSelected(this.mDataList.get(this.mSelectedItemPosition), this.mSelectedItemPosition);
            OnWheelChangedListener onWheelChangedListener = this.mOnWheelChangedListener;
            if (onWheelChangedListener != null) {
                onWheelChangedListener.onWheelSelected(this.mSelectedItemPosition);
            }
            onWheelSelected(this.mSelectedItemPosition);
            invalidateIfYChanged();
        }
    }

    private int calculateItemDistance(int i) {
        return (i * this.mItemHeight) - this.mScrollOffsetY;
    }

    public boolean isPositionInRange(int i) {
        return i >= 0 && i < this.mDataList.size();
    }

    public boolean isShowDivider() {
        return this.isShowDivider;
    }

    public void setShowDivider(boolean z) {
        if (this.isShowDivider != z) {
            this.isShowDivider = z;
            invalidate();
        }
    }

    public int getDividerColor() {
        return this.mDividerColor;
    }

    public void setDividerColorRes(int i) {
        setDividerColor(ContextCompat.getColor(getContext(), i));
    }

    public void setDividerColor(int i) {
        if (this.mDividerColor != i) {
            this.mDividerColor = i;
            invalidate();
        }
    }

    public float getDividerHeight() {
        return this.mDividerSize;
    }

    public void setDividerHeight(float f) {
        setDividerHeight(f, false);
    }

    public void setDividerHeight(float f, boolean z) {
        float f2 = this.mDividerSize;
        if (z) {
            f = dp2px(f);
        }
        this.mDividerSize = f;
        if (f2 != f) {
            invalidate();
        }
    }

    public int getDividerType() {
        return this.mDividerType;
    }

    public void setDividerType(int i) {
        if (this.mDividerType != i) {
            this.mDividerType = i;
            invalidate();
        }
    }

    public float getDividerPaddingForWrap() {
        return this.mDividerPaddingForWrap;
    }

    public void setDividerPaddingForWrap(float f) {
        setDividerPaddingForWrap(f, false);
    }

    public void setDividerPaddingForWrap(float f, boolean z) {
        float f2 = this.mDividerPaddingForWrap;
        if (z) {
            f = dp2px(f);
        }
        this.mDividerPaddingForWrap = f;
        if (f2 != f) {
            invalidate();
        }
    }

    public Paint.Cap getDividerCap() {
        return this.mDividerCap;
    }

    public void setDividerCap(Paint.Cap cap) {
        if (this.mDividerCap != cap) {
            this.mDividerCap = cap;
            invalidate();
        }
    }

    public boolean isDrawSelectedRect() {
        return this.isDrawSelectedRect;
    }

    public void setDrawSelectedRect(boolean z) {
        this.isDrawSelectedRect = z;
        invalidate();
    }

    public int getSelectedRectColor() {
        return this.mSelectedRectColor;
    }

    public void setSelectedRectColorRes(int i) {
        setSelectedRectColor(ContextCompat.getColor(getContext(), i));
    }

    public void setSelectedRectColor(int i) {
        this.mSelectedRectColor = i;
        invalidate();
    }

    public boolean isCurved() {
        return this.isCurved;
    }

    public void setCurved(boolean z) {
        if (this.isCurved != z) {
            this.isCurved = z;
            calculateTextSize();
            requestLayout();
            invalidate();
        }
    }

    public int getCurvedArcDirection() {
        return this.mCurvedArcDirection;
    }

    public void setCurvedArcDirection(int i) {
        if (this.mCurvedArcDirection != i) {
            this.mCurvedArcDirection = i;
            invalidate();
        }
    }

    public float getCurvedArcDirectionFactor() {
        return this.mCurvedArcDirectionFactor;
    }

    public void setCurvedArcDirectionFactor(float f) {
        if (this.mCurvedArcDirectionFactor != f) {
            if (f < 0.0f) {
                f = 0.0f;
            } else if (f > 1.0f) {
                f = 1.0f;
            }
            this.mCurvedArcDirectionFactor = f;
            invalidate();
        }
    }

    public float getRefractRatio() {
        return this.mRefractRatio;
    }

    public void setRefractRatio(float f) {
        float f2 = this.mRefractRatio;
        this.mRefractRatio = f;
        if (f > 1.0f) {
            this.mRefractRatio = 1.0f;
        } else if (f < 0.0f) {
            this.mRefractRatio = 1.0f;
        }
        if (f2 != this.mRefractRatio) {
            invalidate();
        }
    }

    @Deprecated
    public float getCurvedRefractRatio() {
        return this.mRefractRatio;
    }

    @Deprecated
    public void setCurvedRefractRatio(float f) {
        setRefractRatio(f);
    }

    public OnItemSelectedListener<T> getOnItemSelectedListener() {
        return this.mOnItemSelectedListener;
    }

    public void setOnItemSelectedListener(OnItemSelectedListener<T> onItemSelectedListener) {
        this.mOnItemSelectedListener = onItemSelectedListener;
    }

    public OnWheelChangedListener getOnWheelChangedListener() {
        return this.mOnWheelChangedListener;
    }

    public void setOnWheelChangedListener(OnWheelChangedListener onWheelChangedListener) {
        this.mOnWheelChangedListener = onWheelChangedListener;
    }

    protected static float dp2px(float f) {
        return TypedValue.applyDimension(1, f, Resources.getSystem().getDisplayMetrics());
    }

    protected static float sp2px(float f) {
        return TypedValue.applyDimension(2, f, Resources.getSystem().getDisplayMetrics());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class SoundHelper {
        private float mPlayVolume;
        private int mSoundId;
        private SoundPool mSoundPool;

        private SoundHelper() {
            if (Build.VERSION.SDK_INT >= 21) {
                this.mSoundPool = new SoundPool.Builder().build();
            } else {
                this.mSoundPool = new SoundPool(1, 1, 1);
            }
        }

        static SoundHelper obtain() {
            return new SoundHelper();
        }

        void load(Context context, int i) {
            SoundPool soundPool = this.mSoundPool;
            if (soundPool != null) {
                this.mSoundId = soundPool.load(context, i, 1);
            }
        }

        void setPlayVolume(float f) {
            this.mPlayVolume = f;
        }

        float getPlayVolume() {
            return this.mPlayVolume;
        }

        void playSoundEffect() {
            int i;
            SoundPool soundPool = this.mSoundPool;
            if (soundPool != null && (i = this.mSoundId) != 0) {
                float f = this.mPlayVolume;
                soundPool.play(i, f, f, 1, 0, 1.0f);
            }
        }

        void release() {
            SoundPool soundPool = this.mSoundPool;
            if (soundPool != null) {
                soundPool.release();
                this.mSoundPool = null;
            }
        }
    }
}
