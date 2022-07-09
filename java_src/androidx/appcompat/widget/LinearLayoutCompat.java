package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.appcompat.C0041R;
import androidx.constraintlayout.solver.widgets.analyzer.BasicMeasure;
import androidx.core.view.GravityCompat;
import androidx.core.view.InputDeviceCompat;
import androidx.core.view.ViewCompat;
import com.google.android.material.badge.BadgeDrawable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
/* loaded from: classes.dex */
public class LinearLayoutCompat extends ViewGroup {
    private static final String ACCESSIBILITY_CLASS_NAME = "androidx.appcompat.widget.LinearLayoutCompat";
    public static final int HORIZONTAL = 0;
    private static final int INDEX_BOTTOM = 2;
    private static final int INDEX_CENTER_VERTICAL = 0;
    private static final int INDEX_FILL = 3;
    private static final int INDEX_TOP = 1;
    public static final int SHOW_DIVIDER_BEGINNING = 1;
    public static final int SHOW_DIVIDER_END = 4;
    public static final int SHOW_DIVIDER_MIDDLE = 2;
    public static final int SHOW_DIVIDER_NONE = 0;
    public static final int VERTICAL = 1;
    private static final int VERTICAL_GRAVITY_COUNT = 4;
    private boolean mBaselineAligned;
    private int mBaselineAlignedChildIndex;
    private int mBaselineChildTop;
    private Drawable mDivider;
    private int mDividerHeight;
    private int mDividerPadding;
    private int mDividerWidth;
    private int mGravity;
    private int[] mMaxAscent;
    private int[] mMaxDescent;
    private int mOrientation;
    private int mShowDividers;
    private int mTotalLength;
    private boolean mUseLargestChild;
    private float mWeightSum;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface DividerMode {
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface OrientationMode {
    }

    int getChildrenSkipCount(View view, int i) {
        return 0;
    }

    int getLocationOffset(View view) {
        return 0;
    }

    int getNextLocationOffset(View view) {
        return 0;
    }

    int measureNullChild(int i) {
        return 0;
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    public LinearLayoutCompat(Context context) {
        this(context, null);
    }

    public LinearLayoutCompat(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public LinearLayoutCompat(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mBaselineAligned = true;
        this.mBaselineAlignedChildIndex = -1;
        this.mBaselineChildTop = 0;
        this.mGravity = BadgeDrawable.TOP_START;
        TintTypedArray obtainStyledAttributes = TintTypedArray.obtainStyledAttributes(context, attributeSet, C0041R.styleable.LinearLayoutCompat, i, 0);
        ViewCompat.saveAttributeDataForStyleable(this, context, C0041R.styleable.LinearLayoutCompat, attributeSet, obtainStyledAttributes.getWrappedTypeArray(), i, 0);
        int i2 = obtainStyledAttributes.getInt(C0041R.styleable.LinearLayoutCompat_android_orientation, -1);
        if (i2 >= 0) {
            setOrientation(i2);
        }
        int i3 = obtainStyledAttributes.getInt(C0041R.styleable.LinearLayoutCompat_android_gravity, -1);
        if (i3 >= 0) {
            setGravity(i3);
        }
        boolean z = obtainStyledAttributes.getBoolean(C0041R.styleable.LinearLayoutCompat_android_baselineAligned, true);
        if (!z) {
            setBaselineAligned(z);
        }
        this.mWeightSum = obtainStyledAttributes.getFloat(C0041R.styleable.LinearLayoutCompat_android_weightSum, -1.0f);
        this.mBaselineAlignedChildIndex = obtainStyledAttributes.getInt(C0041R.styleable.LinearLayoutCompat_android_baselineAlignedChildIndex, -1);
        this.mUseLargestChild = obtainStyledAttributes.getBoolean(C0041R.styleable.LinearLayoutCompat_measureWithLargestChild, false);
        setDividerDrawable(obtainStyledAttributes.getDrawable(C0041R.styleable.LinearLayoutCompat_divider));
        this.mShowDividers = obtainStyledAttributes.getInt(C0041R.styleable.LinearLayoutCompat_showDividers, 0);
        this.mDividerPadding = obtainStyledAttributes.getDimensionPixelSize(C0041R.styleable.LinearLayoutCompat_dividerPadding, 0);
        obtainStyledAttributes.recycle();
    }

    public void setShowDividers(int i) {
        if (i != this.mShowDividers) {
            requestLayout();
        }
        this.mShowDividers = i;
    }

    public int getShowDividers() {
        return this.mShowDividers;
    }

    public Drawable getDividerDrawable() {
        return this.mDivider;
    }

    public void setDividerDrawable(Drawable drawable) {
        if (drawable != this.mDivider) {
            this.mDivider = drawable;
            boolean z = false;
            if (drawable != null) {
                this.mDividerWidth = drawable.getIntrinsicWidth();
                this.mDividerHeight = drawable.getIntrinsicHeight();
            } else {
                this.mDividerWidth = 0;
                this.mDividerHeight = 0;
            }
            if (drawable == null) {
                z = true;
            }
            setWillNotDraw(z);
            requestLayout();
        }
    }

    public void setDividerPadding(int i) {
        this.mDividerPadding = i;
    }

    public int getDividerPadding() {
        return this.mDividerPadding;
    }

    public int getDividerWidth() {
        return this.mDividerWidth;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.mDivider != null) {
            if (this.mOrientation == 1) {
                drawDividersVertical(canvas);
            } else {
                drawDividersHorizontal(canvas);
            }
        }
    }

    void drawDividersVertical(Canvas canvas) {
        int i;
        int virtualChildCount = getVirtualChildCount();
        for (int i2 = 0; i2 < virtualChildCount; i2++) {
            View virtualChildAt = getVirtualChildAt(i2);
            if (!(virtualChildAt == null || virtualChildAt.getVisibility() == 8 || !hasDividerBeforeChildAt(i2))) {
                drawHorizontalDivider(canvas, (virtualChildAt.getTop() - ((LayoutParams) virtualChildAt.getLayoutParams()).topMargin) - this.mDividerHeight);
            }
        }
        if (hasDividerBeforeChildAt(virtualChildCount)) {
            View virtualChildAt2 = getVirtualChildAt(virtualChildCount - 1);
            if (virtualChildAt2 == null) {
                i = (getHeight() - getPaddingBottom()) - this.mDividerHeight;
            } else {
                i = virtualChildAt2.getBottom() + ((LayoutParams) virtualChildAt2.getLayoutParams()).bottomMargin;
            }
            drawHorizontalDivider(canvas, i);
        }
    }

    void drawDividersHorizontal(Canvas canvas) {
        int i;
        int i2;
        int i3;
        int i4;
        int virtualChildCount = getVirtualChildCount();
        boolean isLayoutRtl = ViewUtils.isLayoutRtl(this);
        for (int i5 = 0; i5 < virtualChildCount; i5++) {
            View virtualChildAt = getVirtualChildAt(i5);
            if (!(virtualChildAt == null || virtualChildAt.getVisibility() == 8 || !hasDividerBeforeChildAt(i5))) {
                LayoutParams layoutParams = (LayoutParams) virtualChildAt.getLayoutParams();
                if (isLayoutRtl) {
                    i4 = virtualChildAt.getRight() + layoutParams.rightMargin;
                } else {
                    i4 = (virtualChildAt.getLeft() - layoutParams.leftMargin) - this.mDividerWidth;
                }
                drawVerticalDivider(canvas, i4);
            }
        }
        if (hasDividerBeforeChildAt(virtualChildCount)) {
            View virtualChildAt2 = getVirtualChildAt(virtualChildCount - 1);
            if (virtualChildAt2 != null) {
                LayoutParams layoutParams2 = (LayoutParams) virtualChildAt2.getLayoutParams();
                if (isLayoutRtl) {
                    i3 = virtualChildAt2.getLeft() - layoutParams2.leftMargin;
                    i2 = this.mDividerWidth;
                    i = i3 - i2;
                    drawVerticalDivider(canvas, i);
                }
                i = virtualChildAt2.getRight() + layoutParams2.rightMargin;
                drawVerticalDivider(canvas, i);
            } else if (isLayoutRtl) {
                i = getPaddingLeft();
                drawVerticalDivider(canvas, i);
            } else {
                i3 = getWidth() - getPaddingRight();
                i2 = this.mDividerWidth;
                i = i3 - i2;
                drawVerticalDivider(canvas, i);
            }
        }
    }

    void drawHorizontalDivider(Canvas canvas, int i) {
        this.mDivider.setBounds(getPaddingLeft() + this.mDividerPadding, i, (getWidth() - getPaddingRight()) - this.mDividerPadding, this.mDividerHeight + i);
        this.mDivider.draw(canvas);
    }

    void drawVerticalDivider(Canvas canvas, int i) {
        this.mDivider.setBounds(i, getPaddingTop() + this.mDividerPadding, this.mDividerWidth + i, (getHeight() - getPaddingBottom()) - this.mDividerPadding);
        this.mDivider.draw(canvas);
    }

    public boolean isBaselineAligned() {
        return this.mBaselineAligned;
    }

    public void setBaselineAligned(boolean z) {
        this.mBaselineAligned = z;
    }

    public boolean isMeasureWithLargestChildEnabled() {
        return this.mUseLargestChild;
    }

    public void setMeasureWithLargestChildEnabled(boolean z) {
        this.mUseLargestChild = z;
    }

    @Override // android.view.View
    public int getBaseline() {
        int i;
        if (this.mBaselineAlignedChildIndex < 0) {
            return super.getBaseline();
        }
        int childCount = getChildCount();
        int i2 = this.mBaselineAlignedChildIndex;
        if (childCount > i2) {
            View childAt = getChildAt(i2);
            int baseline = childAt.getBaseline();
            if (baseline != -1) {
                int i3 = this.mBaselineChildTop;
                if (this.mOrientation == 1 && (i = this.mGravity & 112) != 48) {
                    if (i == 16) {
                        i3 += ((((getBottom() - getTop()) - getPaddingTop()) - getPaddingBottom()) - this.mTotalLength) / 2;
                    } else if (i == 80) {
                        i3 = ((getBottom() - getTop()) - getPaddingBottom()) - this.mTotalLength;
                    }
                }
                return i3 + ((LayoutParams) childAt.getLayoutParams()).topMargin + baseline;
            } else if (this.mBaselineAlignedChildIndex == 0) {
                return -1;
            } else {
                throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout points to a View that doesn't know how to get its baseline.");
            }
        } else {
            throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds.");
        }
    }

    public int getBaselineAlignedChildIndex() {
        return this.mBaselineAlignedChildIndex;
    }

    public void setBaselineAlignedChildIndex(int i) {
        if (i < 0 || i >= getChildCount()) {
            throw new IllegalArgumentException("base aligned child index out of range (0, " + getChildCount() + ")");
        }
        this.mBaselineAlignedChildIndex = i;
    }

    View getVirtualChildAt(int i) {
        return getChildAt(i);
    }

    int getVirtualChildCount() {
        return getChildCount();
    }

    public float getWeightSum() {
        return this.mWeightSum;
    }

    public void setWeightSum(float f) {
        this.mWeightSum = Math.max(0.0f, f);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        if (this.mOrientation == 1) {
            measureVertical(i, i2);
        } else {
            measureHorizontal(i, i2);
        }
    }

    protected boolean hasDividerBeforeChildAt(int i) {
        if (i == 0) {
            return (this.mShowDividers & 1) != 0;
        }
        if (i == getChildCount()) {
            return (this.mShowDividers & 4) != 0;
        }
        if ((this.mShowDividers & 2) == 0) {
            return false;
        }
        for (int i2 = i - 1; i2 >= 0; i2--) {
            if (getChildAt(i2).getVisibility() != 8) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:142:0x032b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    void measureVertical(int i, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        boolean z;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        View view;
        boolean z2;
        int i13;
        this.mTotalLength = 0;
        int virtualChildCount = getVirtualChildCount();
        int mode = View.MeasureSpec.getMode(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int i14 = this.mBaselineAlignedChildIndex;
        boolean z3 = this.mUseLargestChild;
        int i15 = 0;
        int i16 = 0;
        int i17 = 0;
        int i18 = 0;
        int i19 = 0;
        int i20 = 0;
        boolean z4 = false;
        boolean z5 = false;
        float f = 0.0f;
        boolean z6 = true;
        while (true) {
            int i21 = 8;
            if (i20 < virtualChildCount) {
                View virtualChildAt = getVirtualChildAt(i20);
                if (virtualChildAt == null) {
                    this.mTotalLength += measureNullChild(i20);
                    virtualChildCount = virtualChildCount;
                    mode2 = mode2;
                    i18 = i18;
                } else if (virtualChildAt.getVisibility() == 8) {
                    i20 += getChildrenSkipCount(virtualChildAt, i20);
                    virtualChildCount = virtualChildCount;
                    i18 = i18;
                    i15 = i15;
                    mode2 = mode2;
                } else {
                    if (hasDividerBeforeChildAt(i20)) {
                        this.mTotalLength += this.mDividerHeight;
                    }
                    LayoutParams layoutParams = (LayoutParams) virtualChildAt.getLayoutParams();
                    float f2 = f + layoutParams.weight;
                    if (mode2 == 1073741824 && layoutParams.height == 0 && layoutParams.weight > 0.0f) {
                        int i22 = this.mTotalLength;
                        this.mTotalLength = Math.max(i22, layoutParams.topMargin + i22 + layoutParams.bottomMargin);
                        i17 = i17;
                        view = virtualChildAt;
                        i8 = i19;
                        virtualChildCount = virtualChildCount;
                        z4 = true;
                        i12 = i15;
                        i9 = i16;
                        i11 = i20;
                        mode2 = mode2;
                        i10 = i18;
                    } else {
                        if (layoutParams.height != 0 || layoutParams.weight <= 0.0f) {
                            i13 = Integer.MIN_VALUE;
                        } else {
                            layoutParams.height = -2;
                            i13 = 0;
                        }
                        i12 = i15;
                        i9 = i16;
                        mode2 = mode2;
                        i10 = i18;
                        virtualChildCount = virtualChildCount;
                        i8 = i19;
                        i11 = i20;
                        measureChildBeforeLayout(virtualChildAt, i20, i, 0, i2, f2 == 0.0f ? this.mTotalLength : 0);
                        if (i13 != Integer.MIN_VALUE) {
                            layoutParams.height = i13;
                        }
                        int measuredHeight = virtualChildAt.getMeasuredHeight();
                        int i23 = this.mTotalLength;
                        view = virtualChildAt;
                        this.mTotalLength = Math.max(i23, i23 + measuredHeight + layoutParams.topMargin + layoutParams.bottomMargin + getNextLocationOffset(view));
                        i17 = z3 ? Math.max(measuredHeight, i17) : i17;
                    }
                    if (i14 >= 0 && i14 == i11 + 1) {
                        this.mBaselineChildTop = this.mTotalLength;
                    }
                    if (i11 >= i14 || layoutParams.weight <= 0.0f) {
                        if (mode == 1073741824 || layoutParams.width != -1) {
                            z2 = false;
                        } else {
                            z2 = true;
                            z5 = true;
                        }
                        int i24 = layoutParams.leftMargin + layoutParams.rightMargin;
                        int measuredWidth = view.getMeasuredWidth() + i24;
                        int max = Math.max(i9, measuredWidth);
                        int combineMeasuredStates = View.combineMeasuredStates(i12, view.getMeasuredState());
                        z6 = z6 && layoutParams.width == -1;
                        if (layoutParams.weight > 0.0f) {
                            if (!z2) {
                                i24 = measuredWidth;
                            }
                            i18 = Math.max(i10, i24);
                            i19 = i8;
                        } else {
                            if (!z2) {
                                i24 = measuredWidth;
                            }
                            i19 = Math.max(i8, i24);
                            i18 = i10;
                        }
                        i20 = getChildrenSkipCount(view, i11) + i11;
                        f = f2;
                        i15 = combineMeasuredStates;
                        i16 = max;
                    } else {
                        throw new RuntimeException("A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won't work.  Either remove the weight, or don't set mBaselineAlignedChildIndex.");
                    }
                }
                i20++;
            } else {
                int i25 = i16;
                if (this.mTotalLength > 0) {
                    i3 = virtualChildCount;
                    if (hasDividerBeforeChildAt(i3)) {
                        this.mTotalLength += this.mDividerHeight;
                    }
                } else {
                    i3 = virtualChildCount;
                }
                if (z3 && (mode2 == Integer.MIN_VALUE || mode2 == 0)) {
                    this.mTotalLength = 0;
                    int i26 = 0;
                    while (i26 < i3) {
                        View virtualChildAt2 = getVirtualChildAt(i26);
                        if (virtualChildAt2 == null) {
                            this.mTotalLength += measureNullChild(i26);
                        } else if (virtualChildAt2.getVisibility() == i21) {
                            i26 += getChildrenSkipCount(virtualChildAt2, i26);
                        } else {
                            LayoutParams layoutParams2 = (LayoutParams) virtualChildAt2.getLayoutParams();
                            int i27 = this.mTotalLength;
                            this.mTotalLength = Math.max(i27, i27 + i17 + layoutParams2.topMargin + layoutParams2.bottomMargin + getNextLocationOffset(virtualChildAt2));
                        }
                        i26++;
                        i21 = 8;
                    }
                }
                int paddingTop = this.mTotalLength + getPaddingTop() + getPaddingBottom();
                this.mTotalLength = paddingTop;
                int resolveSizeAndState = View.resolveSizeAndState(Math.max(paddingTop, getSuggestedMinimumHeight()), i2, 0);
                int i28 = (16777215 & resolveSizeAndState) - this.mTotalLength;
                if (z4 || (i28 != 0 && f > 0.0f)) {
                    float f3 = this.mWeightSum;
                    if (f3 > 0.0f) {
                        f = f3;
                    }
                    this.mTotalLength = 0;
                    int i29 = i28;
                    int i30 = i19;
                    i5 = i15;
                    for (int i31 = 0; i31 < i3; i31++) {
                        View virtualChildAt3 = getVirtualChildAt(i31);
                        if (virtualChildAt3.getVisibility() == 8) {
                            i29 = i29;
                        } else {
                            LayoutParams layoutParams3 = (LayoutParams) virtualChildAt3.getLayoutParams();
                            float f4 = layoutParams3.weight;
                            if (f4 > 0.0f) {
                                int i32 = (int) ((i29 * f4) / f);
                                f -= f4;
                                i29 -= i32;
                                int childMeasureSpec = getChildMeasureSpec(i, getPaddingLeft() + getPaddingRight() + layoutParams3.leftMargin + layoutParams3.rightMargin, layoutParams3.width);
                                if (layoutParams3.height == 0) {
                                    i7 = BasicMeasure.EXACTLY;
                                    if (mode2 == 1073741824) {
                                        if (i32 <= 0) {
                                            i32 = 0;
                                        }
                                        virtualChildAt3.measure(childMeasureSpec, View.MeasureSpec.makeMeasureSpec(i32, BasicMeasure.EXACTLY));
                                        i5 = View.combineMeasuredStates(i5, virtualChildAt3.getMeasuredState() & InputDeviceCompat.SOURCE_ANY);
                                    }
                                } else {
                                    i7 = BasicMeasure.EXACTLY;
                                }
                                int measuredHeight2 = virtualChildAt3.getMeasuredHeight() + i32;
                                if (measuredHeight2 < 0) {
                                    measuredHeight2 = 0;
                                }
                                virtualChildAt3.measure(childMeasureSpec, View.MeasureSpec.makeMeasureSpec(measuredHeight2, i7));
                                i5 = View.combineMeasuredStates(i5, virtualChildAt3.getMeasuredState() & InputDeviceCompat.SOURCE_ANY);
                            } else {
                                i29 = i29;
                            }
                            int i33 = layoutParams3.leftMargin + layoutParams3.rightMargin;
                            int measuredWidth2 = virtualChildAt3.getMeasuredWidth() + i33;
                            i25 = Math.max(i25, measuredWidth2);
                            if (mode != 1073741824) {
                                i5 = i5;
                                i6 = -1;
                                if (layoutParams3.width == -1) {
                                    z = true;
                                    if (!z) {
                                        i33 = measuredWidth2;
                                    }
                                    int max2 = Math.max(i30, i33);
                                    z6 = !z6 && layoutParams3.width == i6;
                                    int i34 = this.mTotalLength;
                                    this.mTotalLength = Math.max(i34, virtualChildAt3.getMeasuredHeight() + i34 + layoutParams3.topMargin + layoutParams3.bottomMargin + getNextLocationOffset(virtualChildAt3));
                                    i30 = max2;
                                }
                            } else {
                                i5 = i5;
                                i6 = -1;
                            }
                            z = false;
                            if (!z) {
                            }
                            int max22 = Math.max(i30, i33);
                            if (!z6) {
                            }
                            int i342 = this.mTotalLength;
                            this.mTotalLength = Math.max(i342, virtualChildAt3.getMeasuredHeight() + i342 + layoutParams3.topMargin + layoutParams3.bottomMargin + getNextLocationOffset(virtualChildAt3));
                            i30 = max22;
                        }
                    }
                    i4 = i;
                    this.mTotalLength += getPaddingTop() + getPaddingBottom();
                    i25 = i30;
                } else {
                    i25 = Math.max(i19, i18);
                    if (z3 && mode2 != 1073741824) {
                        for (int i35 = 0; i35 < i3; i35++) {
                            View virtualChildAt4 = getVirtualChildAt(i35);
                            if (!(virtualChildAt4 == null || virtualChildAt4.getVisibility() == 8 || ((LayoutParams) virtualChildAt4.getLayoutParams()).weight <= 0.0f)) {
                                virtualChildAt4.measure(View.MeasureSpec.makeMeasureSpec(virtualChildAt4.getMeasuredWidth(), BasicMeasure.EXACTLY), View.MeasureSpec.makeMeasureSpec(i17, BasicMeasure.EXACTLY));
                            }
                        }
                    }
                    i4 = i;
                    i5 = i15;
                }
                if (z6 || mode == 1073741824) {
                }
                setMeasuredDimension(View.resolveSizeAndState(Math.max(i25 + getPaddingLeft() + getPaddingRight(), getSuggestedMinimumWidth()), i4, i5), resolveSizeAndState);
                if (z5) {
                    forceUniformWidth(i3, i2);
                    return;
                }
                return;
            }
        }
    }

    private void forceUniformWidth(int i, int i2) {
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), BasicMeasure.EXACTLY);
        for (int i3 = 0; i3 < i; i3++) {
            View virtualChildAt = getVirtualChildAt(i3);
            if (virtualChildAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) virtualChildAt.getLayoutParams();
                if (layoutParams.width == -1) {
                    int i4 = layoutParams.height;
                    layoutParams.height = virtualChildAt.getMeasuredHeight();
                    measureChildWithMargins(virtualChildAt, makeMeasureSpec, 0, i2, 0);
                    layoutParams.height = i4;
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:189:0x045a  */
    /* JADX WARN: Removed duplicated region for block: B:190:0x045d  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x019d  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x01a0  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x01d4  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x01df  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    void measureHorizontal(int i, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int baseline;
        int i8;
        int i9;
        View view;
        boolean z;
        int measuredHeight;
        int baseline2;
        char c;
        int i10;
        this.mTotalLength = 0;
        int virtualChildCount = getVirtualChildCount();
        int mode = View.MeasureSpec.getMode(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        if (this.mMaxAscent == null || this.mMaxDescent == null) {
            this.mMaxAscent = new int[4];
            this.mMaxDescent = new int[4];
        }
        int[] iArr = this.mMaxAscent;
        int[] iArr2 = this.mMaxDescent;
        iArr[3] = -1;
        iArr[2] = -1;
        iArr[1] = -1;
        iArr[0] = -1;
        iArr2[3] = -1;
        iArr2[2] = -1;
        iArr2[1] = -1;
        iArr2[0] = -1;
        boolean z2 = this.mBaselineAligned;
        boolean z3 = this.mUseLargestChild;
        int i11 = BasicMeasure.EXACTLY;
        boolean z4 = mode == 1073741824;
        int i12 = 0;
        int i13 = 0;
        int i14 = 0;
        int i15 = 0;
        int i16 = 0;
        boolean z5 = false;
        int i17 = 0;
        boolean z6 = false;
        boolean z7 = true;
        float f = 0.0f;
        while (i12 < virtualChildCount) {
            View virtualChildAt = getVirtualChildAt(i12);
            if (virtualChildAt == null) {
                this.mTotalLength += measureNullChild(i12);
            } else if (virtualChildAt.getVisibility() == 8) {
                i12 += getChildrenSkipCount(virtualChildAt, i12);
            } else {
                if (hasDividerBeforeChildAt(i12)) {
                    this.mTotalLength += this.mDividerWidth;
                }
                LayoutParams layoutParams = (LayoutParams) virtualChildAt.getLayoutParams();
                float f2 = f + layoutParams.weight;
                if (mode == i11 && layoutParams.width == 0 && layoutParams.weight > 0.0f) {
                    if (z4) {
                        this.mTotalLength += layoutParams.leftMargin + layoutParams.rightMargin;
                    } else {
                        int i18 = this.mTotalLength;
                        this.mTotalLength = Math.max(i18, layoutParams.leftMargin + i18 + layoutParams.rightMargin);
                    }
                    if (z2) {
                        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
                        virtualChildAt.measure(makeMeasureSpec, makeMeasureSpec);
                        i9 = i12;
                        z3 = z3;
                        z2 = z2;
                        view = virtualChildAt;
                    } else {
                        i9 = i12;
                        z3 = z3;
                        z2 = z2;
                        view = virtualChildAt;
                        z5 = true;
                        i11 = BasicMeasure.EXACTLY;
                        if (mode2 == i11 && layoutParams.height == -1) {
                            z = true;
                            z6 = true;
                        } else {
                            z = false;
                        }
                        int i19 = layoutParams.topMargin + layoutParams.bottomMargin;
                        measuredHeight = view.getMeasuredHeight() + i19;
                        i17 = View.combineMeasuredStates(i17, view.getMeasuredState());
                        if (z2 && (baseline2 = view.getBaseline()) != -1) {
                            int i20 = ((((layoutParams.gravity >= 0 ? this.mGravity : layoutParams.gravity) & 112) >> 4) & (-2)) >> 1;
                            iArr[i20] = Math.max(iArr[i20], baseline2);
                            iArr2[i20] = Math.max(iArr2[i20], measuredHeight - baseline2);
                        }
                        i14 = Math.max(i14, measuredHeight);
                        z7 = !z7 && layoutParams.height == -1;
                        if (layoutParams.weight <= 0.0f) {
                            if (!z) {
                                i19 = measuredHeight;
                            }
                            i16 = Math.max(i16, i19);
                        } else {
                            if (!z) {
                                i19 = measuredHeight;
                            }
                            i15 = Math.max(i15, i19);
                            i16 = i16;
                        }
                        i12 = getChildrenSkipCount(view, i9) + i9;
                        f = f2;
                        i12++;
                        iArr2 = iArr2;
                    }
                } else {
                    if (layoutParams.width != 0 || layoutParams.weight <= 0.0f) {
                        c = 65534;
                        i10 = Integer.MIN_VALUE;
                    } else {
                        c = 65534;
                        layoutParams.width = -2;
                        i10 = 0;
                    }
                    i9 = i12;
                    z3 = z3;
                    z2 = z2;
                    measureChildBeforeLayout(virtualChildAt, i9, i, f2 == 0.0f ? this.mTotalLength : 0, i2, 0);
                    if (i10 != Integer.MIN_VALUE) {
                        layoutParams.width = i10;
                    }
                    int measuredWidth = virtualChildAt.getMeasuredWidth();
                    if (z4) {
                        view = virtualChildAt;
                        this.mTotalLength += layoutParams.leftMargin + measuredWidth + layoutParams.rightMargin + getNextLocationOffset(view);
                    } else {
                        view = virtualChildAt;
                        int i21 = this.mTotalLength;
                        this.mTotalLength = Math.max(i21, i21 + measuredWidth + layoutParams.leftMargin + layoutParams.rightMargin + getNextLocationOffset(view));
                    }
                    if (z3) {
                        i13 = Math.max(measuredWidth, i13);
                    }
                }
                i11 = BasicMeasure.EXACTLY;
                if (mode2 == i11) {
                }
                z = false;
                int i192 = layoutParams.topMargin + layoutParams.bottomMargin;
                measuredHeight = view.getMeasuredHeight() + i192;
                i17 = View.combineMeasuredStates(i17, view.getMeasuredState());
                if (z2) {
                    int i202 = ((((layoutParams.gravity >= 0 ? this.mGravity : layoutParams.gravity) & 112) >> 4) & (-2)) >> 1;
                    iArr[i202] = Math.max(iArr[i202], baseline2);
                    iArr2[i202] = Math.max(iArr2[i202], measuredHeight - baseline2);
                }
                i14 = Math.max(i14, measuredHeight);
                if (!z7) {
                }
                if (layoutParams.weight <= 0.0f) {
                }
                i12 = getChildrenSkipCount(view, i9) + i9;
                f = f2;
                i12++;
                iArr2 = iArr2;
            }
            z3 = z3;
            z2 = z2;
            i11 = i11;
            i12++;
            iArr2 = iArr2;
        }
        if (this.mTotalLength > 0 && hasDividerBeforeChildAt(virtualChildCount)) {
            this.mTotalLength += this.mDividerWidth;
        }
        if (iArr[1] == -1 && iArr[0] == -1 && iArr[2] == -1 && iArr[3] == -1) {
            i4 = i14;
            i3 = i17;
        } else {
            i3 = i17;
            i4 = Math.max(i14, Math.max(iArr[3], Math.max(iArr[0], Math.max(iArr[1], iArr[2]))) + Math.max(iArr2[3], Math.max(iArr2[0], Math.max(iArr2[1], iArr2[2]))));
        }
        if (z3 && (mode == Integer.MIN_VALUE || mode == 0)) {
            this.mTotalLength = 0;
            int i22 = 0;
            while (i22 < virtualChildCount) {
                View virtualChildAt2 = getVirtualChildAt(i22);
                if (virtualChildAt2 == null) {
                    this.mTotalLength += measureNullChild(i22);
                } else if (virtualChildAt2.getVisibility() == 8) {
                    i22 += getChildrenSkipCount(virtualChildAt2, i22);
                } else {
                    LayoutParams layoutParams2 = (LayoutParams) virtualChildAt2.getLayoutParams();
                    if (z4) {
                        this.mTotalLength += layoutParams2.leftMargin + i13 + layoutParams2.rightMargin + getNextLocationOffset(virtualChildAt2);
                    } else {
                        int i23 = this.mTotalLength;
                        i4 = i4;
                        this.mTotalLength = Math.max(i23, i23 + i13 + layoutParams2.leftMargin + layoutParams2.rightMargin + getNextLocationOffset(virtualChildAt2));
                        i22++;
                    }
                }
                i4 = i4;
                i22++;
            }
        }
        int paddingLeft = this.mTotalLength + getPaddingLeft() + getPaddingRight();
        this.mTotalLength = paddingLeft;
        int resolveSizeAndState = View.resolveSizeAndState(Math.max(paddingLeft, getSuggestedMinimumWidth()), i, 0);
        int i24 = (16777215 & resolveSizeAndState) - this.mTotalLength;
        if (z5 || (i24 != 0 && f > 0.0f)) {
            float f3 = this.mWeightSum;
            if (f3 > 0.0f) {
                f = f3;
            }
            iArr[3] = -1;
            iArr[2] = -1;
            iArr[1] = -1;
            iArr[0] = -1;
            iArr2[3] = -1;
            iArr2[2] = -1;
            iArr2[1] = -1;
            iArr2[0] = -1;
            this.mTotalLength = 0;
            int i25 = i15;
            int i26 = -1;
            int i27 = i3;
            for (int i28 = 0; i28 < virtualChildCount; i28++) {
                View virtualChildAt3 = getVirtualChildAt(i28);
                if (virtualChildAt3 == null || virtualChildAt3.getVisibility() == 8) {
                    i24 = i24;
                    virtualChildCount = virtualChildCount;
                } else {
                    LayoutParams layoutParams3 = (LayoutParams) virtualChildAt3.getLayoutParams();
                    float f4 = layoutParams3.weight;
                    if (f4 > 0.0f) {
                        int i29 = (int) ((i24 * f4) / f);
                        f -= f4;
                        i24 -= i29;
                        virtualChildCount = virtualChildCount;
                        int childMeasureSpec = getChildMeasureSpec(i2, getPaddingTop() + getPaddingBottom() + layoutParams3.topMargin + layoutParams3.bottomMargin, layoutParams3.height);
                        if (layoutParams3.width == 0) {
                            i8 = BasicMeasure.EXACTLY;
                            if (mode == 1073741824) {
                                if (i29 <= 0) {
                                    i29 = 0;
                                }
                                virtualChildAt3.measure(View.MeasureSpec.makeMeasureSpec(i29, BasicMeasure.EXACTLY), childMeasureSpec);
                                i27 = View.combineMeasuredStates(i27, virtualChildAt3.getMeasuredState() & ViewCompat.MEASURED_STATE_MASK);
                            }
                        } else {
                            i8 = BasicMeasure.EXACTLY;
                        }
                        int measuredWidth2 = virtualChildAt3.getMeasuredWidth() + i29;
                        if (measuredWidth2 < 0) {
                            measuredWidth2 = 0;
                        }
                        virtualChildAt3.measure(View.MeasureSpec.makeMeasureSpec(measuredWidth2, i8), childMeasureSpec);
                        i27 = View.combineMeasuredStates(i27, virtualChildAt3.getMeasuredState() & ViewCompat.MEASURED_STATE_MASK);
                    } else {
                        i24 = i24;
                        virtualChildCount = virtualChildCount;
                    }
                    if (z4) {
                        this.mTotalLength += virtualChildAt3.getMeasuredWidth() + layoutParams3.leftMargin + layoutParams3.rightMargin + getNextLocationOffset(virtualChildAt3);
                        f = f;
                    } else {
                        int i30 = this.mTotalLength;
                        f = f;
                        this.mTotalLength = Math.max(i30, virtualChildAt3.getMeasuredWidth() + i30 + layoutParams3.leftMargin + layoutParams3.rightMargin + getNextLocationOffset(virtualChildAt3));
                    }
                    boolean z8 = mode2 != 1073741824 && layoutParams3.height == -1;
                    int i31 = layoutParams3.topMargin + layoutParams3.bottomMargin;
                    int measuredHeight2 = virtualChildAt3.getMeasuredHeight() + i31;
                    i26 = Math.max(i26, measuredHeight2);
                    if (!z8) {
                        i31 = measuredHeight2;
                    }
                    int max = Math.max(i25, i31);
                    if (z7) {
                        i7 = -1;
                        if (layoutParams3.height == -1) {
                            z7 = true;
                            if (z2 && (baseline = virtualChildAt3.getBaseline()) != i7) {
                                int i32 = ((((layoutParams3.gravity >= 0 ? this.mGravity : layoutParams3.gravity) & 112) >> 4) & (-2)) >> 1;
                                iArr[i32] = Math.max(iArr[i32], baseline);
                                iArr2[i32] = Math.max(iArr2[i32], measuredHeight2 - baseline);
                            }
                            i25 = max;
                        }
                    } else {
                        i7 = -1;
                    }
                    z7 = false;
                    if (z2) {
                        int i322 = ((((layoutParams3.gravity >= 0 ? this.mGravity : layoutParams3.gravity) & 112) >> 4) & (-2)) >> 1;
                        iArr[i322] = Math.max(iArr[i322], baseline);
                        iArr2[i322] = Math.max(iArr2[i322], measuredHeight2 - baseline);
                    }
                    i25 = max;
                }
            }
            i6 = i2;
            i5 = virtualChildCount;
            this.mTotalLength += getPaddingLeft() + getPaddingRight();
            i4 = (iArr[1] == -1 && iArr[0] == -1 && iArr[2] == -1 && iArr[3] == -1) ? i26 : Math.max(i26, Math.max(iArr[3], Math.max(iArr[0], Math.max(iArr[1], iArr[2]))) + Math.max(iArr2[3], Math.max(iArr2[0], Math.max(iArr2[1], iArr2[2]))));
            i4 = i25;
            i3 = i27;
        } else {
            i4 = Math.max(i15, i16);
            if (z3 && mode != 1073741824) {
                for (int i33 = 0; i33 < virtualChildCount; i33++) {
                    View virtualChildAt4 = getVirtualChildAt(i33);
                    if (!(virtualChildAt4 == null || virtualChildAt4.getVisibility() == 8 || ((LayoutParams) virtualChildAt4.getLayoutParams()).weight <= 0.0f)) {
                        virtualChildAt4.measure(View.MeasureSpec.makeMeasureSpec(i13, BasicMeasure.EXACTLY), View.MeasureSpec.makeMeasureSpec(virtualChildAt4.getMeasuredHeight(), BasicMeasure.EXACTLY));
                    }
                }
            }
            i6 = i2;
            i5 = virtualChildCount;
        }
        if (z7 || mode2 == 1073741824) {
        }
        setMeasuredDimension(resolveSizeAndState | (i3 & ViewCompat.MEASURED_STATE_MASK), View.resolveSizeAndState(Math.max(i4 + getPaddingTop() + getPaddingBottom(), getSuggestedMinimumHeight()), i6, i3 << 16));
        if (z6) {
            forceUniformHeight(i5, i);
        }
    }

    private void forceUniformHeight(int i, int i2) {
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), BasicMeasure.EXACTLY);
        for (int i3 = 0; i3 < i; i3++) {
            View virtualChildAt = getVirtualChildAt(i3);
            if (virtualChildAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) virtualChildAt.getLayoutParams();
                if (layoutParams.height == -1) {
                    int i4 = layoutParams.width;
                    layoutParams.width = virtualChildAt.getMeasuredWidth();
                    measureChildWithMargins(virtualChildAt, i2, 0, makeMeasureSpec, 0);
                    layoutParams.width = i4;
                }
            }
        }
    }

    void measureChildBeforeLayout(View view, int i, int i2, int i3, int i4, int i5) {
        measureChildWithMargins(view, i2, i3, i4, i5);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        if (this.mOrientation == 1) {
            layoutVertical(i, i2, i3, i4);
        } else {
            layoutHorizontal(i, i2, i3, i4);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x009f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    void layoutVertical(int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int paddingLeft = getPaddingLeft();
        int i10 = i3 - i;
        int paddingRight = i10 - getPaddingRight();
        int paddingRight2 = (i10 - paddingLeft) - getPaddingRight();
        int virtualChildCount = getVirtualChildCount();
        int i11 = this.mGravity;
        int i12 = i11 & 112;
        int i13 = i11 & GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK;
        if (i12 != 16) {
            i5 = i12 != 80 ? getPaddingTop() : ((getPaddingTop() + i4) - i2) - this.mTotalLength;
        } else {
            i5 = getPaddingTop() + (((i4 - i2) - this.mTotalLength) / 2);
        }
        int i14 = 0;
        while (i14 < virtualChildCount) {
            View virtualChildAt = getVirtualChildAt(i14);
            if (virtualChildAt == null) {
                i5 += measureNullChild(i14);
            } else if (virtualChildAt.getVisibility() != 8) {
                int measuredWidth = virtualChildAt.getMeasuredWidth();
                int measuredHeight = virtualChildAt.getMeasuredHeight();
                LayoutParams layoutParams = (LayoutParams) virtualChildAt.getLayoutParams();
                i13 = layoutParams.gravity;
                if (i13 < 0) {
                }
                int absoluteGravity = GravityCompat.getAbsoluteGravity(i13, ViewCompat.getLayoutDirection(this)) & 7;
                if (absoluteGravity == 1) {
                    i9 = ((paddingRight2 - measuredWidth) / 2) + paddingLeft + layoutParams.leftMargin;
                    i8 = layoutParams.rightMargin;
                } else if (absoluteGravity != 5) {
                    i7 = layoutParams.leftMargin + paddingLeft;
                    if (hasDividerBeforeChildAt(i14)) {
                        i5 += this.mDividerHeight;
                    }
                    int i15 = i5 + layoutParams.topMargin;
                    setChildFrame(virtualChildAt, i7, i15 + getLocationOffset(virtualChildAt), measuredWidth, measuredHeight);
                    i5 = i15 + measuredHeight + layoutParams.bottomMargin + getNextLocationOffset(virtualChildAt);
                    i14 += getChildrenSkipCount(virtualChildAt, i14);
                    i6 = 1;
                    i14 += i6;
                } else {
                    i9 = paddingRight - measuredWidth;
                    i8 = layoutParams.rightMargin;
                }
                i7 = i9 - i8;
                if (hasDividerBeforeChildAt(i14)) {
                }
                int i152 = i5 + layoutParams.topMargin;
                setChildFrame(virtualChildAt, i7, i152 + getLocationOffset(virtualChildAt), measuredWidth, measuredHeight);
                i5 = i152 + measuredHeight + layoutParams.bottomMargin + getNextLocationOffset(virtualChildAt);
                i14 += getChildrenSkipCount(virtualChildAt, i14);
                i6 = 1;
                i14 += i6;
            }
            i6 = 1;
            i14 += i6;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x00af  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00b8  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00eb  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00ff  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    void layoutHorizontal(int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        boolean isLayoutRtl = ViewUtils.isLayoutRtl(this);
        int paddingTop = getPaddingTop();
        int i12 = i4 - i2;
        int paddingBottom = i12 - getPaddingBottom();
        int paddingBottom2 = (i12 - paddingTop) - getPaddingBottom();
        int virtualChildCount = getVirtualChildCount();
        int i13 = this.mGravity;
        int i14 = i13 & 112;
        boolean z = this.mBaselineAligned;
        int[] iArr = this.mMaxAscent;
        int[] iArr2 = this.mMaxDescent;
        int absoluteGravity = GravityCompat.getAbsoluteGravity(8388615 & i13, ViewCompat.getLayoutDirection(this));
        boolean z2 = true;
        if (absoluteGravity != 1) {
            i5 = absoluteGravity != 5 ? getPaddingLeft() : ((getPaddingLeft() + i3) - i) - this.mTotalLength;
        } else {
            i5 = getPaddingLeft() + (((i3 - i) - this.mTotalLength) / 2);
        }
        if (isLayoutRtl) {
            i7 = virtualChildCount - 1;
            i6 = -1;
        } else {
            i7 = 0;
            i6 = 1;
        }
        int i15 = 0;
        while (i15 < virtualChildCount) {
            int i16 = i7 + (i6 * i15);
            View virtualChildAt = getVirtualChildAt(i16);
            if (virtualChildAt == null) {
                i5 += measureNullChild(i16);
                paddingTop = paddingTop;
                virtualChildCount = virtualChildCount;
                i14 = i14;
            } else if (virtualChildAt.getVisibility() != 8) {
                int measuredWidth = virtualChildAt.getMeasuredWidth();
                int measuredHeight = virtualChildAt.getMeasuredHeight();
                LayoutParams layoutParams = (LayoutParams) virtualChildAt.getLayoutParams();
                if (z) {
                    virtualChildCount = virtualChildCount;
                    if (layoutParams.height != -1) {
                        i8 = virtualChildAt.getBaseline();
                        i9 = layoutParams.gravity;
                        if (i9 < 0) {
                            i9 = i14;
                        }
                        i10 = i9 & 112;
                        i14 = i14;
                        if (i10 == 16) {
                            if (i10 == 48) {
                                i11 = layoutParams.topMargin + paddingTop;
                                if (i8 != -1) {
                                    z2 = true;
                                    i11 += iArr[1] - i8;
                                }
                            } else if (i10 != 80) {
                                i11 = paddingTop;
                            } else {
                                i11 = (paddingBottom - measuredHeight) - layoutParams.bottomMargin;
                                if (i8 != -1) {
                                    i11 -= iArr2[2] - (virtualChildAt.getMeasuredHeight() - i8);
                                }
                            }
                            z2 = true;
                        } else {
                            z2 = true;
                            i11 = ((((paddingBottom2 - measuredHeight) / 2) + paddingTop) + layoutParams.topMargin) - layoutParams.bottomMargin;
                        }
                        if (hasDividerBeforeChildAt(i16)) {
                            i5 += this.mDividerWidth;
                        }
                        int i17 = layoutParams.leftMargin + i5;
                        paddingTop = paddingTop;
                        setChildFrame(virtualChildAt, i17 + getLocationOffset(virtualChildAt), i11, measuredWidth, measuredHeight);
                        i5 = i17 + measuredWidth + layoutParams.rightMargin + getNextLocationOffset(virtualChildAt);
                        i15 += getChildrenSkipCount(virtualChildAt, i16);
                        i15++;
                    }
                } else {
                    virtualChildCount = virtualChildCount;
                }
                i8 = -1;
                i9 = layoutParams.gravity;
                if (i9 < 0) {
                }
                i10 = i9 & 112;
                i14 = i14;
                if (i10 == 16) {
                }
                if (hasDividerBeforeChildAt(i16)) {
                }
                int i172 = layoutParams.leftMargin + i5;
                paddingTop = paddingTop;
                setChildFrame(virtualChildAt, i172 + getLocationOffset(virtualChildAt), i11, measuredWidth, measuredHeight);
                i5 = i172 + measuredWidth + layoutParams.rightMargin + getNextLocationOffset(virtualChildAt);
                i15 += getChildrenSkipCount(virtualChildAt, i16);
                i15++;
            } else {
                paddingTop = paddingTop;
                virtualChildCount = virtualChildCount;
                i14 = i14;
                z2 = true;
            }
            i15++;
        }
    }

    private void setChildFrame(View view, int i, int i2, int i3, int i4) {
        view.layout(i, i2, i3 + i, i4 + i2);
    }

    public void setOrientation(int i) {
        if (this.mOrientation != i) {
            this.mOrientation = i;
            requestLayout();
        }
    }

    public int getOrientation() {
        return this.mOrientation;
    }

    public void setGravity(int i) {
        if (this.mGravity != i) {
            if ((8388615 & i) == 0) {
                i |= GravityCompat.START;
            }
            if ((i & 112) == 0) {
                i |= 48;
            }
            this.mGravity = i;
            requestLayout();
        }
    }

    public int getGravity() {
        return this.mGravity;
    }

    public void setHorizontalGravity(int i) {
        int i2 = i & GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK;
        int i3 = this.mGravity;
        if ((8388615 & i3) != i2) {
            this.mGravity = i2 | ((-8388616) & i3);
            requestLayout();
        }
    }

    public void setVerticalGravity(int i) {
        int i2 = i & 112;
        int i3 = this.mGravity;
        if ((i3 & 112) != i2) {
            this.mGravity = i2 | (i3 & (-113));
            requestLayout();
        }
    }

    @Override // android.view.ViewGroup
    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    public LayoutParams generateDefaultLayoutParams() {
        int i = this.mOrientation;
        if (i == 0) {
            return new LayoutParams(-2, -2);
        }
        if (i == 1) {
            return new LayoutParams(-1, -2);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    public LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new LayoutParams(layoutParams);
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(ACCESSIBILITY_CLASS_NAME);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(ACCESSIBILITY_CLASS_NAME);
    }

    /* loaded from: classes.dex */
    public static class LayoutParams extends ViewGroup.MarginLayoutParams {
        public int gravity;
        public float weight;

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.gravity = -1;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0041R.styleable.LinearLayoutCompat_Layout);
            this.weight = obtainStyledAttributes.getFloat(C0041R.styleable.LinearLayoutCompat_Layout_android_layout_weight, 0.0f);
            this.gravity = obtainStyledAttributes.getInt(C0041R.styleable.LinearLayoutCompat_Layout_android_layout_gravity, -1);
            obtainStyledAttributes.recycle();
        }

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.gravity = -1;
            this.weight = 0.0f;
        }

        public LayoutParams(int i, int i2, float f) {
            super(i, i2);
            this.gravity = -1;
            this.weight = f;
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.gravity = -1;
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.gravity = -1;
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((ViewGroup.MarginLayoutParams) layoutParams);
            this.gravity = -1;
            this.weight = layoutParams.weight;
            this.gravity = layoutParams.gravity;
        }
    }
}
