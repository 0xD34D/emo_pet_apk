.class public Lcom/zyyoona7/wheel/WheelView;
.super Landroid/view/View;
.source "WheelView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zyyoona7/wheel/WheelView$SoundHelper;,
        Lcom/zyyoona7/wheel/WheelView$OnWheelChangedListener;,
        Lcom/zyyoona7/wheel/WheelView$OnItemSelectedListener;,
        Lcom/zyyoona7/wheel/WheelView$DividerType;,
        Lcom/zyyoona7/wheel/WheelView$CurvedArcDirection;,
        Lcom/zyyoona7/wheel/WheelView$TextAlign;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/view/View;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field public static final CURVED_ARC_DIRECTION_CENTER:I = 0x1

.field public static final CURVED_ARC_DIRECTION_LEFT:I = 0x0

.field public static final CURVED_ARC_DIRECTION_RIGHT:I = 0x2

.field private static final DEFAULT_CLICK_CONFIRM:J = 0x78L

.field public static final DEFAULT_CURVED_FACTOR:F = 0.75f

.field private static final DEFAULT_DIVIDER_HEIGHT:F

.field private static final DEFAULT_INTEGER_FORMAT:Ljava/lang/String; = "%02d"

.field private static final DEFAULT_LINE_SPACING:F

.field private static final DEFAULT_NORMAL_TEXT_COLOR:I = -0xbbbbbc

.field private static final DEFAULT_REFRACT_RATIO:F = 1.0f

.field private static final DEFAULT_SCROLL_DURATION:I = 0xfa

.field private static final DEFAULT_SELECTED_TEXT_COLOR:I = -0x1000000

.field private static final DEFAULT_TEXT_BOUNDARY_MARGIN:F

.field private static final DEFAULT_TEXT_SIZE:F

.field private static final DEFAULT_VISIBLE_ITEM:I = 0x5

.field public static final DIVIDER_TYPE_FILL:I = 0x0

.field public static final DIVIDER_TYPE_WRAP:I = 0x1

.field public static final SCROLL_STATE_DRAGGING:I = 0x1

.field public static final SCROLL_STATE_IDLE:I = 0x0

.field public static final SCROLL_STATE_SCROLLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "WheelView"

.field public static final TEXT_ALIGN_CENTER:I = 0x1

.field public static final TEXT_ALIGN_LEFT:I = 0x0

.field public static final TEXT_ALIGN_RIGHT:I = 0x2


# instance fields
.field private isAutoFitTextSize:Z

.field private isCurved:Z

.field private isCyclic:Z

.field private isDrawSelectedRect:Z

.field private isFlingScroll:Z

.field private isForceFinishScroll:Z

.field private isIntegerNeedFormat:Z

.field private isResetSelectedPosition:Z

.field private isShowDivider:Z

.field private isSoundEffect:Z

.field private mBoldTypeface:Landroid/graphics/Typeface;

.field private mCamera:Landroid/graphics/Camera;

.field private mCenterToBaselineY:I

.field private mCenterX:I

.field private mCenterY:I

.field private mClipBottom:I

.field private mClipLeft:I

.field private mClipRight:I

.field private mClipTop:I

.field private mCurrentScrollPosition:I

.field private mCurvedArcDirection:I

.field private mCurvedArcDirectionFactor:F

.field private mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mDividerCap:Landroid/graphics/Paint$Cap;

.field private mDividerColor:I

.field private mDividerOffset:F

.field private mDividerPaddingForWrap:F

.field private mDividerSize:F

.field private mDividerType:I

.field private mDownStartTime:J

.field private mDrawRect:Landroid/graphics/Rect;

.field private mFontMetrics:Landroid/graphics/Paint$FontMetrics;

.field private mIntegerFormat:Ljava/lang/String;

.field private mIsBoldForSelectedItem:Z

.field private mItemHeight:I

.field private mLastTouchY:F

.field private mLineSpacing:F

.field private mMatrix:Landroid/graphics/Matrix;

.field private mMaxFlingVelocity:I

.field private mMaxScrollY:I

.field private mMaxTextWidth:I

.field private mMinFlingVelocity:I

.field private mMinScrollY:I

.field private mNormalTypeface:Landroid/graphics/Typeface;

.field private mOnItemSelectedListener:Lcom/zyyoona7/wheel/WheelView$OnItemSelectedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zyyoona7/wheel/WheelView$OnItemSelectedListener<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mOnWheelChangedListener:Lcom/zyyoona7/wheel/WheelView$OnWheelChangedListener;

.field private mPaint:Landroid/graphics/Paint;

.field private mRefractRatio:F

.field private mScrollOffsetY:I

.field private mScrolledY:I

.field private mScroller:Landroid/widget/Scroller;

.field private mSelectedItemBottomLimit:I

.field private mSelectedItemPosition:I

.field private mSelectedItemTextColor:I

.field private mSelectedItemTopLimit:I

.field private mSelectedRectColor:I

.field private mSoundHelper:Lcom/zyyoona7/wheel/WheelView$SoundHelper;

.field private mStartX:I

.field private mTextAlign:I

.field private mTextBoundaryMargin:F

.field private mTextColor:I

.field private mTextSize:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mVisibleItems:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/high16 v0, 0x40000000    # 2.0f

    .line 50
    invoke-static {v0}, Lcom/zyyoona7/wheel/WheelView;->dp2px(F)F

    move-result v1

    sput v1, Lcom/zyyoona7/wheel/WheelView;->DEFAULT_LINE_SPACING:F

    const/high16 v1, 0x41700000    # 15.0f

    .line 51
    invoke-static {v1}, Lcom/zyyoona7/wheel/WheelView;->sp2px(F)F

    move-result v1

    sput v1, Lcom/zyyoona7/wheel/WheelView;->DEFAULT_TEXT_SIZE:F

    .line 52
    invoke-static {v0}, Lcom/zyyoona7/wheel/WheelView;->dp2px(F)F

    move-result v0

    sput v0, Lcom/zyyoona7/wheel/WheelView;->DEFAULT_TEXT_BOUNDARY_MARGIN:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 53
    invoke-static {v0}, Lcom/zyyoona7/wheel/WheelView;->dp2px(F)F

    move-result v0

    sput v0, Lcom/zyyoona7/wheel/WheelView;->DEFAULT_DIVIDER_HEIGHT:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 218
    invoke-direct {p0, p1, v0}, Lcom/zyyoona7/wheel/WheelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 222
    invoke-direct {p0, p1, p2, v0}, Lcom/zyyoona7/wheel/WheelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 226
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 84
    new-instance p3, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p3, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, Lcom/zyyoona7/wheel/WheelView;->mPaint:Landroid/graphics/Paint;

    .line 122
    sget-object p3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    iput-object p3, p0, Lcom/zyyoona7/wheel/WheelView;->mDividerCap:Landroid/graphics/Paint$Cap;

    .line 169
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p3, p0, Lcom/zyyoona7/wheel/WheelView;->mDataList:Ljava/util/List;

    const/4 p3, 0x0

    .line 172
    iput-boolean p3, p0, Lcom/zyyoona7/wheel/WheelView;->isResetSelectedPosition:Z

    .line 187
    iput p3, p0, Lcom/zyyoona7/wheel/WheelView;->mScrolledY:I

    .line 193
    iput-boolean p3, p0, Lcom/zyyoona7/wheel/WheelView;->isForceFinishScroll:Z

    .line 202
    iput-boolean p3, p0, Lcom/zyyoona7/wheel/WheelView;->mIsBoldForSelectedItem:Z

    const/4 v0, 0x0

    .line 204
    iput-object v0, p0, Lcom/zyyoona7/wheel/WheelView;->mNormalTypeface:Landroid/graphics/Typeface;

    .line 206
    iput-object v0, p0, Lcom/zyyoona7/wheel/WheelView;->mBoldTypeface:Landroid/graphics/Typeface;

    .line 215
    iput-boolean p3, p0, Lcom/zyyoona7/wheel/WheelView;->isSoundEffect:Z

    .line 227
    invoke-direct {p0, p1, p2}, Lcom/zyyoona7/wheel/WheelView;->initAttrsAndDefault(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 228
    invoke-direct {p0, p1}, Lcom/zyyoona7/wheel/WheelView;->initValue(Landroid/content/Context;)V

    return-void
.end method

.method private adjustVisibleItems(I)I
    .locals 0

    .line 1714
    div-int/lit8 p1, p1, 0x2

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    return p1
.end method

.method private calculateDistanceToEndPoint(I)I
    .locals 3

    .line 1107
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/zyyoona7/wheel/WheelView;->mItemHeight:I

    div-int/lit8 v2, v1, 0x2

    if-le v0, v2, :cond_1

    .line 1108
    iget v0, p0, Lcom/zyyoona7/wheel/WheelView;->mScrollOffsetY:I

    if-gez v0, :cond_0

    neg-int v0, v1

    sub-int/2addr v0, p1

    return v0

    :cond_0
    sub-int/2addr v1, p1

    return v1

    :cond_1
    neg-int p1, p1

    return p1
.end method

.method private calculateDrawStart()V
    .locals 3

    .line 416
    iget v0, p0, Lcom/zyyoona7/wheel/WheelView;->mTextAlign:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 425
    invoke-virtual {p0}, Lcom/zyyoona7/wheel/WheelView;->getWidth()I

    move-result v0

    div-int/2addr v0, v1

    iput v0, p0, Lcom/zyyoona7/wheel/WheelView;->mStartX:I

    goto :goto_0

    .line 421
    :cond_0
    invoke-virtual {p0}, Lcom/zyyoona7/wheel/WheelView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/zyyoona7/wheel/WheelView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/zyyoona7/wheel/WheelView;->mTextBoundaryMargin:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/zyyoona7/wheel/WheelView;->mStartX:I

    goto :goto_0

    .line 418
    :cond_1
    invoke-virtual {p0}, Lcom/zyyoona7/wheel/WheelView;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/zyyoona7/wheel/WheelView;->mTextBoundaryMargin:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/zyyoona7/wheel/WheelView;->mStartX:I

    .line 430
    :goto_0
    iget-object v0, p0, Lcom/zyyoona7/wheel/WheelView;->mFontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    iget-object v1, p0, Lcom/zyyoona7/wheel/WheelView;->mFontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget-object v2, p0, Lcom/zyyoona7/wheel/WheelView;->mFontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v2, v2, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/zyyoona7/wheel/WheelView;->mCenterToBaselineY:I

    return-void
.end method

.method private calculateItemDistance(I)I
    .locals 1

    .line 1821
    iget v0, p0, Lcom/zyyoona7/wheel/WheelView;->mItemHeight:I

    mul-int/2addr p1, v0

    iget v0, p0, Lcom/zyyoona7/wheel/WheelView;->mScrollOffsetY:I

    sub-int/2addr p1, v0

    return p1
.end method

.method private calculateLimitY()V
    .locals 2

    .line 437
    iget-boolean v0, p0, Lcom/zyyoona7/wheel/WheelView;->isCyclic:Z

    if-eqz v0, :cond_0

    const/high16 v1, -0x80000000

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput v1, p0, Lcom/zyyoona7/wheel/WheelView;->mMinScrollY:I

    if-eqz v0, :cond_1

    const v0, 0x7fffffff

    goto :goto_1

    .line 439
    :cond_1
    iget-object v0, p0, Lcom/zyyoona7/wheel/WheelView;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/zyyoona7/wheel/WheelView;->mItemHeight:I

    mul-int/2addr v0, v1

    :goto_1
    iput v0, p0, Lcom/zyyoona7/wheel/WheelView;->mMaxScrollY:I

    return-void
.end method

.method private calculateTextSize()V
    .locals 3

    .line 340
    iget-object v0, p0, Lcom/zyyoona7/wheel/WheelView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/zyyoona7/wheel/WheelView;->mTextSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    const/4 v0, 0x0

    .line 341
    :goto_0
    iget-object v1, p0, Lcom/zyyoona7/wheel/WheelView;->mDataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 342
    iget-object v1, p0, Lcom/zyyoona7/wheel/WheelView;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/zyyoona7/wheel/WheelView;->mDataList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/zyyoona7/wheel/WheelView;->getDataText(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    .line 343
    iget v2, p0, Lcom/zyyoona7/wheel/WheelView;->mMaxTextWidth:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/zyyoona7/wheel/WheelView;->mMaxTextWidth:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/zyyoona7/wheel/WheelView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/zyyoona7/wheel/WheelView;->mFontMetrics:Landroid/graphics/Paint$FontMetrics;

    .line 348
    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget-object v1, p0, Lcom/zyyoona7/wheel/WheelView;->mFontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/zyyoona7/wheel/WheelView;->mLineSpacing:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/zyyoona7/wheel/WheelView;->mItemHeight:I

    return-void
.end method

.method private changeTypefaceIfBoldForSelectedItem()V
    .locals 2

    .line 851
    iget-boolean v0, p0, Lcom/zyyoona7/wheel/WheelView;->mIsBoldForSelectedItem:Z

    if-eqz v0, :cond_0

    .line 852
    iget-object v0, p0, Lcom/zyyoona7/wheel/WheelView;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/zyyoona7/wheel/WheelView;->mNormalTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_0
    return-void
.end method

.method private clipAndDraw2DText(Landroid/graphics/Canvas;Ljava/lang/String;IIII)V
    .locals 9

    .line 612
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 613
    iget v0, p0, Lcom/zyyoona7/wheel/WheelView;->mClipLeft:I

    iget v1, p0, Lcom/zyyoona7/wheel/WheelView;->mClipRight:I

    invoke-virtual {p1, v0, p3, v1, p4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 614
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    iget p3, p0, Lcom/zyyoona7/wheel/WheelView;->mStartX:I

    int-to-float v6, p3

    iget p3, p0, Lcom/zyyoona7/wheel/WheelView;->mCenterY:I

    add-int/2addr p3, p5

    sub-int/2addr p3, p6

    int-to-float v7, p3

    iget-object v8, p0, Lcom/zyyoona7/wheel/WheelView;->mPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 615
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private clipAndDraw3DText(Landroid/graphics/Canvas;Ljava/lang/String;IIFFFI)V
    .locals 7

    .line 808
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 809
    iget v0, p0, Lcom/zyyoona7/wheel/WheelView;->mClipLeft:I

    iget v1, p0, Lcom/zyyoona7/wheel/WheelView;->mClipRight:I

    invoke-virtual {p1, v0, p3, v1, p4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p5

    move v4, p6

    move v5, p7

    move v6, p8

    .line 810
    invoke-direct/range {v0 .. v6}, Lcom/zyyoona7/wheel/WheelView;->draw3DText(Landroid/graphics/Canvas;Ljava/lang/String;FFFI)V

    .line 811
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private dividedItemHeight()I
    .locals 1

    .line 1203
    iget v0, p0, Lcom/zyyoona7/wheel/WheelView;->mItemHeight:I

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method private doScroll(I)V
    .locals 1

    .line 1025
    iget v0, p0, Lcom/zyyoona7/wheel/WheelView;->mScrollOffsetY:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/zyyoona7/wheel/WheelView;->mScrollOffsetY:I

    .line 1026
    iget-boolean p1, p0, Lcom/zyyoona7/wheel/WheelView;->isCyclic:Z

    if-nez p1, :cond_1

    .line 1028
    iget p1, p0, Lcom/zyyoona7/wheel/WheelView;->mMinScrollY:I

    if-ge v0, p1, :cond_0

    .line 1029
    iput p1, p0, Lcom/zyyoona7/wheel/WheelView;->mScrollOffsetY:I

    goto :goto_0

    .line 1030
    :cond_0
    iget p1, p0, Lcom/zyyoona7/wheel/WheelView;->mMaxScrollY:I

    if-le v0, p1, :cond_1

    .line 1031
    iput p1, p0, Lcom/zyyoona7/wheel/WheelView;->mScrollOffsetY:I

    :cond_1
    :goto_0
    return-void
.end method

.method protected static dp2px(F)F
    .locals 2

    .line 2273
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p0, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    return p0
.end method

.method private draw3DItem(Landroid/graphics/Canvas;II)V
    .locals 16

    move-object/from16 v9, p0

    move/from16 v0, p2

    .line 692
    invoke-direct {v9, v0}, Lcom/zyyoona7/wheel/WheelView;->getDataByIndex(I)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_0

    return-void

    .line 697
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/zyyoona7/wheel/WheelView;->getHeight()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/zyyoona7/wheel/WheelView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual/range {p0 .. p0}, Lcom/zyyoona7/wheel/WheelView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 699
    iget v2, v9, Lcom/zyyoona7/wheel/WheelView;->mScrollOffsetY:I

    invoke-direct/range {p0 .. p0}, Lcom/zyyoona7/wheel/WheelView;->dividedItemHeight()I

    move-result v3

    div-int/2addr v2, v3

    sub-int/2addr v0, v2

    iget v2, v9, Lcom/zyyoona7/wheel/WheelView;->mItemHeight:I

    mul-int/2addr v0, v2

    sub-int v0, v0, p3

    .line 702
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-double v2, v2

    int-to-double v4, v1

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v6, v4

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v11

    cmpl-double v1, v2, v6

    if-lez v1, :cond_1

    return-void

    :cond_1
    int-to-double v1, v0

    div-double/2addr v1, v4

    neg-double v6, v1

    .line 706
    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    double-to-float v11, v6

    .line 708
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v6, v4

    double-to-float v12, v6

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 710
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    sub-double/2addr v6, v13

    mul-double/2addr v6, v4

    double-to-float v13, v6

    .line 712
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    const-wide v3, 0x406fe00000000000L    # 255.0

    mul-double/2addr v1, v3

    double-to-int v14, v1

    .line 715
    iget v15, v9, Lcom/zyyoona7/wheel/WheelView;->mStartX:I

    .line 717
    iget-boolean v1, v9, Lcom/zyyoona7/wheel/WheelView;->isAutoFitTextSize:Z

    if-eqz v1, :cond_2

    invoke-direct {v9, v10}, Lcom/zyyoona7/wheel/WheelView;->remeasureTextSize(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_2
    iget v1, v9, Lcom/zyyoona7/wheel/WheelView;->mCenterToBaselineY:I

    :goto_0
    move v8, v1

    .line 718
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/16 v2, 0xff

    if-gtz v1, :cond_3

    .line 720
    iget-object v0, v9, Lcom/zyyoona7/wheel/WheelView;->mPaint:Landroid/graphics/Paint;

    iget v1, v9, Lcom/zyyoona7/wheel/WheelView;->mSelectedItemTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 721
    iget-object v0, v9, Lcom/zyyoona7/wheel/WheelView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 722
    iget v3, v9, Lcom/zyyoona7/wheel/WheelView;->mSelectedItemTopLimit:I

    iget v4, v9, Lcom/zyyoona7/wheel/WheelView;->mSelectedItemBottomLimit:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v10

    move v5, v11

    move v6, v12

    move v7, v13

    invoke-direct/range {v0 .. v8}, Lcom/zyyoona7/wheel/WheelView;->clipAndDraw3DText(Landroid/graphics/Canvas;Ljava/lang/String;IIFFFI)V

    goto/16 :goto_1

    :cond_3
    if-lez v0, :cond_4

    .line 724
    iget v1, v9, Lcom/zyyoona7/wheel/WheelView;->mItemHeight:I

    if-ge v0, v1, :cond_4

    .line 726
    iget-object v0, v9, Lcom/zyyoona7/wheel/WheelView;->mPaint:Landroid/graphics/Paint;

    iget v1, v9, Lcom/zyyoona7/wheel/WheelView;->mSelectedItemTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 727
    iget-object v0, v9, Lcom/zyyoona7/wheel/WheelView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 728
    iget v3, v9, Lcom/zyyoona7/wheel/WheelView;->mSelectedItemTopLimit:I

    iget v4, v9, Lcom/zyyoona7/wheel/WheelView;->mSelectedItemBottomLimit:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v10

    move v5, v11

    move v6, v12

    move v7, v13

    invoke-direct/range {v0 .. v8}, Lcom/zyyoona7/wheel/WheelView;->clipAndDraw3DText(Landroid/graphics/Canvas;Ljava/lang/String;IIFFFI)V

    .line 731
    iget-object v0, v9, Lcom/zyyoona7/wheel/WheelView;->mPaint:Landroid/graphics/Paint;

    iget v1, v9, Lcom/zyyoona7/wheel/WheelView;->mTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 732
    iget-object v0, v9, Lcom/zyyoona7/wheel/WheelView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v14}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 734
    iget-object v0, v9, Lcom/zyyoona7/wheel/WheelView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v14

    .line 735
    iget-object v0, v9, Lcom/zyyoona7/wheel/WheelView;->mPaint:Landroid/graphics/Paint;

    iget v1, v9, Lcom/zyyoona7/wheel/WheelView;->mRefractRatio:F

    mul-float/2addr v1, v14

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 737
    invoke-direct/range {p0 .. p0}, Lcom/zyyoona7/wheel/WheelView;->changeTypefaceIfBoldForSelectedItem()V

    .line 739
    invoke-direct/range {p0 .. p0}, Lcom/zyyoona7/wheel/WheelView;->recalculateCenterToBaselineY()I

    move-result v8

    .line 740
    iget v3, v9, Lcom/zyyoona7/wheel/WheelView;->mSelectedItemBottomLimit:I

    iget v4, v9, Lcom/zyyoona7/wheel/WheelView;->mClipBottom:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/zyyoona7/wheel/WheelView;->clipAndDraw3DText(Landroid/graphics/Canvas;Ljava/lang/String;IIFFFI)V

    .line 742
    iget-object v0, v9, Lcom/zyyoona7/wheel/WheelView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v14}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 744
    invoke-direct/range {p0 .. p0}, Lcom/zyyoona7/wheel/WheelView;->resetTypefaceIfBoldForSelectedItem()V

    goto/16 :goto_1

    :cond_4
    if-gez v0, :cond_5

    .line 745
    iget v1, v9, Lcom/zyyoona7/wheel/WheelView;->mItemHeight:I

    neg-int v1, v1

    if-le v0, v1, :cond_5

    .line 747
    iget-object v0, v9, Lcom/zyyoona7/wheel/WheelView;->mPaint:Landroid/graphics/Paint;

    iget v1, v9, Lcom/zyyoona7/wheel/WheelView;->mSelectedItemTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 748
    iget-object v0, v9, Lcom/zyyoona7/wheel/WheelView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 749
    iget v3, v9, Lcom/zyyoona7/wheel/WheelView;->mSelectedItemTopLimit:I

    iget v4, v9, Lcom/zyyoona7/wheel/WheelView;->mSelectedItemBottomLimit:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v10

    move v5, v11

    move v6, v12

    move v7, v13

    invoke-direct/range {v0 .. v8}, Lcom/zyyoona7/wheel/WheelView;->clipAndDraw3DText(Landroid/graphics/Canvas;Ljava/lang/String;IIFFFI)V

    .line 752
    iget-object v0, v9, Lcom/zyyoona7/wheel/WheelView;->mPaint:Landroid/graphics/Paint;

    iget v1, v9, Lcom/zyyoona7/wheel/WheelView;->mTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 753
    iget-object v0, v9, Lcom/zyyoona7/wheel/WheelView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v14}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 756
    iget-object v0, v9, Lcom/zyyoona7/wheel/WheelView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v14

    .line 757
    iget-object v0, v9, Lcom/zyyoona7/wheel/WheelView;->mPaint:Landroid/graphics/Paint;

    iget v1, v9, Lcom/zyyoona7/wheel/WheelView;->mRefractRatio:F

    mul-float/2addr v1, v14

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 759
    invoke-direct/range {p0 .. p0}, Lcom/zyyoona7/wheel/WheelView;->changeTypefaceIfBoldForSelectedItem()V

    .line 761
    invoke-direct/range {p0 .. p0}, Lcom/zyyoona7/wheel/WheelView;->recalculateCenterToBaselineY()I

    move-result v8

    .line 762
    iget v3, v9, Lcom/zyyoona7/wheel/WheelView;->mClipTop:I

    iget v4, v9, Lcom/zyyoona7/wheel/WheelView;->mSelectedItemTopLimit:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/zyyoona7/wheel/WheelView;->clipAndDraw3DText(Landroid/graphics/Canvas;Ljava/lang/String;IIFFFI)V

    .line 764
    iget-object v0, v9, Lcom/zyyoona7/wheel/WheelView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v14}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 766
    invoke-direct/range {p0 .. p0}, Lcom/zyyoona7/wheel/WheelView;->resetTypefaceIfBoldForSelectedItem()V

    goto :goto_1

    .line 769
    :cond_5
    iget-object v0, v9, Lcom/zyyoona7/wheel/WheelView;->mPaint:Landroid/graphics/Paint;

    iget v1, v9, Lcom/zyyoona7/wheel/WheelView;->mTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 770
    iget-object v0, v9, Lcom/zyyoona7/wheel/WheelView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v14}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 773
    iget-object v0, v9, Lcom/zyyoona7/wheel/WheelView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v14

    .line 774
    iget-object v0, v9, Lcom/zyyoona7/wheel/WheelView;->mPaint:Landroid/graphics/Paint;

    iget v1, v9, Lcom/zyyoona7/wheel/WheelView;->mRefractRatio:F

    mul-float/2addr v1, v14

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 776
    invoke-direct/range {p0 .. p0}, Lcom/zyyoona7/wheel/WheelView;->changeTypefaceIfBoldForSelectedItem()V

    .line 778
    invoke-direct/range {p0 .. p0}, Lcom/zyyoona7/wheel/WheelView;->recalculateCenterToBaselineY()I

    move-result v8

    .line 779
    iget v3, v9, Lcom/zyyoona7/wheel/WheelView;->mClipTop:I

    iget v4, v9, Lcom/zyyoona7/wheel/WheelView;->mClipBottom:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v10

    move v5, v11

    move v6, v12

    move v7, v13

    invoke-direct/range {v0 .. v8}, Lcom/zyyoona7/wheel/WheelView;->clipAndDraw3DText(Landroid/graphics/Canvas;Ljava/lang/String;IIFFFI)V

    .line 781
    iget-object v0, v9, Lcom/zyyoona7/wheel/WheelView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v14}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 783
    invoke-direct/range {p0 .. p0}, Lcom/zyyoona7/wheel/WheelView;->resetTypefaceIfBoldForSelectedItem()V

    .line 786
    :goto_1
    iget-boolean v0, v9, Lcom/zyyoona7/wheel/WheelView;->isAutoFitTextSize:Z

    if-eqz v0, :cond_6

    .line 788
    iget-object v0, v9, Lcom/zyyoona7/wheel/WheelView;->mPaint:Landroid/graphics/Paint;

    iget v1, v9, Lcom/zyyoona7/wheel/WheelView;->mTextSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 789
    iput v15, v9, Lcom/zyyoona7/wheel/WheelView;->mStartX:I

    :cond_6
    return-void
.end method

.method private draw3DText(Landroid/graphics/Canvas;Ljava/lang/String;FFFI)V
    .locals 7

    .line 826
    iget-object v0, p0, Lcom/zyyoona7/wheel/WheelView;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v0}, Landroid/graphics/Camera;->save()V

    .line 827
    iget-object v0, p0, Lcom/zyyoona7/wheel/WheelView;->mCamera:Landroid/graphics/Camera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p5}, Landroid/graphics/Camera;->translate(FFF)V

    .line 828
    iget-object p5, p0, Lcom/zyyoona7/wheel/WheelView;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {p5, p3}, Landroid/graphics/Camera;->rotateX(F)V

    .line 829
    iget-object p3, p0, Lcom/zyyoona7/wheel/WheelView;->mCamera:Landroid/graphics/Camera;

    iget-object p5, p0, Lcom/zyyoona7/wheel/WheelView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p3, p5}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 830
    iget-object p3, p0, Lcom/zyyoona7/wheel/WheelView;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {p3}, Landroid/graphics/Camera;->restore()V

    .line 833
    iget p3, p0, Lcom/zyyoona7/wheel/WheelView;->mCenterX:I

    int-to-float p5, p3

    .line 835
    iget v0, p0, Lcom/zyyoona7/wheel/WheelView;->mCurvedArcDirection:I

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_0

    int-to-float p3, p3

    .line 836
    iget p5, p0, Lcom/zyyoona7/wheel/WheelView;->mCurvedArcDirectionFactor:F

    add-float/2addr p5, v1

    mul-float/2addr p5, p3

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    int-to-float p3, p3

    .line 838
    iget p5, p0, Lcom/zyyoona7/wheel/WheelView;->mCurvedArcDirectionFactor:F

    sub-float/2addr v1, p5

    mul-float p5, p3, v1

    .line 841
    :cond_1
    :goto_0
    iget p3, p0, Lcom/zyyoona7/wheel/WheelView;->mCenterY:I

    int-to-float p3, p3

    add-float/2addr p3, p4

    .line 842
    iget-object p4, p0, Lcom/zyyoona7/wheel/WheelView;->mMatrix:Landroid/graphics/Matrix;

    neg-float v0, p5

    neg-float v1, p3

    invoke-virtual {p4, v0, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 843
    iget-object p4, p0, Lcom/zyyoona7/wheel/WheelView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p4, p5, p3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 845
    iget-object p4, p0, Lcom/zyyoona7/wheel/WheelView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, p4}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    const/4 v2, 0x0

    .line 846
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    iget p4, p0, Lcom/zyyoona7/wheel/WheelView;->mStartX:I

    int-to-float v4, p4

    int-to-float p4, p6

    sub-float v5, p3, p4

    iget-object v6, p0, Lcom/zyyoona7/wheel/WheelView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move-object v1, p2

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawDivider(Landroid/graphics/Canvas;)V
    .locals 10

    .line 502
    iget-boolean v0, p0, Lcom/zyyoona7/wheel/WheelView;->isShowDivider:Z

    if-eqz v0, :cond_3

    .line 503
    iget-object v0, p0, Lcom/zyyoona7/wheel/WheelView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/zyyoona7/wheel/WheelView;->mDividerColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 504
    iget-object v0, p0, Lcom/zyyoona7/wheel/WheelView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    .line 505
    iget-object v1, p0, Lcom/zyyoona7/wheel/WheelView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 506
    iget-object v1, p0, Lcom/zyyoona7/wheel/WheelView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 507
    iget-object v1, p0, Lcom/zyyoona7/wheel/WheelView;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/zyyoona7/wheel/WheelView;->mDividerSize:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 508
    iget v1, p0, Lcom/zyyoona7/wheel/WheelView;->mDividerType:I

    if-nez v1, :cond_0

    .line 509
    iget v1, p0, Lcom/zyyoona7/wheel/WheelView;->mClipLeft:I

    int-to-float v3, v1

    iget v1, p0, Lcom/zyyoona7/wheel/WheelView;->mSelectedItemTopLimit:I

    int-to-float v4, v1

    iget v2, p0, Lcom/zyyoona7/wheel/WheelView;->mClipRight:I

    int-to-float v5, v2

    int-to-float v6, v1

    iget-object v7, p0, Lcom/zyyoona7/wheel/WheelView;->mPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 510
    iget v1, p0, Lcom/zyyoona7/wheel/WheelView;->mClipLeft:I

    int-to-float v3, v1

    iget v1, p0, Lcom/zyyoona7/wheel/WheelView;->mSelectedItemBottomLimit:I

    int-to-float v4, v1

    iget v2, p0, Lcom/zyyoona7/wheel/WheelView;->mClipRight:I

    int-to-float v5, v2

    int-to-float v6, v1

    iget-object v7, p0, Lcom/zyyoona7/wheel/WheelView;->mPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 513
    :cond_0
    iget v1, p0, Lcom/zyyoona7/wheel/WheelView;->mCenterX:I

    iget v2, p0, Lcom/zyyoona7/wheel/WheelView;->mMaxTextWidth:I

    div-int/lit8 v3, v2, 0x2

    sub-int v3, v1, v3

    int-to-float v3, v3

    iget v4, p0, Lcom/zyyoona7/wheel/WheelView;->mDividerPaddingForWrap:F

    sub-float/2addr v3, v4

    float-to-int v3, v3

    .line 514
    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    add-float/2addr v1, v4

    float-to-int v1, v1

    .line 516
    iget v2, p0, Lcom/zyyoona7/wheel/WheelView;->mClipLeft:I

    if-ge v3, v2, :cond_1

    move v3, v2

    .line 517
    :cond_1
    iget v2, p0, Lcom/zyyoona7/wheel/WheelView;->mClipRight:I

    if-le v1, v2, :cond_2

    move v1, v2

    :cond_2
    int-to-float v2, v3

    .line 518
    iget v3, p0, Lcom/zyyoona7/wheel/WheelView;->mSelectedItemTopLimit:I

    int-to-float v6, v3

    int-to-float v1, v1

    int-to-float v8, v3

    iget-object v9, p0, Lcom/zyyoona7/wheel/WheelView;->mPaint:Landroid/graphics/Paint;

    move-object v4, p1

    move v5, v2

    move v7, v1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 519
    iget v3, p0, Lcom/zyyoona7/wheel/WheelView;->mSelectedItemBottomLimit:I

    int-to-float v6, v3

    int-to-float v8, v3

    iget-object v9, p0, Lcom/zyyoona7/wheel/WheelView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 521
    :goto_0
    iget-object p1, p0, Lcom/zyyoona7/wheel/WheelView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :cond_3
    return-void
.end method

.method private drawItem(Landroid/graphics/Canvas;II)V
    .locals 10

    .line 533
    invoke-direct {p0, p2}, Lcom/zyyoona7/wheel/WheelView;->getDataByIndex(I)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_0

    return-void

    .line 539
    :cond_0
    iget v0, p0, Lcom/zyyoona7/wheel/WheelView;->mScrollOffsetY:I

    invoke-direct {p0}, Lcom/zyyoona7/wheel/WheelView;->dividedItemHeight()I

    move-result v1

    div-int/2addr v0, v1

    sub-int/2addr p2, v0

    iget v0, p0, Lcom/zyyoona7/wheel/WheelView;->mItemHeight:I

    mul-int/2addr p2, v0

    sub-int/2addr p2, p3

    .line 541
    iget p3, p0, Lcom/zyyoona7/wheel/WheelView;->mStartX:I

    .line 543
    iget-boolean v0, p0, Lcom/zyyoona7/wheel/WheelView;->isAutoFitTextSize:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, v7}, Lcom/zyyoona7/wheel/WheelView;->remeasureTextSize(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/zyyoona7/wheel/WheelView;->mCenterToBaselineY:I

    :goto_0
    move v8, v0

    .line 545
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-gtz v0, :cond_2

    .line 547
    iget-object v0, p0, Lcom/zyyoona7/wheel/WheelView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/zyyoona7/wheel/WheelView;->mSelectedItemTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 548
    iget v3, p0, Lcom/zyyoona7/wheel/WheelView;->mSelectedItemTopLimit:I

    iget v4, p0, Lcom/zyyoona7/wheel/WheelView;->mSelectedItemBottomLimit:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, v7

    move v5, p2

    move v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/zyyoona7/wheel/WheelView;->clipAndDraw2DText(Landroid/graphics/Canvas;Ljava/lang/String;IIII)V

    goto/16 :goto_1

    :cond_2
    if-lez p2, :cond_3

    .line 549
    iget v0, p0, Lcom/zyyoona7/wheel/WheelView;->mItemHeight:I

    if-ge p2, v0, :cond_3

    .line 551
    iget-object v0, p0, Lcom/zyyoona7/wheel/WheelView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/zyyoona7/wheel/WheelView;->mSelectedItemTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 552
    iget v3, p0, Lcom/zyyoona7/wheel/WheelView;->mSelectedItemTopLimit:I

    iget v4, p0, Lcom/zyyoona7/wheel/WheelView;->mSelectedItemBottomLimit:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, v7

    move v5, p2

    move v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/zyyoona7/wheel/WheelView;->clipAndDraw2DText(Landroid/graphics/Canvas;Ljava/lang/String;IIII)V

    .line 554
    iget-object v0, p0, Lcom/zyyoona7/wheel/WheelView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/zyyoona7/wheel/WheelView;->mTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 556
    iget-object v0, p0, Lcom/zyyoona7/wheel/WheelView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v9

    .line 557
    iget-object v0, p0, Lcom/zyyoona7/wheel/WheelView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/zyyoona7/wheel/WheelView;->mRefractRatio:F

    mul-float/2addr v1, v9

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 559
    invoke-direct {p0}, Lcom/zyyoona7/wheel/WheelView;->changeTypefaceIfBoldForSelectedItem()V

    .line 560
    iget v3, p0, Lcom/zyyoona7/wheel/WheelView;->mSelectedItemBottomLimit:I

    iget v4, p0, Lcom/zyyoona7/wheel/WheelView;->mClipBottom:I

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/zyyoona7/wheel/WheelView;->clipAndDraw2DText(Landroid/graphics/Canvas;Ljava/lang/String;IIII)V

    .line 561
    iget-object p1, p0, Lcom/zyyoona7/wheel/WheelView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 563
    invoke-direct {p0}, Lcom/zyyoona7/wheel/WheelView;->resetTypefaceIfBoldForSelectedItem()V

    goto/16 :goto_1

    :cond_3
    if-gez p2, :cond_4

    .line 564
    iget v0, p0, Lcom/zyyoona7/wheel/WheelView;->mItemHeight:I

    neg-int v0, v0

    if-le p2, v0, :cond_4

    .line 566
    iget-object v0, p0, Lcom/zyyoona7/wheel/WheelView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/zyyoona7/wheel/WheelView;->mSelectedItemTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 567
    iget v3, p0, Lcom/zyyoona7/wheel/WheelView;->mSelectedItemTopLimit:I

    iget v4, p0, Lcom/zyyoona7/wheel/WheelView;->mSelectedItemBottomLimit:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, v7

    move v5, p2

    move v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/zyyoona7/wheel/WheelView;->clipAndDraw2DText(Landroid/graphics/Canvas;Ljava/lang/String;IIII)V

    .line 569
    iget-object v0, p0, Lcom/zyyoona7/wheel/WheelView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/zyyoona7/wheel/WheelView;->mTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 571
    iget-object v0, p0, Lcom/zyyoona7/wheel/WheelView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v9

    .line 572
    iget-object v0, p0, Lcom/zyyoona7/wheel/WheelView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/zyyoona7/wheel/WheelView;->mRefractRatio:F

    mul-float/2addr v1, v9

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 574
    invoke-direct {p0}, Lcom/zyyoona7/wheel/WheelView;->changeTypefaceIfBoldForSelectedItem()V

    .line 575
    iget v3, p0, Lcom/zyyoona7/wheel/WheelView;->mClipTop:I

    iget v4, p0, Lcom/zyyoona7/wheel/WheelView;->mSelectedItemTopLimit:I

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/zyyoona7/wheel/WheelView;->clipAndDraw2DText(Landroid/graphics/Canvas;Ljava/lang/String;IIII)V

    .line 576
    iget-object p1, p0, Lcom/zyyoona7/wheel/WheelView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 578
    invoke-direct {p0}, Lcom/zyyoona7/wheel/WheelView;->resetTypefaceIfBoldForSelectedItem()V

    goto :goto_1

    .line 581
    :cond_4
    iget-object v0, p0, Lcom/zyyoona7/wheel/WheelView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/zyyoona7/wheel/WheelView;->mTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 583
    iget-object v0, p0, Lcom/zyyoona7/wheel/WheelView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v9

    .line 584
    iget-object v0, p0, Lcom/zyyoona7/wheel/WheelView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/zyyoona7/wheel/WheelView;->mRefractRatio:F

    mul-float/2addr v1, v9

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 586
    invoke-direct {p0}, Lcom/zyyoona7/wheel/WheelView;->changeTypefaceIfBoldForSelectedItem()V

    .line 587
    iget v3, p0, Lcom/zyyoona7/wheel/WheelView;->mClipTop:I

    iget v4, p0, Lcom/zyyoona7/wheel/WheelView;->mClipBottom:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, v7

    move v5, p2

    move v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/zyyoona7/wheel/WheelView;->clipAndDraw2DText(Landroid/graphics/Canvas;Ljava/lang/String;IIII)V

    .line 588
    iget-object p1, p0, Lcom/zyyoona7/wheel/WheelView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 590
    invoke-direct {p0}, Lcom/zyyoona7/wheel/WheelView;->resetTypefaceIfBoldForSelectedItem()V

    .line 593
    :goto_1
    iget-boolean p1, p0, Lcom/zyyoona7/wheel/WheelView;->isAutoFitTextSize:Z

    if-eqz p1, :cond_5

    .line 595
    iget-object p1, p0, Lcom/zyyoona7/wheel/WheelView;->mPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/zyyoona7/wheel/WheelView;->mTextSize:F

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 596
    iput p3, p0, Lcom/zyyoona7/wheel/WheelView;->mStartX:I

    :cond_5
    return-void
.end method

.method private drawSelectedRect(Landroid/graphics/Canvas;)V
    .locals 7

    .line 490
    iget-boolean v0, p0, Lcom/zyyoona7/wheel/WheelView;->isDrawSelectedRect:Z

    if-eqz v0, :cond_0

    .line 491
    iget-object v0, p0, Lcom/zyyoona7/wheel/WheelView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/zyyoona7/wheel/WheelView;->mSelectedRectColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 492
    iget v0, p0, Lcom/zyyoona7/wheel/WheelView;->mClipLeft:I

    int-to-float v2, v0

    iget v0, p0, Lcom/zyyoona7/wheel/WheelView;->mSelectedItemTopLimit:I

    int-to-float v3, v0

    iget v0, p0, Lcom/zyyoona7/wheel/WheelView;->mClipRight:I

    int-to-float v4, v0

    iget v0, p0, Lcom/zyyoona7/wheel/WheelView;->mSelectedItemBottomLimit:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/zyyoona7/wheel/WheelView;->mPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private getCurrentPosition()I
    .locals 2

    .line 1180
    iget-object v0, p0, Lcom/zyyoona7/wheel/WheelView;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 1184
    :cond_0
    iget v0, p0, Lcom/zyyoona7/wheel/WheelView;->mScrollOffsetY:I

    if-gez v0, :cond_1

    .line 1185
    iget v1, p0, Lcom/zyyoona7/wheel/WheelView;->mItemHeight:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    invoke-direct {p0}, Lcom/zyyoona7/wheel/WheelView;->dividedItemHeight()I

    move-result v1

    div-int/2addr v0, v1

    goto :goto_0

    .line 1187
    :cond_1
    iget v1, p0, Lcom/zyyoona7/wheel/WheelView;->mItemHeight:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    invoke-direct {p0}, Lcom/zyyoona7/wheel/WheelView;->dividedItemHeight()I

    move-result v1

    div-int/2addr v0, v1

    .line 1189
    :goto_0
    iget-object v1, p0, Lcom/zyyoona7/wheel/WheelView;->mDataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr v0, v1

    if-gez v0, :cond_2

    .line 1191
    iget-object v1, p0, Lcom/zyyoona7/wheel/WheelView;->mDataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    return v0
.end method

.method private getDataByIndex(I)Ljava/lang/String;
    .locals 3

    .line 869
    iget-object v0, p0, Lcom/zyyoona7/wheel/WheelView;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 875
    :cond_0
    iget-boolean v2, p0, Lcom/zyyoona7/wheel/WheelView;->isCyclic:Z

    if-eqz v2, :cond_2

    .line 876
    rem-int/2addr p1, v0

    if-gez p1, :cond_1

    add-int/2addr p1, v0

    .line 880
    :cond_1
    iget-object v0, p0, Lcom/zyyoona7/wheel/WheelView;->mDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zyyoona7/wheel/WheelView;->getDataText(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    if-ltz p1, :cond_3

    if-ge p1, v0, :cond_3

    .line 883
    iget-object v0, p0, Lcom/zyyoona7/wheel/WheelView;->mDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zyyoona7/wheel/WheelView;->getDataText(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :cond_3
    :goto_0
    return-object v1
.end method

.method private initAttrsAndDefault(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 238
    sget-object v0, Lcom/zyyoona7/wheel/R$styleable;->WheelView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 239
    sget p2, Lcom/zyyoona7/wheel/R$styleable;->WheelView_wv_textSize:I

    sget v0, Lcom/zyyoona7/wheel/WheelView;->DEFAULT_TEXT_SIZE:F

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/zyyoona7/wheel/WheelView;->mTextSize:F

    .line 240
    sget p2, Lcom/zyyoona7/wheel/R$styleable;->WheelView_wv_autoFitTextSize:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/zyyoona7/wheel/WheelView;->isAutoFitTextSize:Z

    .line 241
    sget p2, Lcom/zyyoona7/wheel/R$styleable;->WheelView_wv_textAlign:I

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/zyyoona7/wheel/WheelView;->mTextAlign:I

    .line 242
    sget p2, Lcom/zyyoona7/wheel/R$styleable;->WheelView_wv_textBoundaryMargin:I

    sget v2, Lcom/zyyoona7/wheel/WheelView;->DEFAULT_TEXT_BOUNDARY_MARGIN:F

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/zyyoona7/wheel/WheelView;->mTextBoundaryMargin:F

    .line 244
    sget p2, Lcom/zyyoona7/wheel/R$styleable;->WheelView_wv_normalItemTextColor:I

    const v3, -0xbbbbbc

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/zyyoona7/wheel/WheelView;->mTextColor:I

    .line 245
    sget p2, Lcom/zyyoona7/wheel/R$styleable;->WheelView_wv_selectedItemTextColor:I

    const/high16 v3, -0x1000000

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/zyyoona7/wheel/WheelView;->mSelectedItemTextColor:I

    .line 246
    sget p2, Lcom/zyyoona7/wheel/R$styleable;->WheelView_wv_lineSpacing:I

    sget v4, Lcom/zyyoona7/wheel/WheelView;->DEFAULT_LINE_SPACING:F

    invoke-virtual {p1, p2, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/zyyoona7/wheel/WheelView;->mLineSpacing:F

    .line 247
    sget p2, Lcom/zyyoona7/wheel/R$styleable;->WheelView_wv_integerNeedFormat:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/zyyoona7/wheel/WheelView;->isIntegerNeedFormat:Z

    .line 248
    sget p2, Lcom/zyyoona7/wheel/R$styleable;->WheelView_wv_integerFormat:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/zyyoona7/wheel/WheelView;->mIntegerFormat:Ljava/lang/String;

    .line 249
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "%02d"

    .line 250
    iput-object p2, p0, Lcom/zyyoona7/wheel/WheelView;->mIntegerFormat:Ljava/lang/String;

    .line 253
    :cond_0
    sget p2, Lcom/zyyoona7/wheel/R$styleable;->WheelView_wv_visibleItems:I

    const/4 v4, 0x5

    invoke-virtual {p1, p2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/zyyoona7/wheel/WheelView;->mVisibleItems:I

    .line 255
    invoke-direct {p0, p2}, Lcom/zyyoona7/wheel/WheelView;->adjustVisibleItems(I)I

    move-result p2

    iput p2, p0, Lcom/zyyoona7/wheel/WheelView;->mVisibleItems:I

    .line 256
    sget p2, Lcom/zyyoona7/wheel/R$styleable;->WheelView_wv_selectedItemPosition:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/zyyoona7/wheel/WheelView;->mSelectedItemPosition:I

    .line 258
    iput p2, p0, Lcom/zyyoona7/wheel/WheelView;->mCurrentScrollPosition:I

    .line 259
    sget p2, Lcom/zyyoona7/wheel/R$styleable;->WheelView_wv_cyclic:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/zyyoona7/wheel/WheelView;->isCyclic:Z

    .line 261
    sget p2, Lcom/zyyoona7/wheel/R$styleable;->WheelView_wv_showDivider:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/zyyoona7/wheel/WheelView;->isShowDivider:Z

    .line 262
    sget p2, Lcom/zyyoona7/wheel/R$styleable;->WheelView_wv_dividerType:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/zyyoona7/wheel/WheelView;->mDividerType:I

    .line 263
    sget p2, Lcom/zyyoona7/wheel/R$styleable;->WheelView_wv_dividerHeight:I

    sget v4, Lcom/zyyoona7/wheel/WheelView;->DEFAULT_DIVIDER_HEIGHT:F

    invoke-virtual {p1, p2, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/zyyoona7/wheel/WheelView;->mDividerSize:F

    .line 264
    sget p2, Lcom/zyyoona7/wheel/R$styleable;->WheelView_wv_dividerColor:I

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/zyyoona7/wheel/WheelView;->mDividerColor:I

    .line 265
    sget p2, Lcom/zyyoona7/wheel/R$styleable;->WheelView_wv_dividerPaddingForWrap:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/zyyoona7/wheel/WheelView;->mDividerPaddingForWrap:F

    .line 267
    sget p2, Lcom/zyyoona7/wheel/R$styleable;->WheelView_wv_dividerOffset:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/zyyoona7/wheel/WheelView;->mDividerOffset:F

    .line 269
    sget p2, Lcom/zyyoona7/wheel/R$styleable;->WheelView_wv_drawSelectedRect:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/zyyoona7/wheel/WheelView;->isDrawSelectedRect:Z

    .line 270
    sget p2, Lcom/zyyoona7/wheel/R$styleable;->WheelView_wv_selectedRectColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/zyyoona7/wheel/WheelView;->mSelectedRectColor:I

    .line 272
    sget p2, Lcom/zyyoona7/wheel/R$styleable;->WheelView_wv_curved:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/zyyoona7/wheel/WheelView;->isCurved:Z

    .line 273
    sget p2, Lcom/zyyoona7/wheel/R$styleable;->WheelView_wv_curvedArcDirection:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/zyyoona7/wheel/WheelView;->mCurvedArcDirection:I

    .line 274
    sget p2, Lcom/zyyoona7/wheel/R$styleable;->WheelView_wv_curvedArcDirectionFactor:I

    const/high16 v0, 0x3f400000    # 0.75f

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/zyyoona7/wheel/WheelView;->mCurvedArcDirectionFactor:F

    .line 277
    sget p2, Lcom/zyyoona7/wheel/R$styleable;->WheelView_wv_curvedRefractRatio:I

    const v0, 0x3f666666    # 0.9f

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    .line 278
    sget v0, Lcom/zyyoona7/wheel/R$styleable;->WheelView_wv_refractRatio:I

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/zyyoona7/wheel/WheelView;->mRefractRatio:F

    .line 279
    iget-boolean v2, p0, Lcom/zyyoona7/wheel/WheelView;->isCurved:Z

    if-eqz v2, :cond_1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    :cond_1
    iput v0, p0, Lcom/zyyoona7/wheel/WheelView;->mRefractRatio:F

    cmpl-float p2, v0, v1

    if-lez p2, :cond_2

    .line 281
    iput v1, p0, Lcom/zyyoona7/wheel/WheelView;->mRefractRatio:F

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    cmpg-float p2, v0, p2

    if-gez p2, :cond_3

    .line 283
    iput v1, p0, Lcom/zyyoona7/wheel/WheelView;->mRefractRatio:F

    .line 285
    :cond_3
    :goto_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private initDefaultVolume(Landroid/content/Context;)V
    .locals 3

    const-string v0, "audio"

    .line 323
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    if-eqz p1, :cond_0

    const/4 v0, 0x3

    .line 326
    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 328
    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p1

    .line 330
    iget-object v0, p0, Lcom/zyyoona7/wheel/WheelView;->mSoundHelper:Lcom/zyyoona7/wheel/WheelView$SoundHelper;

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    int-to-float p1, p1

    div-float/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/zyyoona7/wheel/WheelView$SoundHelper;->setPlayVolume(F)V

    goto :goto_0

    .line 332
    :cond_0
    iget-object p1, p0, Lcom/zyyoona7/wheel/WheelView;->mSoundHelper:Lcom/zyyoona7/wheel/WheelView$SoundHelper;

    const v0, 0x3e99999a    # 0.3f

    invoke-virtual {p1, v0}, Lcom/zyyoona7/wheel/WheelView$SoundHelper;->setPlayVolume(F)V

    :goto_0
    return-void
.end method

.method private initValue(Landroid/content/Context;)V
    .locals 2

    .line 294
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 295
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/zyyoona7/wheel/WheelView;->mMaxFlingVelocity:I

    .line 296
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/zyyoona7/wheel/WheelView;->mMinFlingVelocity:I

    .line 297
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zyyoona7/wheel/WheelView;->mScroller:Landroid/widget/Scroller;

    .line 298
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/zyyoona7/wheel/WheelView;->mDrawRect:Landroid/graphics/Rect;

    .line 299
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/zyyoona7/wheel/WheelView;->mCamera:Landroid/graphics/Camera;

    .line 300
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/zyyoona7/wheel/WheelView;->mMatrix:Landroid/graphics/Matrix;

    .line 301
    invoke-virtual {p0}, Lcom/zyyoona7/wheel/WheelView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 302
    invoke-static {}, Lcom/zyyoona7/wheel/WheelView$SoundHelper;->obtain()Lcom/zyyoona7/wheel/WheelView$SoundHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/zyyoona7/wheel/WheelView;->mSoundHelper:Lcom/zyyoona7/wheel/WheelView$SoundHelper;

    .line 303
    invoke-direct {p0, p1}, Lcom/zyyoona7/wheel/WheelView;->initDefaultVolume(Landroid/content/Context;)V

    .line 305
    :cond_0
    invoke-direct {p0}, Lcom/zyyoona7/wheel/WheelView;->calculateTextSize()V

    .line 306
    invoke-direct {p0}, Lcom/zyyoona7/wheel/WheelView;->updateTextAlign()V

    return-void
.end method

.method private initVelocityTracker()V
    .locals 1

    .line 1004
    iget-object v0, p0, Lcom/zyyoona7/wheel/WheelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 1005
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/zyyoona7/wheel/WheelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private invalidateIfYChanged()V
    .locals 2

    .line 1040
    iget v0, p0, Lcom/zyyoona7/wheel/WheelView;->mScrollOffsetY:I

    iget v1, p0, Lcom/zyyoona7/wheel/WheelView;->mScrolledY:I

    if-eq v0, v1, :cond_1

    .line 1041
    iput v0, p0, Lcom/zyyoona7/wheel/WheelView;->mScrolledY:I

    .line 1043
    iget-object v1, p0, Lcom/zyyoona7/wheel/WheelView;->mOnWheelChangedListener:Lcom/zyyoona7/wheel/WheelView$OnWheelChangedListener;

    if-eqz v1, :cond_0

    .line 1044
    invoke-interface {v1, v0}, Lcom/zyyoona7/wheel/WheelView$OnWheelChangedListener;->onWheelScroll(I)V

    .line 1046
    :cond_0
    iget v0, p0, Lcom/zyyoona7/wheel/WheelView;->mScrollOffsetY:I

    invoke-virtual {p0, v0}, Lcom/zyyoona7/wheel/WheelView;->onWheelScroll(I)V

    .line 1048
    invoke-direct {p0}, Lcom/zyyoona7/wheel/WheelView;->observeItemChanged()V

    .line 1049
    invoke-virtual {p0}, Lcom/zyyoona7/wheel/WheelView;->invalidate()V

    :cond_1
    return-void
.end method

.method private observeItemChanged()V
    .locals 3

    .line 1058
    iget v0, p0, Lcom/zyyoona7/wheel/WheelView;->mCurrentScrollPosition:I

    .line 1059
    invoke-direct {p0}, Lcom/zyyoona7/wheel/WheelView;->getCurrentPosition()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 1062
    iget-object v2, p0, Lcom/zyyoona7/wheel/WheelView;->mOnWheelChangedListener:Lcom/zyyoona7/wheel/WheelView$OnWheelChangedListener;

    if-eqz v2, :cond_0

    .line 1063
    invoke-interface {v2, v0, v1}, Lcom/zyyoona7/wheel/WheelView$OnWheelChangedListener;->onWheelItemChanged(II)V

    .line 1065
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/zyyoona7/wheel/WheelView;->onWheelItemChanged(II)V

    .line 1067
    invoke-virtual {p0}, Lcom/zyyoona7/wheel/WheelView;->playSoundEffect()V

    .line 1069
    iput v1, p0, Lcom/zyyoona7/wheel/WheelView;->mCurrentScrollPosition:I

    :cond_1
    return-void
.end method

.method private recalculateCenterToBaselineY()I
    .locals 3

    .line 679
    iget-object v0, p0, Lcom/zyyoona7/wheel/WheelView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 681
    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v2, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v2, v0

    add-float/2addr v1, v2

    float-to-int v0, v1

    return v0
.end method

.method private recalculateStartX(F)V
    .locals 2

    .line 659
    iget v0, p0, Lcom/zyyoona7/wheel/WheelView;->mTextAlign:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 668
    invoke-virtual {p0}, Lcom/zyyoona7/wheel/WheelView;->getWidth()I

    move-result p1

    div-int/2addr p1, v1

    iput p1, p0, Lcom/zyyoona7/wheel/WheelView;->mStartX:I

    goto :goto_0

    .line 664
    :cond_0
    invoke-virtual {p0}, Lcom/zyyoona7/wheel/WheelView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, p1

    float-to-int p1, v0

    iput p1, p0, Lcom/zyyoona7/wheel/WheelView;->mStartX:I

    goto :goto_0

    :cond_1
    float-to-int p1, p1

    .line 661
    iput p1, p0, Lcom/zyyoona7/wheel/WheelView;->mStartX:I

    :goto_0
    return-void
.end method

.method private recycleVelocityTracker()V
    .locals 1

    .line 1013
    iget-object v0, p0, Lcom/zyyoona7/wheel/WheelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 1014
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 1015
    iput-object v0, p0, Lcom/zyyoona7/wheel/WheelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private remeasureTextSize(Ljava/lang/String;)I
    .locals 6

    .line 625
    iget-object v0, p0, Lcom/zyyoona7/wheel/WheelView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 626
    invoke-virtual {p0}, Lcom/zyyoona7/wheel/WheelView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    .line 627
    iget v2, p0, Lcom/zyyoona7/wheel/WheelView;->mTextBoundaryMargin:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    const/high16 v4, 0x41200000    # 10.0f

    div-float v5, v1, v4

    cmpl-float v5, v2, v5

    if-lez v5, :cond_0

    const/high16 v2, 0x41100000    # 9.0f

    mul-float/2addr v1, v2

    div-float/2addr v1, v4

    div-float v2, v1, v4

    goto :goto_0

    :cond_0
    sub-float/2addr v1, v2

    :goto_0
    const/4 v4, 0x0

    cmpg-float v5, v1, v4

    if-gtz v5, :cond_1

    .line 636
    iget p1, p0, Lcom/zyyoona7/wheel/WheelView;->mCenterToBaselineY:I

    return p1

    .line 638
    :cond_1
    iget v5, p0, Lcom/zyyoona7/wheel/WheelView;->mTextSize:F

    :goto_1
    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v5, v0

    cmpg-float v0, v5, v4

    if-gtz v0, :cond_2

    goto :goto_2

    .line 644
    :cond_2
    iget-object v0, p0, Lcom/zyyoona7/wheel/WheelView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 645
    iget-object v0, p0, Lcom/zyyoona7/wheel/WheelView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    goto :goto_1

    :cond_3
    :goto_2
    div-float/2addr v2, v3

    .line 648
    invoke-direct {p0, v2}, Lcom/zyyoona7/wheel/WheelView;->recalculateStartX(F)V

    .line 650
    invoke-direct {p0}, Lcom/zyyoona7/wheel/WheelView;->recalculateCenterToBaselineY()I

    move-result p1

    return p1
.end method

.method private resetTypefaceIfBoldForSelectedItem()V
    .locals 2

    .line 857
    iget-boolean v0, p0, Lcom/zyyoona7/wheel/WheelView;->mIsBoldForSelectedItem:Z

    if-eqz v0, :cond_0

    .line 858
    iget-object v0, p0, Lcom/zyyoona7/wheel/WheelView;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/zyyoona7/wheel/WheelView;->mBoldTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_0
    return-void
.end method

.method protected static sp2px(F)F
    .locals 2

    .line 2283
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1, p0, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    return p0
.end method

.method private updateTextAlign()V
    .locals 2

    .line 355
    iget v0, p0, Lcom/zyyoona7/wheel/WheelView;->mTextAlign:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 364
    iget-object v0, p0, Lcom/zyyoona7/wheel/WheelView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_0

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/zyyoona7/wheel/WheelView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_0

    .line 357
    :cond_1
    iget-object v0, p0, Lcom/zyyoona7/wheel/WheelView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public abortFinishScroll()V
    .locals 1

    .line 1095
    iget-object v0, p0, Lcom/zyyoona7/wheel/WheelView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1096
    iget-object v0, p0, Lcom/zyyoona7/wheel/WheelView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_0
    return-void
.end method

.method public forceFinishScroll()V
    .locals 2

    .line 1086
    iget-object v0, p0, Lcom/zyyoona7/wheel/WheelView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1087
    iget-object v0, p0, Lcom/zyyoona7/wheel/WheelView;->mScroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    :cond_0
    return-void
.end method

.method public getCurvedArcDirection()I
    .locals 1

    .line 2087
    iget v0, p0, Lcom/zyyoona7/wheel/WheelView;->mCurvedArcDirection:I

    return v0
.end method

.method public getCurvedArcDirectionFactor()F
    .locals 1

    .line 2112
    iget v0, p0, Lcom/zyyoona7/wheel/WheelView;->mCurvedArcDirectionFactor:F

    return v0
.end method

.method public getCurvedRefractRatio()F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2164
    iget v0, p0, Lcom/zyyoona7/wheel/WheelView;->mRefractRatio:F

    return v0
.end method

.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 1288
    iget-object v0, p0, Lcom/zyyoona7/wheel/WheelView;->mDataList:Ljava/util/List;

    return-object v0
.end method

.method protected getDataText(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    .line 898
    :cond_0
    instance-of v0, p1, Lcom/zyyoona7/wheel/IWheelEntity;

    if-eqz v0, :cond_1

    .line 899
    check-cast p1, Lcom/zyyoona7/wheel/IWheelEntity;

    invoke-interface {p1}, Lcom/zyyoona7/wheel/IWheelEntity;->getWheelText()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 900
    :cond_1
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 902
    iget-boolean v0, p0, Lcom/zyyoona7/wheel/WheelView;->isIntegerNeedFormat:Z

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iget-object v1, p0, Lcom/zyyoona7/wheel/WheelView;->mIntegerFormat:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 903
    :cond_2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1

    .line 904
    :cond_3
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 905
    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 907
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDividerCap()Landroid/graphics/Paint$Cap;
    .locals 1

    .line 1988
    iget-object v0, p0, Lcom/zyyoona7/wheel/WheelView;->mDividerCap:Landroid/graphics/Paint$Cap;

    return-object v0
.end method

.method public getDividerColor()I
    .locals 1

    .line 1862
    iget v0, p0, Lcom/zyyoona7/wheel/WheelView;->mDividerColor:I

    return v0
.end method

.method public getDividerHeight()F
    .locals 1

    .line 1893
    iget v0, p0, Lcom/zyyoona7/wheel/WheelView;->mDividerSize:F

    return v0
.end method

.method public getDividerPaddingForWrap()F
    .locals 1

    .line 1952
    iget v0, p0, Lcom/zyyoona7/wheel/WheelView;->mDividerPaddingForWrap:F

    return v0
.end method

.method public getDividerType()I
    .locals 1

    .line 1928
    iget v0, p0, Lcom/zyyoona7/wheel/WheelView;->mDividerType:I

    return v0
.end method

.method public getIntegerFormat()Ljava/lang/String;
    .locals 1

    .line 1662
    iget-object v0, p0, Lcom/zyyoona7/wheel/WheelView;->mIntegerFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getItemData(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1263
    invoke-virtual {p0, p1}, Lcom/zyyoona7/wheel/WheelView;->isPositionInRange(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1264
    iget-object v0, p0, Lcom/zyyoona7/wheel/WheelView;->mDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1265
    :cond_0
    iget-object v0, p0, Lcom/zyyoona7/wheel/WheelView;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/zyyoona7/wheel/WheelView;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 1266
    iget-object p1, p0, Lcom/zyyoona7/wheel/WheelView;->mDataList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1267
    :cond_1
    iget-object v0, p0, Lcom/zyyoona7/wheel/WheelView;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    if-gez p1, :cond_2

    .line 1268
    iget-object p1, p0, Lcom/zyyoona7/wheel/WheelView;->mDataList:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public getLineSpacing()F
    .locals 1

    .line 1586
    iget v0, p0, Lcom/zyyoona7/wheel/WheelView;->mLineSpacing:F

    return v0
.end method

.method public getNormalItemTextColor()I
    .locals 1

    .line 1490
    iget v0, p0, Lcom/zyyoona7/wheel/WheelView;->mTextColor:I

    return v0
.end method

.method public getOnItemSelectedListener()Lcom/zyyoona7/wheel/WheelView$OnItemSelectedListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/zyyoona7/wheel/WheelView$OnItemSelectedListener<",
            "TT;>;"
        }
    .end annotation

    .line 2178
    iget-object v0, p0, Lcom/zyyoona7/wheel/WheelView;->mOnItemSelectedListener:Lcom/zyyoona7/wheel/WheelView$OnItemSelectedListener;

    return-object v0
.end method

.method public getOnWheelChangedListener()Lcom/zyyoona7/wheel/WheelView$OnWheelChangedListener;
    .locals 1

    .line 2196
    iget-object v0, p0, Lcom/zyyoona7/wheel/WheelView;->mOnWheelChangedListener:Lcom/zyyoona7/wheel/WheelView$OnWheelChangedListener;

    return-object v0
.end method

.method public getPlayVolume()F
    .locals 1

    .line 1241
    iget-object v0, p0, Lcom/zyyoona7/wheel/WheelView;->mSoundHelper:Lcom/zyyoona7/wheel/WheelView$SoundHelper;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/zyyoona7/wheel/WheelView$SoundHelper;->getPlayVolume()F

    move-result v0

    :goto_0
    return v0
.end method

.method public getRefractRatio()F
    .locals 1

    .line 2140
    iget v0, p0, Lcom/zyyoona7/wheel/WheelView;->mRefractRatio:F

    return v0
.end method

.method public getSelectedItemData()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1279
    iget v0, p0, Lcom/zyyoona7/wheel/WheelView;->mSelectedItemPosition:I

    invoke-virtual {p0, v0}, Lcom/zyyoona7/wheel/WheelView;->getItemData(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedItemPosition()I
    .locals 1

    .line 1750
    iget v0, p0, Lcom/zyyoona7/wheel/WheelView;->mSelectedItemPosition:I

    return v0
.end method

.method public getSelectedItemTextColor()I
    .locals 1

    .line 1521
    iget v0, p0, Lcom/zyyoona7/wheel/WheelView;->mSelectedItemTextColor:I

    return v0
.end method

.method public getSelectedRectColor()I
    .locals 1

    .line 2032
    iget v0, p0, Lcom/zyyoona7/wheel/WheelView;->mSelectedRectColor:I

    return v0
.end method

.method public getTextAlign()I
    .locals 1

    .line 1463
    iget v0, p0, Lcom/zyyoona7/wheel/WheelView;->mTextAlign:I

    return v0
.end method

.method public getTextBoundaryMargin()F
    .locals 1

    .line 1552
    iget v0, p0, Lcom/zyyoona7/wheel/WheelView;->mTextBoundaryMargin:F

    return v0
.end method

.method public getTextSize()F
    .locals 1

    .line 1346
    iget v0, p0, Lcom/zyyoona7/wheel/WheelView;->mTextSize:F

    return v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1

    .line 1406
    iget-object v0, p0, Lcom/zyyoona7/wheel/WheelView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public getVisibleItems()I
    .locals 1

    .line 1689
    iget v0, p0, Lcom/zyyoona7/wheel/WheelView;->mVisibleItems:I

    return v0
.end method

.method public isAutoFitTextSize()Z
    .locals 1

    .line 1387
    iget-boolean v0, p0, Lcom/zyyoona7/wheel/WheelView;->isAutoFitTextSize:Z

    return v0
.end method

.method public isCurved()Z
    .locals 1

    .line 2060
    iget-boolean v0, p0, Lcom/zyyoona7/wheel/WheelView;->isCurved:Z

    return v0
.end method

.method public isCyclic()Z
    .locals 1

    .line 1723
    iget-boolean v0, p0, Lcom/zyyoona7/wheel/WheelView;->isCyclic:Z

    return v0
.end method

.method public isDrawSelectedRect()Z
    .locals 1

    .line 2013
    iget-boolean v0, p0, Lcom/zyyoona7/wheel/WheelView;->isDrawSelectedRect:Z

    return v0
.end method

.method public isIntegerNeedFormat()Z
    .locals 1

    .line 1622
    iget-boolean v0, p0, Lcom/zyyoona7/wheel/WheelView;->isIntegerNeedFormat:Z

    return v0
.end method

.method public isPositionInRange(I)Z
    .locals 1

    if-ltz p1, :cond_0

    .line 1831
    iget-object v0, p0, Lcom/zyyoona7/wheel/WheelView;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isResetSelectedPosition()Z
    .locals 1

    .line 1328
    iget-boolean v0, p0, Lcom/zyyoona7/wheel/WheelView;->isResetSelectedPosition:Z

    return v0
.end method

.method public isShowDivider()Z
    .locals 1

    .line 1840
    iget-boolean v0, p0, Lcom/zyyoona7/wheel/WheelView;->isShowDivider:Z

    return v0
.end method

.method public isSoundEffect()Z
    .locals 1

    .line 1212
    iget-boolean v0, p0, Lcom/zyyoona7/wheel/WheelView;->isSoundEffect:Z

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 311
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 312
    iget-object v0, p0, Lcom/zyyoona7/wheel/WheelView;->mSoundHelper:Lcom/zyyoona7/wheel/WheelView$SoundHelper;

    if-eqz v0, :cond_0

    .line 313
    invoke-virtual {v0}, Lcom/zyyoona7/wheel/WheelView$SoundHelper;->release()V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 444
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 447
    invoke-direct {p0, p1}, Lcom/zyyoona7/wheel/WheelView;->drawSelectedRect(Landroid/graphics/Canvas;)V

    .line 449
    invoke-direct {p0, p1}, Lcom/zyyoona7/wheel/WheelView;->drawDivider(Landroid/graphics/Canvas;)V

    .line 452
    iget v0, p0, Lcom/zyyoona7/wheel/WheelView;->mScrollOffsetY:I

    invoke-direct {p0}, Lcom/zyyoona7/wheel/WheelView;->dividedItemHeight()I

    move-result v1

    div-int/2addr v0, v1

    .line 454
    iget v1, p0, Lcom/zyyoona7/wheel/WheelView;->mScrollOffsetY:I

    invoke-direct {p0}, Lcom/zyyoona7/wheel/WheelView;->dividedItemHeight()I

    move-result v2

    rem-int/2addr v1, v2

    .line 456
    iget v2, p0, Lcom/zyyoona7/wheel/WheelView;->mVisibleItems:I

    add-int/lit8 v2, v2, 0x1

    div-int/lit8 v2, v2, 0x2

    if-gez v1, :cond_0

    sub-int v3, v0, v2

    add-int/lit8 v3, v3, -0x1

    :goto_0
    add-int/2addr v0, v2

    goto :goto_1

    :cond_0
    if-lez v1, :cond_1

    sub-int v3, v0, v2

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    sub-int v3, v0, v2

    goto :goto_0

    :goto_1
    if-ge v3, v0, :cond_3

    .line 475
    iget-boolean v2, p0, Lcom/zyyoona7/wheel/WheelView;->isCurved:Z

    if-eqz v2, :cond_2

    .line 476
    invoke-direct {p0, p1, v3, v1}, Lcom/zyyoona7/wheel/WheelView;->draw3DItem(Landroid/graphics/Canvas;II)V

    goto :goto_2

    .line 478
    :cond_2
    invoke-direct {p0, p1, v3, v1}, Lcom/zyyoona7/wheel/WheelView;->drawItem(Landroid/graphics/Canvas;II)V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method protected onItemSelected(Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    .line 373
    iget-boolean v0, p0, Lcom/zyyoona7/wheel/WheelView;->isCurved:Z

    if-eqz v0, :cond_0

    .line 374
    iget v0, p0, Lcom/zyyoona7/wheel/WheelView;->mItemHeight:I

    iget v1, p0, Lcom/zyyoona7/wheel/WheelView;->mVisibleItems:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    int-to-double v0, v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v0, v2

    invoke-virtual {p0}, Lcom/zyyoona7/wheel/WheelView;->getPaddingTop()I

    move-result v2

    int-to-double v2, v2

    add-double/2addr v0, v2

    invoke-virtual {p0}, Lcom/zyyoona7/wheel/WheelView;->getPaddingBottom()I

    move-result v2

    int-to-double v2, v2

    add-double/2addr v0, v2

    double-to-int v0, v0

    goto :goto_0

    .line 376
    :cond_0
    iget v0, p0, Lcom/zyyoona7/wheel/WheelView;->mItemHeight:I

    iget v1, p0, Lcom/zyyoona7/wheel/WheelView;->mVisibleItems:I

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/zyyoona7/wheel/WheelView;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/zyyoona7/wheel/WheelView;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    .line 378
    :goto_0
    iget v1, p0, Lcom/zyyoona7/wheel/WheelView;->mMaxTextWidth:I

    invoke-virtual {p0}, Lcom/zyyoona7/wheel/WheelView;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/zyyoona7/wheel/WheelView;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/zyyoona7/wheel/WheelView;->mTextBoundaryMargin:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 379
    iget-boolean v2, p0, Lcom/zyyoona7/wheel/WheelView;->isCurved:Z

    if-eqz v2, :cond_1

    const-wide v2, 0x3fb0c152382d7365L    # 0.06544984694978735

    .line 380
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    int-to-double v4, v0

    mul-double/2addr v2, v4

    double-to-int v2, v2

    add-int/2addr v1, v2

    :cond_1
    const/4 v2, 0x0

    .line 383
    invoke-static {v1, p1, v2}, Lcom/zyyoona7/wheel/WheelView;->resolveSizeAndState(III)I

    move-result p1

    .line 384
    invoke-static {v0, p2, v2}, Lcom/zyyoona7/wheel/WheelView;->resolveSizeAndState(III)I

    move-result p2

    .line 383
    invoke-virtual {p0, p1, p2}, Lcom/zyyoona7/wheel/WheelView;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    .line 389
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 391
    iget-object p1, p0, Lcom/zyyoona7/wheel/WheelView;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/zyyoona7/wheel/WheelView;->getPaddingLeft()I

    move-result p2

    invoke-virtual {p0}, Lcom/zyyoona7/wheel/WheelView;->getPaddingTop()I

    move-result p3

    invoke-virtual {p0}, Lcom/zyyoona7/wheel/WheelView;->getWidth()I

    move-result p4

    invoke-virtual {p0}, Lcom/zyyoona7/wheel/WheelView;->getPaddingRight()I

    move-result v0

    sub-int/2addr p4, v0

    invoke-virtual {p0}, Lcom/zyyoona7/wheel/WheelView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/zyyoona7/wheel/WheelView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 392
    iget-object p1, p0, Lcom/zyyoona7/wheel/WheelView;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    iput p1, p0, Lcom/zyyoona7/wheel/WheelView;->mCenterX:I

    .line 393
    iget-object p1, p0, Lcom/zyyoona7/wheel/WheelView;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    iput p1, p0, Lcom/zyyoona7/wheel/WheelView;->mCenterY:I

    .line 394
    iget p2, p0, Lcom/zyyoona7/wheel/WheelView;->mItemHeight:I

    div-int/lit8 p3, p2, 0x2

    sub-int p3, p1, p3

    int-to-float p3, p3

    iget p4, p0, Lcom/zyyoona7/wheel/WheelView;->mDividerOffset:F

    sub-float/2addr p3, p4

    float-to-int p3, p3

    iput p3, p0, Lcom/zyyoona7/wheel/WheelView;->mSelectedItemTopLimit:I

    .line 395
    div-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    int-to-float p1, p1

    add-float/2addr p1, p4

    float-to-int p1, p1

    iput p1, p0, Lcom/zyyoona7/wheel/WheelView;->mSelectedItemBottomLimit:I

    .line 396
    invoke-virtual {p0}, Lcom/zyyoona7/wheel/WheelView;->getPaddingLeft()I

    move-result p1

    iput p1, p0, Lcom/zyyoona7/wheel/WheelView;->mClipLeft:I

    .line 397
    invoke-virtual {p0}, Lcom/zyyoona7/wheel/WheelView;->getPaddingTop()I

    move-result p1

    iput p1, p0, Lcom/zyyoona7/wheel/WheelView;->mClipTop:I

    .line 398
    invoke-virtual {p0}, Lcom/zyyoona7/wheel/WheelView;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/zyyoona7/wheel/WheelView;->getPaddingRight()I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/zyyoona7/wheel/WheelView;->mClipRight:I

    .line 399
    invoke-virtual {p0}, Lcom/zyyoona7/wheel/WheelView;->getHeight()I

    move-result p1

    invoke-virtual {p0}, Lcom/zyyoona7/wheel/WheelView;->getPaddingBottom()I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/zyyoona7/wheel/WheelView;->mClipBottom:I

    .line 401
    invoke-direct {p0}, Lcom/zyyoona7/wheel/WheelView;->calculateDrawStart()V

    .line 403
    invoke-direct {p0}, Lcom/zyyoona7/wheel/WheelView;->calculateLimitY()V

    .line 406
    iget p1, p0, Lcom/zyyoona7/wheel/WheelView;->mSelectedItemPosition:I

    invoke-direct {p0, p1}, Lcom/zyyoona7/wheel/WheelView;->calculateItemDistance(I)I

    move-result p1

    if-lez p1, :cond_0

    .line 408
    invoke-direct {p0, p1}, Lcom/zyyoona7/wheel/WheelView;->doScroll(I)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    .line 914
    invoke-virtual {p0}, Lcom/zyyoona7/wheel/WheelView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/zyyoona7/wheel/WheelView;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    .line 917
    :cond_0
    invoke-direct {p0}, Lcom/zyyoona7/wheel/WheelView;->initVelocityTracker()V

    .line 918
    iget-object v0, p0, Lcom/zyyoona7/wheel/WheelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 920
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    if-eq v0, v1, :cond_5

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    goto/16 :goto_4

    .line 994
    :cond_1
    invoke-direct {p0}, Lcom/zyyoona7/wheel/WheelView;->recycleVelocityTracker()V

    goto/16 :goto_4

    .line 939
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 940
    iget v0, p0, Lcom/zyyoona7/wheel/WheelView;->mLastTouchY:F

    sub-float v0, p1, v0

    .line 942
    iget-object v2, p0, Lcom/zyyoona7/wheel/WheelView;->mOnWheelChangedListener:Lcom/zyyoona7/wheel/WheelView$OnWheelChangedListener;

    if-eqz v2, :cond_3

    .line 943
    invoke-interface {v2, v1}, Lcom/zyyoona7/wheel/WheelView$OnWheelChangedListener;->onWheelScrollStateChanged(I)V

    .line 945
    :cond_3
    invoke-virtual {p0, v1}, Lcom/zyyoona7/wheel/WheelView;->onWheelScrollStateChanged(I)V

    .line 946
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_4

    goto/16 :goto_4

    :cond_4
    neg-float v0, v0

    float-to-int v0, v0

    .line 950
    invoke-direct {p0, v0}, Lcom/zyyoona7/wheel/WheelView;->doScroll(I)V

    .line 951
    iput p1, p0, Lcom/zyyoona7/wheel/WheelView;->mLastTouchY:F

    .line 952
    invoke-direct {p0}, Lcom/zyyoona7/wheel/WheelView;->invalidateIfYChanged()V

    goto/16 :goto_4

    :cond_5
    const/4 v0, 0x0

    .line 957
    iput-boolean v0, p0, Lcom/zyyoona7/wheel/WheelView;->isForceFinishScroll:Z

    .line 958
    iget-object v2, p0, Lcom/zyyoona7/wheel/WheelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v3, 0x3e8

    iget v4, p0, Lcom/zyyoona7/wheel/WheelView;->mMaxFlingVelocity:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 959
    iget-object v2, p0, Lcom/zyyoona7/wheel/WheelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v2

    .line 960
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/zyyoona7/wheel/WheelView;->mMinFlingVelocity:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_6

    .line 962
    iget-object p1, p0, Lcom/zyyoona7/wheel/WheelView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p1, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 963
    iput-boolean v1, p0, Lcom/zyyoona7/wheel/WheelView;->isFlingScroll:Z

    .line 964
    iget-object v3, p0, Lcom/zyyoona7/wheel/WheelView;->mScroller:Landroid/widget/Scroller;

    const/4 v4, 0x0

    iget v5, p0, Lcom/zyyoona7/wheel/WheelView;->mScrollOffsetY:I

    const/4 v6, 0x0

    neg-float p1, v2

    float-to-int v7, p1

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget v10, p0, Lcom/zyyoona7/wheel/WheelView;->mMinScrollY:I

    iget v11, p0, Lcom/zyyoona7/wheel/WheelView;->mMaxScrollY:I

    invoke-virtual/range {v3 .. v11}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    goto :goto_3

    .line 968
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/zyyoona7/wheel/WheelView;->mDownStartTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x78

    cmp-long v2, v2, v4

    if-gtz v2, :cond_7

    .line 971
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v2, p0, Lcom/zyyoona7/wheel/WheelView;->mCenterY:I

    int-to-float v2, v2

    sub-float/2addr p1, v2

    float-to-int p1, p1

    goto :goto_0

    :cond_7
    move p1, v0

    .line 973
    :goto_0
    iget v2, p0, Lcom/zyyoona7/wheel/WheelView;->mScrollOffsetY:I

    add-int/2addr v2, p1

    .line 974
    invoke-direct {p0}, Lcom/zyyoona7/wheel/WheelView;->dividedItemHeight()I

    move-result v3

    rem-int/2addr v2, v3

    invoke-direct {p0, v2}, Lcom/zyyoona7/wheel/WheelView;->calculateDistanceToEndPoint(I)I

    move-result v2

    add-int/2addr p1, v2

    if-gez p1, :cond_8

    .line 976
    iget v2, p0, Lcom/zyyoona7/wheel/WheelView;->mScrollOffsetY:I

    add-int/2addr v2, p1

    iget v3, p0, Lcom/zyyoona7/wheel/WheelView;->mMinScrollY:I

    if-lt v2, v3, :cond_8

    move v2, v1

    goto :goto_1

    :cond_8
    move v2, v0

    :goto_1
    if-lez p1, :cond_9

    .line 978
    iget v3, p0, Lcom/zyyoona7/wheel/WheelView;->mScrollOffsetY:I

    add-int/2addr v3, p1

    iget v4, p0, Lcom/zyyoona7/wheel/WheelView;->mMaxScrollY:I

    if-gt v3, v4, :cond_9

    move v3, v1

    goto :goto_2

    :cond_9
    move v3, v0

    :goto_2
    if-nez v2, :cond_a

    if-eqz v3, :cond_b

    .line 982
    :cond_a
    iget-object v2, p0, Lcom/zyyoona7/wheel/WheelView;->mScroller:Landroid/widget/Scroller;

    iget v3, p0, Lcom/zyyoona7/wheel/WheelView;->mScrollOffsetY:I

    invoke-virtual {v2, v0, v3, v0, p1}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 986
    :cond_b
    :goto_3
    invoke-direct {p0}, Lcom/zyyoona7/wheel/WheelView;->invalidateIfYChanged()V

    .line 987
    invoke-static {p0, p0}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 989
    invoke-direct {p0}, Lcom/zyyoona7/wheel/WheelView;->recycleVelocityTracker()V

    goto :goto_4

    .line 924
    :cond_c
    invoke-virtual {p0}, Lcom/zyyoona7/wheel/WheelView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 925
    invoke-virtual {p0}, Lcom/zyyoona7/wheel/WheelView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 928
    :cond_d
    iget-object v0, p0, Lcom/zyyoona7/wheel/WheelView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_e

    .line 930
    iget-object v0, p0, Lcom/zyyoona7/wheel/WheelView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 931
    iput-boolean v1, p0, Lcom/zyyoona7/wheel/WheelView;->isForceFinishScroll:Z

    .line 933
    :cond_e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/zyyoona7/wheel/WheelView;->mLastTouchY:F

    .line 935
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/zyyoona7/wheel/WheelView;->mDownStartTime:J

    :goto_4
    return v1

    .line 915
    :cond_f
    :goto_5
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onWheelItemChanged(II)V
    .locals 0

    return-void
.end method

.method protected onWheelScroll(I)V
    .locals 0

    return-void
.end method

.method protected onWheelScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method protected onWheelSelected(I)V
    .locals 0

    return-void
.end method

.method public playSoundEffect()V
    .locals 2

    .line 1077
    iget-object v0, p0, Lcom/zyyoona7/wheel/WheelView;->mSoundHelper:Lcom/zyyoona7/wheel/WheelView$SoundHelper;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/zyyoona7/wheel/WheelView;->isSoundEffect:Z

    if-eqz v1, :cond_0

    .line 1078
    invoke-virtual {v0}, Lcom/zyyoona7/wheel/WheelView$SoundHelper;->playSoundEffect()V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 4

    .line 1124
    iget-object v0, p0, Lcom/zyyoona7/wheel/WheelView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/zyyoona7/wheel/WheelView;->isForceFinishScroll:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/zyyoona7/wheel/WheelView;->isFlingScroll:Z

    if-nez v0, :cond_5

    .line 1125
    iget v0, p0, Lcom/zyyoona7/wheel/WheelView;->mItemHeight:I

    if-nez v0, :cond_0

    return-void

    .line 1127
    :cond_0
    iget-object v0, p0, Lcom/zyyoona7/wheel/WheelView;->mOnWheelChangedListener:Lcom/zyyoona7/wheel/WheelView$OnWheelChangedListener;

    if-eqz v0, :cond_1

    .line 1128
    invoke-interface {v0, v1}, Lcom/zyyoona7/wheel/WheelView$OnWheelChangedListener;->onWheelScrollStateChanged(I)V

    .line 1130
    :cond_1
    invoke-virtual {p0, v1}, Lcom/zyyoona7/wheel/WheelView;->onWheelScrollStateChanged(I)V

    .line 1131
    invoke-direct {p0}, Lcom/zyyoona7/wheel/WheelView;->getCurrentPosition()I

    move-result v0

    .line 1133
    iget v2, p0, Lcom/zyyoona7/wheel/WheelView;->mSelectedItemPosition:I

    if-ne v0, v2, :cond_2

    return-void

    .line 1136
    :cond_2
    iput v0, p0, Lcom/zyyoona7/wheel/WheelView;->mSelectedItemPosition:I

    .line 1138
    iput v0, p0, Lcom/zyyoona7/wheel/WheelView;->mCurrentScrollPosition:I

    .line 1141
    iget-object v2, p0, Lcom/zyyoona7/wheel/WheelView;->mOnItemSelectedListener:Lcom/zyyoona7/wheel/WheelView$OnItemSelectedListener;

    if-eqz v2, :cond_3

    .line 1142
    iget-object v3, p0, Lcom/zyyoona7/wheel/WheelView;->mDataList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget v3, p0, Lcom/zyyoona7/wheel/WheelView;->mSelectedItemPosition:I

    invoke-interface {v2, p0, v0, v3}, Lcom/zyyoona7/wheel/WheelView$OnItemSelectedListener;->onItemSelected(Lcom/zyyoona7/wheel/WheelView;Ljava/lang/Object;I)V

    .line 1144
    :cond_3
    iget-object v0, p0, Lcom/zyyoona7/wheel/WheelView;->mDataList:Ljava/util/List;

    iget v2, p0, Lcom/zyyoona7/wheel/WheelView;->mSelectedItemPosition:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget v2, p0, Lcom/zyyoona7/wheel/WheelView;->mSelectedItemPosition:I

    invoke-virtual {p0, v0, v2}, Lcom/zyyoona7/wheel/WheelView;->onItemSelected(Ljava/lang/Object;I)V

    .line 1146
    iget-object v0, p0, Lcom/zyyoona7/wheel/WheelView;->mOnWheelChangedListener:Lcom/zyyoona7/wheel/WheelView$OnWheelChangedListener;

    if-eqz v0, :cond_4

    .line 1147
    iget v2, p0, Lcom/zyyoona7/wheel/WheelView;->mSelectedItemPosition:I

    invoke-interface {v0, v2}, Lcom/zyyoona7/wheel/WheelView$OnWheelChangedListener;->onWheelSelected(I)V

    .line 1149
    :cond_4
    iget v0, p0, Lcom/zyyoona7/wheel/WheelView;->mSelectedItemPosition:I

    invoke-virtual {p0, v0}, Lcom/zyyoona7/wheel/WheelView;->onWheelSelected(I)V

    .line 1152
    :cond_5
    iget-object v0, p0, Lcom/zyyoona7/wheel/WheelView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1153
    iget v0, p0, Lcom/zyyoona7/wheel/WheelView;->mScrollOffsetY:I

    .line 1154
    iget-object v1, p0, Lcom/zyyoona7/wheel/WheelView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    iput v1, p0, Lcom/zyyoona7/wheel/WheelView;->mScrollOffsetY:I

    if-eq v0, v1, :cond_7

    .line 1157
    iget-object v0, p0, Lcom/zyyoona7/wheel/WheelView;->mOnWheelChangedListener:Lcom/zyyoona7/wheel/WheelView$OnWheelChangedListener;

    const/4 v1, 0x2

    if-eqz v0, :cond_6

    .line 1158
    invoke-interface {v0, v1}, Lcom/zyyoona7/wheel/WheelView$OnWheelChangedListener;->onWheelScrollStateChanged(I)V

    .line 1160
    :cond_6
    invoke-virtual {p0, v1}, Lcom/zyyoona7/wheel/WheelView;->onWheelScrollStateChanged(I)V

    .line 1162
    :cond_7
    invoke-direct {p0}, Lcom/zyyoona7/wheel/WheelView;->invalidateIfYChanged()V

    .line 1163
    invoke-static {p0, p0}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1164
    :cond_8
    iget-boolean v0, p0, Lcom/zyyoona7/wheel/WheelView;->isFlingScroll:Z

    if-eqz v0, :cond_9

    .line 1166
    iput-boolean v1, p0, Lcom/zyyoona7/wheel/WheelView;->isFlingScroll:Z

    .line 1168
    iget-object v0, p0, Lcom/zyyoona7/wheel/WheelView;->mScroller:Landroid/widget/Scroller;

    iget v2, p0, Lcom/zyyoona7/wheel/WheelView;->mScrollOffsetY:I

    invoke-direct {p0}, Lcom/zyyoona7/wheel/WheelView;->dividedItemHeight()I

    move-result v3

    rem-int v3, v2, v3

    invoke-direct {p0, v3}, Lcom/zyyoona7/wheel/WheelView;->calculateDistanceToEndPoint(I)I

    move-result v3

    invoke-virtual {v0, v1, v2, v1, v3}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 1169
    invoke-direct {p0}, Lcom/zyyoona7/wheel/WheelView;->invalidateIfYChanged()V

    .line 1170
    invoke-static {p0, p0}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_9
    :goto_0
    return-void
.end method

.method public setAutoFitTextSize(Z)V
    .locals 0

    .line 1396
    iput-boolean p1, p0, Lcom/zyyoona7/wheel/WheelView;->isAutoFitTextSize:Z

    .line 1397
    invoke-virtual {p0}, Lcom/zyyoona7/wheel/WheelView;->invalidate()V

    return-void
.end method

.method public setCurved(Z)V
    .locals 1

    .line 2069
    iget-boolean v0, p0, Lcom/zyyoona7/wheel/WheelView;->isCurved:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 2072
    :cond_0
    iput-boolean p1, p0, Lcom/zyyoona7/wheel/WheelView;->isCurved:Z

    .line 2073
    invoke-direct {p0}, Lcom/zyyoona7/wheel/WheelView;->calculateTextSize()V

    .line 2074
    invoke-virtual {p0}, Lcom/zyyoona7/wheel/WheelView;->requestLayout()V

    .line 2075
    invoke-virtual {p0}, Lcom/zyyoona7/wheel/WheelView;->invalidate()V

    return-void
.end method

.method public setCurvedArcDirection(I)V
    .locals 1

    .line 2099
    iget v0, p0, Lcom/zyyoona7/wheel/WheelView;->mCurvedArcDirection:I

    if-ne v0, p1, :cond_0

    return-void

    .line 2102
    :cond_0
    iput p1, p0, Lcom/zyyoona7/wheel/WheelView;->mCurvedArcDirection:I

    .line 2103
    invoke-virtual {p0}, Lcom/zyyoona7/wheel/WheelView;->invalidate()V

    return-void
.end method

.method public setCurvedArcDirectionFactor(F)V
    .locals 3

    .line 2122
    iget v0, p0, Lcom/zyyoona7/wheel/WheelView;->mCurvedArcDirectionFactor:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    if-gez v1, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    cmpl-float v0, p1, v2

    if-lez v0, :cond_2

    move p1, v2

    .line 2130
    :cond_2
    :goto_0
    iput p1, p0, Lcom/zyyoona7/wheel/WheelView;->mCurvedArcDirectionFactor:F

    .line 2131
    invoke-virtual {p0}, Lcom/zyyoona7/wheel/WheelView;->invalidate()V

    return-void
.end method

.method public setCurvedRefractRatio(F)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2169
    invoke-virtual {p0, p1}, Lcom/zyyoona7/wheel/WheelView;->setRefractRatio(F)V

    return-void
.end method

.method public setCyclic(Z)V
    .locals 1

    .line 1732
    iget-boolean v0, p0, Lcom/zyyoona7/wheel/WheelView;->isCyclic:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 1735
    :cond_0
    iput-boolean p1, p0, Lcom/zyyoona7/wheel/WheelView;->isCyclic:Z

    .line 1737
    invoke-virtual {p0}, Lcom/zyyoona7/wheel/WheelView;->forceFinishScroll()V

    .line 1738
    invoke-direct {p0}, Lcom/zyyoona7/wheel/WheelView;->calculateLimitY()V

    .line 1740
    iget p1, p0, Lcom/zyyoona7/wheel/WheelView;->mSelectedItemPosition:I

    iget v0, p0, Lcom/zyyoona7/wheel/WheelView;->mItemHeight:I

    mul-int/2addr p1, v0

    iput p1, p0, Lcom/zyyoona7/wheel/WheelView;->mScrollOffsetY:I

    .line 1741
    invoke-virtual {p0}, Lcom/zyyoona7/wheel/WheelView;->invalidate()V

    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1300
    :cond_0
    iput-object p1, p0, Lcom/zyyoona7/wheel/WheelView;->mDataList:Ljava/util/List;

    .line 1301
    iget-boolean v0, p0, Lcom/zyyoona7/wheel/WheelView;->isResetSelectedPosition:Z

    if-nez v0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 1303
    iget p1, p0, Lcom/zyyoona7/wheel/WheelView;->mSelectedItemPosition:I

    iget-object v0, p0, Lcom/zyyoona7/wheel/WheelView;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_2

    .line 1304
    iget-object p1, p0, Lcom/zyyoona7/wheel/WheelView;->mDataList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/zyyoona7/wheel/WheelView;->mSelectedItemPosition:I

    .line 1306
    iput p1, p0, Lcom/zyyoona7/wheel/WheelView;->mCurrentScrollPosition:I

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 1310
    iput p1, p0, Lcom/zyyoona7/wheel/WheelView;->mSelectedItemPosition:I

    iput p1, p0, Lcom/zyyoona7/wheel/WheelView;->mCurrentScrollPosition:I

    .line 1313
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/zyyoona7/wheel/WheelView;->forceFinishScroll()V

    .line 1314
    invoke-direct {p0}, Lcom/zyyoona7/wheel/WheelView;->calculateTextSize()V

    .line 1315
    invoke-direct {p0}, Lcom/zyyoona7/wheel/WheelView;->calculateLimitY()V

    .line 1317
    iget p1, p0, Lcom/zyyoona7/wheel/WheelView;->mSelectedItemPosition:I

    iget v0, p0, Lcom/zyyoona7/wheel/WheelView;->mItemHeight:I

    mul-int/2addr p1, v0

    iput p1, p0, Lcom/zyyoona7/wheel/WheelView;->mScrollOffsetY:I

    .line 1318
    invoke-virtual {p0}, Lcom/zyyoona7/wheel/WheelView;->requestLayout()V

    .line 1319
    invoke-virtual {p0}, Lcom/zyyoona7/wheel/WheelView;->invalidate()V

    return-void
.end method

.method public setDividerCap(Landroid/graphics/Paint$Cap;)V
    .locals 1

    .line 2000
    iget-object v0, p0, Lcom/zyyoona7/wheel/WheelView;->mDividerCap:Landroid/graphics/Paint$Cap;

    if-ne v0, p1, :cond_0

    return-void

    .line 2003
    :cond_0
    iput-object p1, p0, Lcom/zyyoona7/wheel/WheelView;->mDividerCap:Landroid/graphics/Paint$Cap;

    .line 2004
    invoke-virtual {p0}, Lcom/zyyoona7/wheel/WheelView;->invalidate()V

    return-void
.end method

.method public setDividerColor(I)V
    .locals 1

    .line 1880
    iget v0, p0, Lcom/zyyoona7/wheel/WheelView;->mDividerColor:I

    if-ne v0, p1, :cond_0

    return-void

    .line 1883
    :cond_0
    iput p1, p0, Lcom/zyyoona7/wheel/WheelView;->mDividerColor:I

    .line 1884
    invoke-virtual {p0}, Lcom/zyyoona7/wheel/WheelView;->invalidate()V

    return-void
.end method

.method public setDividerColorRes(I)V
    .locals 1

    .line 1871
    invoke-virtual {p0}, Lcom/zyyoona7/wheel/WheelView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/zyyoona7/wheel/WheelView;->setDividerColor(I)V

    return-void
.end method

.method public setDividerHeight(F)V
    .locals 1

    const/4 v0, 0x0

    .line 1902
    invoke-virtual {p0, p1, v0}, Lcom/zyyoona7/wheel/WheelView;->setDividerHeight(FZ)V

    return-void
.end method

.method public setDividerHeight(FZ)V
    .locals 1

    .line 1912
    iget v0, p0, Lcom/zyyoona7/wheel/WheelView;->mDividerSize:F

    if-eqz p2, :cond_0

    .line 1913
    invoke-static {p1}, Lcom/zyyoona7/wheel/WheelView;->dp2px(F)F

    move-result p1

    :cond_0
    iput p1, p0, Lcom/zyyoona7/wheel/WheelView;->mDividerSize:F

    cmpl-float p1, v0, p1

    if-nez p1, :cond_1

    return-void

    .line 1917
    :cond_1
    invoke-virtual {p0}, Lcom/zyyoona7/wheel/WheelView;->invalidate()V

    return-void
.end method

.method public setDividerPaddingForWrap(F)V
    .locals 1

    const/4 v0, 0x0

    .line 1961
    invoke-virtual {p0, p1, v0}, Lcom/zyyoona7/wheel/WheelView;->setDividerPaddingForWrap(FZ)V

    return-void
.end method

.method public setDividerPaddingForWrap(FZ)V
    .locals 1

    .line 1971
    iget v0, p0, Lcom/zyyoona7/wheel/WheelView;->mDividerPaddingForWrap:F

    if-eqz p2, :cond_0

    .line 1972
    invoke-static {p1}, Lcom/zyyoona7/wheel/WheelView;->dp2px(F)F

    move-result p1

    :cond_0
    iput p1, p0, Lcom/zyyoona7/wheel/WheelView;->mDividerPaddingForWrap:F

    cmpl-float p1, v0, p1

    if-nez p1, :cond_1

    return-void

    .line 1976
    :cond_1
    invoke-virtual {p0}, Lcom/zyyoona7/wheel/WheelView;->invalidate()V

    return-void
.end method

.method public setDividerType(I)V
    .locals 1

    .line 1939
    iget v0, p0, Lcom/zyyoona7/wheel/WheelView;->mDividerType:I

    if-ne v0, p1, :cond_0

    return-void

    .line 1942
    :cond_0
    iput p1, p0, Lcom/zyyoona7/wheel/WheelView;->mDividerType:I

    .line 1943
    invoke-virtual {p0}, Lcom/zyyoona7/wheel/WheelView;->invalidate()V

    return-void
.end method

.method public setDrawSelectedRect(Z)V
    .locals 0

    .line 2022
    iput-boolean p1, p0, Lcom/zyyoona7/wheel/WheelView;->isDrawSelectedRect:Z

    .line 2023
    invoke-virtual {p0}, Lcom/zyyoona7/wheel/WheelView;->invalidate()V

    return-void
.end method

.method public setIntegerFormat(Ljava/lang/String;)V
    .locals 1

    .line 1674
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zyyoona7/wheel/WheelView;->mIntegerFormat:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1677
    :cond_0
    iput-object p1, p0, Lcom/zyyoona7/wheel/WheelView;->mIntegerFormat:Ljava/lang/String;

    .line 1678
    invoke-direct {p0}, Lcom/zyyoona7/wheel/WheelView;->calculateTextSize()V

    .line 1679
    invoke-virtual {p0}, Lcom/zyyoona7/wheel/WheelView;->requestLayout()V

    .line 1680
    invoke-virtual {p0}, Lcom/zyyoona7/wheel/WheelView;->invalidate()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setIntegerNeedFormat(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 1649
    iput-boolean v0, p0, Lcom/zyyoona7/wheel/WheelView;->isIntegerNeedFormat:Z

    .line 1650
    iput-object p1, p0, Lcom/zyyoona7/wheel/WheelView;->mIntegerFormat:Ljava/lang/String;

    .line 1651
    invoke-direct {p0}, Lcom/zyyoona7/wheel/WheelView;->calculateTextSize()V

    .line 1652
    invoke-virtual {p0}, Lcom/zyyoona7/wheel/WheelView;->requestLayout()V

    .line 1653
    invoke-virtual {p0}, Lcom/zyyoona7/wheel/WheelView;->invalidate()V

    return-void
.end method

.method public setIntegerNeedFormat(Z)V
    .locals 1

    .line 1631
    iget-boolean v0, p0, Lcom/zyyoona7/wheel/WheelView;->isIntegerNeedFormat:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 1634
    :cond_0
    iput-boolean p1, p0, Lcom/zyyoona7/wheel/WheelView;->isIntegerNeedFormat:Z

    .line 1635
    invoke-direct {p0}, Lcom/zyyoona7/wheel/WheelView;->calculateTextSize()V

    .line 1636
    invoke-virtual {p0}, Lcom/zyyoona7/wheel/WheelView;->requestLayout()V

    .line 1637
    invoke-virtual {p0}, Lcom/zyyoona7/wheel/WheelView;->invalidate()V

    return-void
.end method

.method public setLineSpacing(F)V
    .locals 1

    const/4 v0, 0x0

    .line 1595
    invoke-virtual {p0, p1, v0}, Lcom/zyyoona7/wheel/WheelView;->setLineSpacing(FZ)V

    return-void
.end method

.method public setLineSpacing(FZ)V
    .locals 1

    .line 1605
    iget v0, p0, Lcom/zyyoona7/wheel/WheelView;->mLineSpacing:F

    if-eqz p2, :cond_0

    .line 1606
    invoke-static {p1}, Lcom/zyyoona7/wheel/WheelView;->dp2px(F)F

    move-result p1

    :cond_0
    iput p1, p0, Lcom/zyyoona7/wheel/WheelView;->mLineSpacing:F

    cmpl-float p1, v0, p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 1610
    iput p1, p0, Lcom/zyyoona7/wheel/WheelView;->mScrollOffsetY:I

    .line 1611
    invoke-direct {p0}, Lcom/zyyoona7/wheel/WheelView;->calculateTextSize()V

    .line 1612
    invoke-virtual {p0}, Lcom/zyyoona7/wheel/WheelView;->requestLayout()V

    .line 1613
    invoke-virtual {p0}, Lcom/zyyoona7/wheel/WheelView;->invalidate()V

    return-void
.end method

.method public setNormalItemTextColor(I)V
    .locals 1

    .line 1508
    iget v0, p0, Lcom/zyyoona7/wheel/WheelView;->mTextColor:I

    if-ne v0, p1, :cond_0

    return-void

    .line 1511
    :cond_0
    iput p1, p0, Lcom/zyyoona7/wheel/WheelView;->mTextColor:I

    .line 1512
    invoke-virtual {p0}, Lcom/zyyoona7/wheel/WheelView;->invalidate()V

    return-void
.end method

.method public setNormalItemTextColorRes(I)V
    .locals 1

    .line 1499
    invoke-virtual {p0}, Lcom/zyyoona7/wheel/WheelView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/zyyoona7/wheel/WheelView;->setNormalItemTextColor(I)V

    return-void
.end method

.method public setOnItemSelectedListener(Lcom/zyyoona7/wheel/WheelView$OnItemSelectedListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zyyoona7/wheel/WheelView$OnItemSelectedListener<",
            "TT;>;)V"
        }
    .end annotation

    .line 2187
    iput-object p1, p0, Lcom/zyyoona7/wheel/WheelView;->mOnItemSelectedListener:Lcom/zyyoona7/wheel/WheelView$OnItemSelectedListener;

    return-void
.end method

.method public setOnWheelChangedListener(Lcom/zyyoona7/wheel/WheelView$OnWheelChangedListener;)V
    .locals 0

    .line 2205
    iput-object p1, p0, Lcom/zyyoona7/wheel/WheelView;->mOnWheelChangedListener:Lcom/zyyoona7/wheel/WheelView$OnWheelChangedListener;

    return-void
.end method

.method public setPlayVolume(F)V
    .locals 1

    .line 1250
    iget-object v0, p0, Lcom/zyyoona7/wheel/WheelView;->mSoundHelper:Lcom/zyyoona7/wheel/WheelView$SoundHelper;

    if-eqz v0, :cond_0

    .line 1251
    invoke-virtual {v0, p1}, Lcom/zyyoona7/wheel/WheelView$SoundHelper;->setPlayVolume(F)V

    :cond_0
    return-void
.end method

.method public setRefractRatio(F)V
    .locals 3

    .line 2149
    iget v0, p0, Lcom/zyyoona7/wheel/WheelView;->mRefractRatio:F

    .line 2150
    iput p1, p0, Lcom/zyyoona7/wheel/WheelView;->mRefractRatio:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v1

    if-lez v2, :cond_0

    .line 2152
    iput v1, p0, Lcom/zyyoona7/wheel/WheelView;->mRefractRatio:F

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    cmpg-float p1, p1, v2

    if-gez p1, :cond_1

    .line 2154
    iput v1, p0, Lcom/zyyoona7/wheel/WheelView;->mRefractRatio:F

    .line 2156
    :cond_1
    :goto_0
    iget p1, p0, Lcom/zyyoona7/wheel/WheelView;->mRefractRatio:F

    cmpl-float p1, v0, p1

    if-nez p1, :cond_2

    return-void

    .line 2159
    :cond_2
    invoke-virtual {p0}, Lcom/zyyoona7/wheel/WheelView;->invalidate()V

    return-void
.end method

.method public setResetSelectedPosition(Z)V
    .locals 0

    .line 1337
    iput-boolean p1, p0, Lcom/zyyoona7/wheel/WheelView;->isResetSelectedPosition:Z

    return-void
.end method

.method public setSelectedItemPosition(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1759
    invoke-virtual {p0, p1, v0}, Lcom/zyyoona7/wheel/WheelView;->setSelectedItemPosition(IZ)V

    return-void
.end method

.method public setSelectedItemPosition(IZ)V
    .locals 1

    const/4 v0, 0x0

    .line 1769
    invoke-virtual {p0, p1, p2, v0}, Lcom/zyyoona7/wheel/WheelView;->setSelectedItemPosition(IZI)V

    return-void
.end method

.method public setSelectedItemPosition(IZI)V
    .locals 7

    .line 1784
    invoke-virtual {p0, p1}, Lcom/zyyoona7/wheel/WheelView;->isPositionInRange(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1789
    :cond_0
    invoke-direct {p0, p1}, Lcom/zyyoona7/wheel/WheelView;->calculateItemDistance(I)I

    move-result v5

    if-nez v5, :cond_1

    return-void

    .line 1794
    :cond_1
    invoke-virtual {p0}, Lcom/zyyoona7/wheel/WheelView;->abortFinishScroll()V

    if-eqz p2, :cond_3

    .line 1798
    iget-object v1, p0, Lcom/zyyoona7/wheel/WheelView;->mScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    iget v3, p0, Lcom/zyyoona7/wheel/WheelView;->mScrollOffsetY:I

    const/4 v4, 0x0

    if-lez p3, :cond_2

    goto :goto_0

    :cond_2
    const/16 p3, 0xfa

    :goto_0
    move v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1800
    invoke-direct {p0}, Lcom/zyyoona7/wheel/WheelView;->invalidateIfYChanged()V

    .line 1801
    invoke-static {p0, p0}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_1

    .line 1804
    :cond_3
    invoke-direct {p0, v5}, Lcom/zyyoona7/wheel/WheelView;->doScroll(I)V

    .line 1805
    iput p1, p0, Lcom/zyyoona7/wheel/WheelView;->mSelectedItemPosition:I

    .line 1807
    iget-object p2, p0, Lcom/zyyoona7/wheel/WheelView;->mOnItemSelectedListener:Lcom/zyyoona7/wheel/WheelView$OnItemSelectedListener;

    if-eqz p2, :cond_4

    .line 1808
    iget-object p3, p0, Lcom/zyyoona7/wheel/WheelView;->mDataList:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    iget p3, p0, Lcom/zyyoona7/wheel/WheelView;->mSelectedItemPosition:I

    invoke-interface {p2, p0, p1, p3}, Lcom/zyyoona7/wheel/WheelView$OnItemSelectedListener;->onItemSelected(Lcom/zyyoona7/wheel/WheelView;Ljava/lang/Object;I)V

    .line 1810
    :cond_4
    iget-object p1, p0, Lcom/zyyoona7/wheel/WheelView;->mDataList:Ljava/util/List;

    iget p2, p0, Lcom/zyyoona7/wheel/WheelView;->mSelectedItemPosition:I

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    iget p2, p0, Lcom/zyyoona7/wheel/WheelView;->mSelectedItemPosition:I

    invoke-virtual {p0, p1, p2}, Lcom/zyyoona7/wheel/WheelView;->onItemSelected(Ljava/lang/Object;I)V

    .line 1811
    iget-object p1, p0, Lcom/zyyoona7/wheel/WheelView;->mOnWheelChangedListener:Lcom/zyyoona7/wheel/WheelView$OnWheelChangedListener;

    if-eqz p1, :cond_5

    .line 1812
    iget p2, p0, Lcom/zyyoona7/wheel/WheelView;->mSelectedItemPosition:I

    invoke-interface {p1, p2}, Lcom/zyyoona7/wheel/WheelView$OnWheelChangedListener;->onWheelSelected(I)V

    .line 1814
    :cond_5
    iget p1, p0, Lcom/zyyoona7/wheel/WheelView;->mSelectedItemPosition:I

    invoke-virtual {p0, p1}, Lcom/zyyoona7/wheel/WheelView;->onWheelSelected(I)V

    .line 1815
    invoke-direct {p0}, Lcom/zyyoona7/wheel/WheelView;->invalidateIfYChanged()V

    :goto_1
    return-void
.end method

.method public setSelectedItemTextColor(I)V
    .locals 1

    .line 1539
    iget v0, p0, Lcom/zyyoona7/wheel/WheelView;->mSelectedItemTextColor:I

    if-ne v0, p1, :cond_0

    return-void

    .line 1542
    :cond_0
    iput p1, p0, Lcom/zyyoona7/wheel/WheelView;->mSelectedItemTextColor:I

    .line 1543
    invoke-virtual {p0}, Lcom/zyyoona7/wheel/WheelView;->invalidate()V

    return-void
.end method

.method public setSelectedItemTextColorRes(I)V
    .locals 1

    .line 1530
    invoke-virtual {p0}, Lcom/zyyoona7/wheel/WheelView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/zyyoona7/wheel/WheelView;->setSelectedItemTextColor(I)V

    return-void
.end method

.method public setSelectedRectColor(I)V
    .locals 0

    .line 2050
    iput p1, p0, Lcom/zyyoona7/wheel/WheelView;->mSelectedRectColor:I

    .line 2051
    invoke-virtual {p0}, Lcom/zyyoona7/wheel/WheelView;->invalidate()V

    return-void
.end method

.method public setSelectedRectColorRes(I)V
    .locals 1

    .line 2041
    invoke-virtual {p0}, Lcom/zyyoona7/wheel/WheelView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/zyyoona7/wheel/WheelView;->setSelectedRectColor(I)V

    return-void
.end method

.method public setShowDivider(Z)V
    .locals 1

    .line 1849
    iget-boolean v0, p0, Lcom/zyyoona7/wheel/WheelView;->isShowDivider:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 1852
    :cond_0
    iput-boolean p1, p0, Lcom/zyyoona7/wheel/WheelView;->isShowDivider:Z

    .line 1853
    invoke-virtual {p0}, Lcom/zyyoona7/wheel/WheelView;->invalidate()V

    return-void
.end method

.method public setSoundEffect(Z)V
    .locals 0

    .line 1221
    iput-boolean p1, p0, Lcom/zyyoona7/wheel/WheelView;->isSoundEffect:Z

    return-void
.end method

.method public setSoundEffectResource(I)V
    .locals 2

    .line 1230
    iget-object v0, p0, Lcom/zyyoona7/wheel/WheelView;->mSoundHelper:Lcom/zyyoona7/wheel/WheelView$SoundHelper;

    if-eqz v0, :cond_0

    .line 1231
    invoke-virtual {p0}, Lcom/zyyoona7/wheel/WheelView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/zyyoona7/wheel/WheelView$SoundHelper;->load(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method public setTextAlign(I)V
    .locals 1

    .line 1475
    iget v0, p0, Lcom/zyyoona7/wheel/WheelView;->mTextAlign:I

    if-ne v0, p1, :cond_0

    return-void

    .line 1478
    :cond_0
    iput p1, p0, Lcom/zyyoona7/wheel/WheelView;->mTextAlign:I

    .line 1479
    invoke-direct {p0}, Lcom/zyyoona7/wheel/WheelView;->updateTextAlign()V

    .line 1480
    invoke-direct {p0}, Lcom/zyyoona7/wheel/WheelView;->calculateDrawStart()V

    .line 1481
    invoke-virtual {p0}, Lcom/zyyoona7/wheel/WheelView;->invalidate()V

    return-void
.end method

.method public setTextBoundaryMargin(F)V
    .locals 1

    const/4 v0, 0x0

    .line 1561
    invoke-virtual {p0, p1, v0}, Lcom/zyyoona7/wheel/WheelView;->setTextBoundaryMargin(FZ)V

    return-void
.end method

.method public setTextBoundaryMargin(FZ)V
    .locals 1

    .line 1571
    iget v0, p0, Lcom/zyyoona7/wheel/WheelView;->mTextBoundaryMargin:F

    if-eqz p2, :cond_0

    .line 1572
    invoke-static {p1}, Lcom/zyyoona7/wheel/WheelView;->dp2px(F)F

    move-result p1

    :cond_0
    iput p1, p0, Lcom/zyyoona7/wheel/WheelView;->mTextBoundaryMargin:F

    cmpl-float p1, v0, p1

    if-nez p1, :cond_1

    return-void

    .line 1576
    :cond_1
    invoke-virtual {p0}, Lcom/zyyoona7/wheel/WheelView;->requestLayout()V

    .line 1577
    invoke-virtual {p0}, Lcom/zyyoona7/wheel/WheelView;->invalidate()V

    return-void
.end method

.method public setTextSize(F)V
    .locals 1

    const/4 v0, 0x0

    .line 1355
    invoke-virtual {p0, p1, v0}, Lcom/zyyoona7/wheel/WheelView;->setTextSize(FZ)V

    return-void
.end method

.method public setTextSize(FZ)V
    .locals 1

    .line 1365
    iget v0, p0, Lcom/zyyoona7/wheel/WheelView;->mTextSize:F

    if-eqz p2, :cond_0

    .line 1366
    invoke-static {p1}, Lcom/zyyoona7/wheel/WheelView;->sp2px(F)F

    move-result p1

    :cond_0
    iput p1, p0, Lcom/zyyoona7/wheel/WheelView;->mTextSize:F

    cmpl-float p1, v0, p1

    if-nez p1, :cond_1

    return-void

    .line 1371
    :cond_1
    invoke-virtual {p0}, Lcom/zyyoona7/wheel/WheelView;->forceFinishScroll()V

    .line 1372
    invoke-direct {p0}, Lcom/zyyoona7/wheel/WheelView;->calculateTextSize()V

    .line 1373
    invoke-direct {p0}, Lcom/zyyoona7/wheel/WheelView;->calculateDrawStart()V

    .line 1374
    invoke-direct {p0}, Lcom/zyyoona7/wheel/WheelView;->calculateLimitY()V

    .line 1376
    iget p1, p0, Lcom/zyyoona7/wheel/WheelView;->mSelectedItemPosition:I

    iget p2, p0, Lcom/zyyoona7/wheel/WheelView;->mItemHeight:I

    mul-int/2addr p1, p2

    iput p1, p0, Lcom/zyyoona7/wheel/WheelView;->mScrollOffsetY:I

    .line 1377
    invoke-virtual {p0}, Lcom/zyyoona7/wheel/WheelView;->requestLayout()V

    .line 1378
    invoke-virtual {p0}, Lcom/zyyoona7/wheel/WheelView;->invalidate()V

    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    const/4 v0, 0x0

    .line 1415
    invoke-virtual {p0, p1, v0}, Lcom/zyyoona7/wheel/WheelView;->setTypeface(Landroid/graphics/Typeface;Z)V

    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;Z)V
    .locals 1

    if-eqz p1, :cond_3

    .line 1425
    iget-object v0, p0, Lcom/zyyoona7/wheel/WheelView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-ne v0, p1, :cond_0

    goto :goto_2

    .line 1429
    :cond_0
    invoke-virtual {p0}, Lcom/zyyoona7/wheel/WheelView;->forceFinishScroll()V

    .line 1430
    iput-boolean p2, p0, Lcom/zyyoona7/wheel/WheelView;->mIsBoldForSelectedItem:Z

    if-eqz p2, :cond_2

    .line 1433
    invoke-virtual {p1}, Landroid/graphics/Typeface;->isBold()Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    .line 1434
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p2

    iput-object p2, p0, Lcom/zyyoona7/wheel/WheelView;->mNormalTypeface:Landroid/graphics/Typeface;

    .line 1435
    iput-object p1, p0, Lcom/zyyoona7/wheel/WheelView;->mBoldTypeface:Landroid/graphics/Typeface;

    goto :goto_0

    .line 1437
    :cond_1
    iput-object p1, p0, Lcom/zyyoona7/wheel/WheelView;->mNormalTypeface:Landroid/graphics/Typeface;

    const/4 p2, 0x1

    .line 1438
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/zyyoona7/wheel/WheelView;->mBoldTypeface:Landroid/graphics/Typeface;

    .line 1441
    :goto_0
    iget-object p1, p0, Lcom/zyyoona7/wheel/WheelView;->mPaint:Landroid/graphics/Paint;

    iget-object p2, p0, Lcom/zyyoona7/wheel/WheelView;->mBoldTypeface:Landroid/graphics/Typeface;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_1

    .line 1443
    :cond_2
    iget-object p2, p0, Lcom/zyyoona7/wheel/WheelView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1445
    :goto_1
    invoke-direct {p0}, Lcom/zyyoona7/wheel/WheelView;->calculateTextSize()V

    .line 1446
    invoke-direct {p0}, Lcom/zyyoona7/wheel/WheelView;->calculateDrawStart()V

    .line 1448
    iget p1, p0, Lcom/zyyoona7/wheel/WheelView;->mSelectedItemPosition:I

    iget p2, p0, Lcom/zyyoona7/wheel/WheelView;->mItemHeight:I

    mul-int/2addr p1, p2

    iput p1, p0, Lcom/zyyoona7/wheel/WheelView;->mScrollOffsetY:I

    .line 1449
    invoke-direct {p0}, Lcom/zyyoona7/wheel/WheelView;->calculateLimitY()V

    .line 1450
    invoke-virtual {p0}, Lcom/zyyoona7/wheel/WheelView;->requestLayout()V

    .line 1451
    invoke-virtual {p0}, Lcom/zyyoona7/wheel/WheelView;->invalidate()V

    :cond_3
    :goto_2
    return-void
.end method

.method public setVisibleItems(I)V
    .locals 1

    .line 1698
    iget v0, p0, Lcom/zyyoona7/wheel/WheelView;->mVisibleItems:I

    if-ne v0, p1, :cond_0

    return-void

    .line 1701
    :cond_0
    invoke-direct {p0, p1}, Lcom/zyyoona7/wheel/WheelView;->adjustVisibleItems(I)I

    move-result p1

    iput p1, p0, Lcom/zyyoona7/wheel/WheelView;->mVisibleItems:I

    const/4 p1, 0x0

    .line 1702
    iput p1, p0, Lcom/zyyoona7/wheel/WheelView;->mScrollOffsetY:I

    .line 1703
    invoke-virtual {p0}, Lcom/zyyoona7/wheel/WheelView;->requestLayout()V

    .line 1704
    invoke-virtual {p0}, Lcom/zyyoona7/wheel/WheelView;->invalidate()V

    return-void
.end method
