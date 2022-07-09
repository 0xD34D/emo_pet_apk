package p005cn.bingoogolapple.badgeview;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import androidx.core.internal.view.SupportMenu;
/* renamed from: cn.bingoogolapple.badgeview.BGABadgeViewHelper */
/* loaded from: classes.dex */
public class BGABadgeViewHelper {
    private int mBadgeBgColor;
    private int mBadgeBorderColor;
    private int mBadgeBorderWidth;
    private RectF mBadgeDragExtraRectF;
    private BadgeGravity mBadgeGravity;
    private int mBadgeHorizontalMargin;
    private Rect mBadgeNumberRect;
    private int mBadgePadding;
    private Paint mBadgePaint;
    private RectF mBadgeRectF;
    private String mBadgeText;
    private int mBadgeTextColor;
    private int mBadgeTextSize;
    private int mBadgeVerticalMargin;
    private BGABadgeable mBadgeable;
    private Bitmap mBitmap;
    private BGADragDismissDelegate mDelegate;
    private int mDragExtra;
    private boolean mDraggable;
    private BGADragBadgeView mDropBadgeView;
    private boolean mIsDragging;
    private boolean mIsResumeTravel;
    private boolean mIsShowBadge;
    private boolean mIsShowDrawable = false;

    /* renamed from: cn.bingoogolapple.badgeview.BGABadgeViewHelper$BadgeGravity */
    /* loaded from: classes.dex */
    public enum BadgeGravity {
        RightTop,
        RightCenter,
        RightBottom
    }

    public BGABadgeViewHelper(BGABadgeable bGABadgeable, Context context, AttributeSet attributeSet, BadgeGravity badgeGravity) {
        this.mBadgeable = bGABadgeable;
        initDefaultAttrs(context, badgeGravity);
        initCustomAttrs(context, attributeSet);
        afterInitDefaultAndCustomAttrs();
        this.mDropBadgeView = new BGADragBadgeView(context, this);
    }

    private void initDefaultAttrs(Context context, BadgeGravity badgeGravity) {
        this.mBadgeNumberRect = new Rect();
        this.mBadgeRectF = new RectF();
        this.mBadgeBgColor = SupportMenu.CATEGORY_MASK;
        this.mBadgeTextColor = -1;
        this.mBadgeTextSize = BGABadgeViewUtil.sp2px(context, 10.0f);
        Paint paint = new Paint();
        this.mBadgePaint = paint;
        paint.setAntiAlias(true);
        this.mBadgePaint.setStyle(Paint.Style.FILL);
        this.mBadgePaint.setTextAlign(Paint.Align.CENTER);
        this.mBadgePadding = BGABadgeViewUtil.dp2px(context, 4.0f);
        this.mBadgeVerticalMargin = BGABadgeViewUtil.dp2px(context, 4.0f);
        this.mBadgeHorizontalMargin = BGABadgeViewUtil.dp2px(context, 4.0f);
        this.mBadgeGravity = badgeGravity;
        this.mIsShowBadge = false;
        this.mBadgeText = null;
        this.mBitmap = null;
        this.mIsDragging = false;
        this.mDraggable = false;
        this.mBadgeBorderColor = -1;
        this.mDragExtra = BGABadgeViewUtil.dp2px(context, 4.0f);
        this.mBadgeDragExtraRectF = new RectF();
    }

    private void initCustomAttrs(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0636R.styleable.BGABadgeView);
        int indexCount = obtainStyledAttributes.getIndexCount();
        for (int i = 0; i < indexCount; i++) {
            initCustomAttr(obtainStyledAttributes.getIndex(i), obtainStyledAttributes);
        }
        obtainStyledAttributes.recycle();
    }

    private void initCustomAttr(int i, TypedArray typedArray) {
        if (i == C0636R.styleable.BGABadgeView_badge_bgColor) {
            this.mBadgeBgColor = typedArray.getColor(i, this.mBadgeBgColor);
        } else if (i == C0636R.styleable.BGABadgeView_badge_textColor) {
            this.mBadgeTextColor = typedArray.getColor(i, this.mBadgeTextColor);
        } else if (i == C0636R.styleable.BGABadgeView_badge_textSize) {
            this.mBadgeTextSize = typedArray.getDimensionPixelSize(i, this.mBadgeTextSize);
        } else if (i == C0636R.styleable.BGABadgeView_badge_verticalMargin) {
            this.mBadgeVerticalMargin = typedArray.getDimensionPixelSize(i, this.mBadgeVerticalMargin);
        } else if (i == C0636R.styleable.BGABadgeView_badge_horizontalMargin) {
            this.mBadgeHorizontalMargin = typedArray.getDimensionPixelSize(i, this.mBadgeHorizontalMargin);
        } else if (i == C0636R.styleable.BGABadgeView_badge_padding) {
            this.mBadgePadding = typedArray.getDimensionPixelSize(i, this.mBadgePadding);
        } else if (i == C0636R.styleable.BGABadgeView_badge_gravity) {
            this.mBadgeGravity = BadgeGravity.values()[typedArray.getInt(i, this.mBadgeGravity.ordinal())];
        } else if (i == C0636R.styleable.BGABadgeView_badge_draggable) {
            this.mDraggable = typedArray.getBoolean(i, this.mDraggable);
        } else if (i == C0636R.styleable.BGABadgeView_badge_isResumeTravel) {
            this.mIsResumeTravel = typedArray.getBoolean(i, this.mIsResumeTravel);
        } else if (i == C0636R.styleable.BGABadgeView_badge_borderWidth) {
            this.mBadgeBorderWidth = typedArray.getDimensionPixelSize(i, this.mBadgeBorderWidth);
        } else if (i == C0636R.styleable.BGABadgeView_badge_borderColor) {
            this.mBadgeBorderColor = typedArray.getColor(i, this.mBadgeBorderColor);
        } else if (i == C0636R.styleable.BGABadgeView_badge_dragExtra) {
            this.mDragExtra = typedArray.getDimensionPixelSize(i, this.mDragExtra);
        }
    }

    private void afterInitDefaultAndCustomAttrs() {
        this.mBadgePaint.setTextSize(this.mBadgeTextSize);
    }

    public void setBadgeBgColorInt(int i) {
        this.mBadgeBgColor = i;
        this.mBadgeable.postInvalidate();
    }

    public void setBadgeTextColorInt(int i) {
        this.mBadgeTextColor = i;
        this.mBadgeable.postInvalidate();
    }

    public void setBadgeTextSizeSp(int i) {
        if (i >= 0) {
            int sp2px = BGABadgeViewUtil.sp2px(this.mBadgeable.getContext(), i);
            this.mBadgeTextSize = sp2px;
            this.mBadgePaint.setTextSize(sp2px);
            this.mBadgeable.postInvalidate();
        }
    }

    public void setBadgeVerticalMarginDp(int i) {
        if (i >= 0) {
            this.mBadgeVerticalMargin = BGABadgeViewUtil.dp2px(this.mBadgeable.getContext(), i);
            this.mBadgeable.postInvalidate();
        }
    }

    public void setBadgeHorizontalMarginDp(int i) {
        if (i >= 0) {
            this.mBadgeHorizontalMargin = BGABadgeViewUtil.dp2px(this.mBadgeable.getContext(), i);
            this.mBadgeable.postInvalidate();
        }
    }

    public void setBadgePaddingDp(int i) {
        if (i >= 0) {
            this.mBadgePadding = BGABadgeViewUtil.dp2px(this.mBadgeable.getContext(), i);
            this.mBadgeable.postInvalidate();
        }
    }

    public void setBadgeGravity(BadgeGravity badgeGravity) {
        if (badgeGravity != null) {
            this.mBadgeGravity = badgeGravity;
            this.mBadgeable.postInvalidate();
        }
    }

    public void setDraggable(boolean z) {
        this.mDraggable = z;
        this.mBadgeable.postInvalidate();
    }

    public void setIsResumeTravel(boolean z) {
        this.mIsResumeTravel = z;
        this.mBadgeable.postInvalidate();
    }

    public void setBadgeBorderWidthDp(int i) {
        if (i >= 0) {
            this.mBadgeBorderWidth = BGABadgeViewUtil.dp2px(this.mBadgeable.getContext(), i);
            this.mBadgeable.postInvalidate();
        }
    }

    public void setBadgeBorderColorInt(int i) {
        this.mBadgeBorderColor = i;
        this.mBadgeable.postInvalidate();
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x000d, code lost:
        if (r0 != 3) goto L_0x00bf;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action != 0) {
            if (action != 1) {
                if (action == 2) {
                    if (this.mIsDragging) {
                        this.mDropBadgeView.onTouchEvent(motionEvent);
                        return true;
                    }
                }
            }
            if (this.mIsDragging) {
                this.mDropBadgeView.onTouchEvent(motionEvent);
                this.mIsDragging = false;
                return true;
            }
        } else {
            this.mBadgeDragExtraRectF.left = this.mBadgeRectF.left - this.mDragExtra;
            this.mBadgeDragExtraRectF.top = this.mBadgeRectF.top - this.mDragExtra;
            this.mBadgeDragExtraRectF.right = this.mBadgeRectF.right + this.mDragExtra;
            this.mBadgeDragExtraRectF.bottom = this.mBadgeRectF.bottom + this.mDragExtra;
            if ((this.mBadgeBorderWidth == 0 || this.mIsShowDrawable) && this.mDraggable && this.mIsShowBadge && this.mBadgeDragExtraRectF.contains(motionEvent.getX(), motionEvent.getY())) {
                this.mIsDragging = true;
                this.mBadgeable.getParent().requestDisallowInterceptTouchEvent(true);
                Rect rect = new Rect();
                this.mBadgeable.getGlobalVisibleRect(rect);
                this.mDropBadgeView.setStickCenter(rect.left + this.mBadgeRectF.left + (this.mBadgeRectF.width() / 2.0f), rect.top + this.mBadgeRectF.top + (this.mBadgeRectF.height() / 2.0f));
                this.mDropBadgeView.onTouchEvent(motionEvent);
                this.mBadgeable.postInvalidate();
                return true;
            }
        }
        return this.mBadgeable.callSuperOnTouchEvent(motionEvent);
    }

    public void endDragWithDismiss() {
        hiddenBadge();
        BGADragDismissDelegate bGADragDismissDelegate = this.mDelegate;
        if (bGADragDismissDelegate != null) {
            bGADragDismissDelegate.onDismiss(this.mBadgeable);
        }
    }

    public void endDragWithoutDismiss() {
        this.mBadgeable.postInvalidate();
    }

    public void drawBadge(Canvas canvas) {
        if (this.mIsShowBadge && !this.mIsDragging) {
            if (this.mIsShowDrawable) {
                drawDrawableBadge(canvas);
            } else {
                drawTextBadge(canvas);
            }
        }
    }

    private void drawDrawableBadge(Canvas canvas) {
        this.mBadgeRectF.left = (this.mBadgeable.getWidth() - this.mBadgeHorizontalMargin) - this.mBitmap.getWidth();
        this.mBadgeRectF.top = this.mBadgeVerticalMargin;
        int i = C06311.f75x2b938ee4[this.mBadgeGravity.ordinal()];
        if (i == 1) {
            this.mBadgeRectF.top = this.mBadgeVerticalMargin;
        } else if (i == 2) {
            this.mBadgeRectF.top = (this.mBadgeable.getHeight() - this.mBitmap.getHeight()) / 2;
        } else if (i == 3) {
            this.mBadgeRectF.top = (this.mBadgeable.getHeight() - this.mBitmap.getHeight()) - this.mBadgeVerticalMargin;
        }
        canvas.drawBitmap(this.mBitmap, this.mBadgeRectF.left, this.mBadgeRectF.top, this.mBadgePaint);
        RectF rectF = this.mBadgeRectF;
        rectF.right = rectF.left + this.mBitmap.getWidth();
        RectF rectF2 = this.mBadgeRectF;
        rectF2.bottom = rectF2.top + this.mBitmap.getHeight();
    }

    /* renamed from: cn.bingoogolapple.badgeview.BGABadgeViewHelper$1 */
    /* loaded from: classes.dex */
    public static /* synthetic */ class C06311 {

        /* renamed from: $SwitchMap$cn$bingoogolapple$badgeview$BGABadgeViewHelper$BadgeGravity */
        static final /* synthetic */ int[] f75x2b938ee4;

        static {
            int[] iArr = new int[BadgeGravity.values().length];
            f75x2b938ee4 = iArr;
            try {
                iArr[BadgeGravity.RightTop.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f75x2b938ee4[BadgeGravity.RightCenter.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f75x2b938ee4[BadgeGravity.RightBottom.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    private void drawTextBadge(Canvas canvas) {
        String str = !TextUtils.isEmpty(this.mBadgeText) ? this.mBadgeText : "";
        this.mBadgePaint.getTextBounds(str, 0, str.length(), this.mBadgeNumberRect);
        int height = this.mBadgeNumberRect.height() + (this.mBadgePadding * 2);
        int width = (str.length() == 1 || str.length() == 0) ? height : this.mBadgeNumberRect.width() + (this.mBadgePadding * 2);
        this.mBadgeRectF.top = this.mBadgeVerticalMargin;
        this.mBadgeRectF.bottom = this.mBadgeable.getHeight() - this.mBadgeVerticalMargin;
        int i = C06311.f75x2b938ee4[this.mBadgeGravity.ordinal()];
        if (i == 1) {
            RectF rectF = this.mBadgeRectF;
            rectF.bottom = rectF.top + height;
        } else if (i == 2) {
            this.mBadgeRectF.top = (this.mBadgeable.getHeight() - height) / 2;
            RectF rectF2 = this.mBadgeRectF;
            rectF2.bottom = rectF2.top + height;
        } else if (i == 3) {
            RectF rectF3 = this.mBadgeRectF;
            rectF3.top = rectF3.bottom - height;
        }
        this.mBadgeRectF.right = this.mBadgeable.getWidth() - this.mBadgeHorizontalMargin;
        RectF rectF4 = this.mBadgeRectF;
        rectF4.left = rectF4.right - width;
        if (this.mBadgeBorderWidth > 0) {
            this.mBadgePaint.setColor(this.mBadgeBorderColor);
            float f = height / 2;
            canvas.drawRoundRect(this.mBadgeRectF, f, f, this.mBadgePaint);
            this.mBadgePaint.setColor(this.mBadgeBgColor);
            RectF rectF5 = new RectF(this.mBadgeRectF.left + this.mBadgeBorderWidth, this.mBadgeRectF.top + this.mBadgeBorderWidth, this.mBadgeRectF.right - this.mBadgeBorderWidth, this.mBadgeRectF.bottom - this.mBadgeBorderWidth);
            int i2 = this.mBadgeBorderWidth;
            canvas.drawRoundRect(rectF5, (height - (i2 * 2)) / 2, (height - (i2 * 2)) / 2, this.mBadgePaint);
        } else {
            this.mBadgePaint.setColor(this.mBadgeBgColor);
            float f2 = height / 2;
            canvas.drawRoundRect(this.mBadgeRectF, f2, f2, this.mBadgePaint);
        }
        if (!TextUtils.isEmpty(this.mBadgeText)) {
            this.mBadgePaint.setColor(this.mBadgeTextColor);
            canvas.drawText(str, this.mBadgeRectF.left + (width / 2), this.mBadgeRectF.bottom - this.mBadgePadding, this.mBadgePaint);
        }
    }

    public void showCirclePointBadge() {
        showTextBadge(null);
    }

    public void showTextBadge(String str) {
        this.mIsShowDrawable = false;
        this.mBadgeText = str;
        this.mIsShowBadge = true;
        this.mBadgeable.postInvalidate();
    }

    public void hiddenBadge() {
        this.mIsShowBadge = false;
        this.mBadgeable.postInvalidate();
    }

    public boolean isShowBadge() {
        return this.mIsShowBadge;
    }

    public void showDrawable(Bitmap bitmap) {
        this.mBitmap = bitmap;
        this.mIsShowDrawable = true;
        this.mIsShowBadge = true;
        this.mBadgeable.postInvalidate();
    }

    public boolean isShowDrawable() {
        return this.mIsShowDrawable;
    }

    public RectF getBadgeRectF() {
        return this.mBadgeRectF;
    }

    public int getBadgePadding() {
        return this.mBadgePadding;
    }

    public String getBadgeText() {
        return this.mBadgeText;
    }

    public int getBadgeBgColor() {
        return this.mBadgeBgColor;
    }

    public int getBadgeTextColor() {
        return this.mBadgeTextColor;
    }

    public int getBadgeTextSize() {
        return this.mBadgeTextSize;
    }

    public Bitmap getBitmap() {
        return this.mBitmap;
    }

    public void setDragDismissDelegate(BGADragDismissDelegate bGADragDismissDelegate) {
        this.mDelegate = bGADragDismissDelegate;
    }

    public View getRootView() {
        return this.mBadgeable.getRootView();
    }

    public boolean isResumeTravel() {
        return this.mIsResumeTravel;
    }

    public boolean isDragging() {
        return this.mIsDragging;
    }

    public boolean isDraggable() {
        return this.mDraggable;
    }
}
