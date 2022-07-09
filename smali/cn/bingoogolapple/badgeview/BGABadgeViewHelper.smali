.class public Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;
.super Ljava/lang/Object;
.source "BGABadgeViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/bingoogolapple/badgeview/BGABadgeViewHelper$BadgeGravity;
    }
.end annotation


# instance fields
.field private mBadgeBgColor:I

.field private mBadgeBorderColor:I

.field private mBadgeBorderWidth:I

.field private mBadgeDragExtraRectF:Landroid/graphics/RectF;

.field private mBadgeGravity:Lcn/bingoogolapple/badgeview/BGABadgeViewHelper$BadgeGravity;

.field private mBadgeHorizontalMargin:I

.field private mBadgeNumberRect:Landroid/graphics/Rect;

.field private mBadgePadding:I

.field private mBadgePaint:Landroid/graphics/Paint;

.field private mBadgeRectF:Landroid/graphics/RectF;

.field private mBadgeText:Ljava/lang/String;

.field private mBadgeTextColor:I

.field private mBadgeTextSize:I

.field private mBadgeVerticalMargin:I

.field private mBadgeable:Lcn/bingoogolapple/badgeview/BGABadgeable;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mDelegate:Lcn/bingoogolapple/badgeview/BGADragDismissDelegate;

.field private mDragExtra:I

.field private mDraggable:Z

.field private mDropBadgeView:Lcn/bingoogolapple/badgeview/BGADragBadgeView;

.field private mIsDragging:Z

.field private mIsResumeTravel:Z

.field private mIsShowBadge:Z

.field private mIsShowDrawable:Z


# direct methods
.method public constructor <init>(Lcn/bingoogolapple/badgeview/BGABadgeable;Landroid/content/Context;Landroid/util/AttributeSet;Lcn/bingoogolapple/badgeview/BGABadgeViewHelper$BadgeGravity;)V
    .locals 1

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 121
    iput-boolean v0, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mIsShowDrawable:Z

    .line 124
    iput-object p1, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeable:Lcn/bingoogolapple/badgeview/BGABadgeable;

    .line 125
    invoke-direct {p0, p2, p4}, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->initDefaultAttrs(Landroid/content/Context;Lcn/bingoogolapple/badgeview/BGABadgeViewHelper$BadgeGravity;)V

    .line 126
    invoke-direct {p0, p2, p3}, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->initCustomAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 127
    invoke-direct {p0}, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->afterInitDefaultAndCustomAttrs()V

    .line 128
    new-instance p1, Lcn/bingoogolapple/badgeview/BGADragBadgeView;

    invoke-direct {p1, p2, p0}, Lcn/bingoogolapple/badgeview/BGADragBadgeView;-><init>(Landroid/content/Context;Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;)V

    iput-object p1, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mDropBadgeView:Lcn/bingoogolapple/badgeview/BGADragBadgeView;

    return-void
.end method

.method private afterInitDefaultAndCustomAttrs()V
    .locals 2

    .line 204
    iget-object v0, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method

.method private drawDrawableBadge(Landroid/graphics/Canvas;)V
    .locals 4

    .line 343
    iget-object v0, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeable:Lcn/bingoogolapple/badgeview/BGABadgeable;

    invoke-interface {v1}, Lcn/bingoogolapple/badgeview/BGABadgeable;->getWidth()I

    move-result v1

    iget v2, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeHorizontalMargin:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 344
    iget-object v0, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeRectF:Landroid/graphics/RectF;

    iget v1, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeVerticalMargin:I

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 345
    sget-object v0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper$1;->$SwitchMap$cn$bingoogolapple$badgeview$BGABadgeViewHelper$BadgeGravity:[I

    iget-object v1, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeGravity:Lcn/bingoogolapple/badgeview/BGABadgeViewHelper$BadgeGravity;

    invoke-virtual {v1}, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper$BadgeGravity;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 353
    :cond_0
    iget-object v0, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeable:Lcn/bingoogolapple/badgeview/BGABadgeable;

    invoke-interface {v1}, Lcn/bingoogolapple/badgeview/BGABadgeable;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeVerticalMargin:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    goto :goto_0

    .line 350
    :cond_1
    iget-object v0, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeRectF:Landroid/graphics/RectF;

    iget-object v2, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeable:Lcn/bingoogolapple/badgeview/BGABadgeable;

    invoke-interface {v2}, Lcn/bingoogolapple/badgeview/BGABadgeable;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/2addr v2, v1

    int-to-float v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    goto :goto_0

    .line 347
    :cond_2
    iget-object v0, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeRectF:Landroid/graphics/RectF;

    iget v1, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeVerticalMargin:I

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 358
    :goto_0
    iget-object v0, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeRectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeRectF:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 359
    iget-object p1, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeRectF:Landroid/graphics/RectF;

    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->right:F

    .line 360
    iget-object p1, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeRectF:Landroid/graphics/RectF;

    iget v0, p1, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method private drawTextBadge(Landroid/graphics/Canvas;)V
    .locals 10

    .line 370
    iget-object v0, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 371
    iget-object v0, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeText:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 374
    :goto_0
    iget-object v1, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgePaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeNumberRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 376
    iget-object v1, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeNumberRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget v2, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgePadding:I

    const/4 v3, 0x2

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 379
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 382
    :cond_1
    iget-object v2, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeNumberRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget v5, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgePadding:I

    mul-int/2addr v5, v3

    add-int/2addr v2, v5

    goto :goto_2

    :cond_2
    :goto_1
    move v2, v1

    .line 386
    :goto_2
    iget-object v5, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeRectF:Landroid/graphics/RectF;

    iget v6, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeVerticalMargin:I

    int-to-float v6, v6

    iput v6, v5, Landroid/graphics/RectF;->top:F

    .line 387
    iget-object v5, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeRectF:Landroid/graphics/RectF;

    iget-object v6, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeable:Lcn/bingoogolapple/badgeview/BGABadgeable;

    invoke-interface {v6}, Lcn/bingoogolapple/badgeview/BGABadgeable;->getHeight()I

    move-result v6

    iget v7, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeVerticalMargin:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    iput v6, v5, Landroid/graphics/RectF;->bottom:F

    .line 388
    sget-object v5, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper$1;->$SwitchMap$cn$bingoogolapple$badgeview$BGABadgeViewHelper$BadgeGravity:[I

    iget-object v6, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeGravity:Lcn/bingoogolapple/badgeview/BGABadgeViewHelper$BadgeGravity;

    invoke-virtual {v6}, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper$BadgeGravity;->ordinal()I

    move-result v6

    aget v5, v5, v6

    if-eq v5, v4, :cond_5

    if-eq v5, v3, :cond_4

    const/4 v4, 0x3

    if-eq v5, v4, :cond_3

    goto :goto_3

    .line 397
    :cond_3
    iget-object v4, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeRectF:Landroid/graphics/RectF;

    iget v5, v4, Landroid/graphics/RectF;->bottom:F

    int-to-float v6, v1

    sub-float/2addr v5, v6

    iput v5, v4, Landroid/graphics/RectF;->top:F

    goto :goto_3

    .line 393
    :cond_4
    iget-object v4, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeRectF:Landroid/graphics/RectF;

    iget-object v5, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeable:Lcn/bingoogolapple/badgeview/BGABadgeable;

    invoke-interface {v5}, Lcn/bingoogolapple/badgeview/BGABadgeable;->getHeight()I

    move-result v5

    sub-int/2addr v5, v1

    div-int/2addr v5, v3

    int-to-float v5, v5

    iput v5, v4, Landroid/graphics/RectF;->top:F

    .line 394
    iget-object v4, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeRectF:Landroid/graphics/RectF;

    iget v5, v4, Landroid/graphics/RectF;->top:F

    int-to-float v6, v1

    add-float/2addr v5, v6

    iput v5, v4, Landroid/graphics/RectF;->bottom:F

    goto :goto_3

    .line 390
    :cond_5
    iget-object v4, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeRectF:Landroid/graphics/RectF;

    iget v5, v4, Landroid/graphics/RectF;->top:F

    int-to-float v6, v1

    add-float/2addr v5, v6

    iput v5, v4, Landroid/graphics/RectF;->bottom:F

    .line 404
    :goto_3
    iget-object v4, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeRectF:Landroid/graphics/RectF;

    iget-object v5, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeable:Lcn/bingoogolapple/badgeview/BGABadgeable;

    invoke-interface {v5}, Lcn/bingoogolapple/badgeview/BGABadgeable;->getWidth()I

    move-result v5

    iget v6, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeHorizontalMargin:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iput v5, v4, Landroid/graphics/RectF;->right:F

    .line 405
    iget-object v4, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeRectF:Landroid/graphics/RectF;

    iget v5, v4, Landroid/graphics/RectF;->right:F

    int-to-float v6, v2

    sub-float/2addr v5, v6

    iput v5, v4, Landroid/graphics/RectF;->left:F

    .line 407
    iget v4, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeBorderWidth:I

    if-lez v4, :cond_6

    .line 409
    iget-object v4, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgePaint:Landroid/graphics/Paint;

    iget v5, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeBorderColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 411
    iget-object v4, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeRectF:Landroid/graphics/RectF;

    div-int/lit8 v5, v1, 0x2

    int-to-float v5, v5

    iget-object v6, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v5, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 414
    iget-object v4, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgePaint:Landroid/graphics/Paint;

    iget v5, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeBgColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 416
    new-instance v4, Landroid/graphics/RectF;

    iget-object v5, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeRectF:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    iget v6, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeBorderWidth:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    iget-object v6, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeRectF:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    iget v7, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeBorderWidth:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    iget-object v7, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeRectF:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    iget v8, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeBorderWidth:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    iget-object v8, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeRectF:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    iget v9, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeBorderWidth:I

    int-to-float v9, v9

    sub-float/2addr v8, v9

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v5, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeBorderWidth:I

    mul-int/lit8 v6, v5, 0x2

    sub-int v6, v1, v6

    div-int/2addr v6, v3

    int-to-float v6, v6

    mul-int/2addr v5, v3

    sub-int/2addr v1, v5

    div-int/2addr v1, v3

    int-to-float v1, v1

    iget-object v5, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v6, v1, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_4

    .line 419
    :cond_6
    iget-object v4, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgePaint:Landroid/graphics/Paint;

    iget v5, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeBgColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 421
    iget-object v4, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeRectF:Landroid/graphics/RectF;

    div-int/2addr v1, v3

    int-to-float v1, v1

    iget-object v5, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v1, v1, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 425
    :goto_4
    iget-object v1, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeText:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 427
    iget-object v1, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgePaint:Landroid/graphics/Paint;

    iget v4, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeTextColor:I

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 429
    iget-object v1, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeRectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    div-int/2addr v2, v3

    int-to-float v2, v2

    add-float/2addr v1, v2

    .line 431
    iget-object v2, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeRectF:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iget v3, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgePadding:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    .line 433
    iget-object v3, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_7
    return-void
.end method

.method private initCustomAttr(ILandroid/content/res/TypedArray;)V
    .locals 1

    .line 175
    sget v0, Lcn/bingoogolapple/badgeview/R$styleable;->BGABadgeView_badge_bgColor:I

    if-ne p1, v0, :cond_0

    .line 176
    iget v0, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeBgColor:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeBgColor:I

    goto/16 :goto_0

    .line 177
    :cond_0
    sget v0, Lcn/bingoogolapple/badgeview/R$styleable;->BGABadgeView_badge_textColor:I

    if-ne p1, v0, :cond_1

    .line 178
    iget v0, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeTextColor:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeTextColor:I

    goto/16 :goto_0

    .line 179
    :cond_1
    sget v0, Lcn/bingoogolapple/badgeview/R$styleable;->BGABadgeView_badge_textSize:I

    if-ne p1, v0, :cond_2

    .line 180
    iget v0, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeTextSize:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeTextSize:I

    goto/16 :goto_0

    .line 181
    :cond_2
    sget v0, Lcn/bingoogolapple/badgeview/R$styleable;->BGABadgeView_badge_verticalMargin:I

    if-ne p1, v0, :cond_3

    .line 182
    iget v0, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeVerticalMargin:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeVerticalMargin:I

    goto/16 :goto_0

    .line 183
    :cond_3
    sget v0, Lcn/bingoogolapple/badgeview/R$styleable;->BGABadgeView_badge_horizontalMargin:I

    if-ne p1, v0, :cond_4

    .line 184
    iget v0, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeHorizontalMargin:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeHorizontalMargin:I

    goto :goto_0

    .line 185
    :cond_4
    sget v0, Lcn/bingoogolapple/badgeview/R$styleable;->BGABadgeView_badge_padding:I

    if-ne p1, v0, :cond_5

    .line 186
    iget v0, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgePadding:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgePadding:I

    goto :goto_0

    .line 187
    :cond_5
    sget v0, Lcn/bingoogolapple/badgeview/R$styleable;->BGABadgeView_badge_gravity:I

    if-ne p1, v0, :cond_6

    .line 188
    iget-object v0, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeGravity:Lcn/bingoogolapple/badgeview/BGABadgeViewHelper$BadgeGravity;

    invoke-virtual {v0}, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper$BadgeGravity;->ordinal()I

    move-result v0

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    .line 189
    invoke-static {}, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper$BadgeGravity;->values()[Lcn/bingoogolapple/badgeview/BGABadgeViewHelper$BadgeGravity;

    move-result-object p2

    aget-object p1, p2, p1

    iput-object p1, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeGravity:Lcn/bingoogolapple/badgeview/BGABadgeViewHelper$BadgeGravity;

    goto :goto_0

    .line 190
    :cond_6
    sget v0, Lcn/bingoogolapple/badgeview/R$styleable;->BGABadgeView_badge_draggable:I

    if-ne p1, v0, :cond_7

    .line 191
    iget-boolean v0, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mDraggable:Z

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mDraggable:Z

    goto :goto_0

    .line 192
    :cond_7
    sget v0, Lcn/bingoogolapple/badgeview/R$styleable;->BGABadgeView_badge_isResumeTravel:I

    if-ne p1, v0, :cond_8

    .line 193
    iget-boolean v0, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mIsResumeTravel:Z

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mIsResumeTravel:Z

    goto :goto_0

    .line 194
    :cond_8
    sget v0, Lcn/bingoogolapple/badgeview/R$styleable;->BGABadgeView_badge_borderWidth:I

    if-ne p1, v0, :cond_9

    .line 195
    iget v0, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeBorderWidth:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeBorderWidth:I

    goto :goto_0

    .line 196
    :cond_9
    sget v0, Lcn/bingoogolapple/badgeview/R$styleable;->BGABadgeView_badge_borderColor:I

    if-ne p1, v0, :cond_a

    .line 197
    iget v0, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeBorderColor:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeBorderColor:I

    goto :goto_0

    .line 198
    :cond_a
    sget v0, Lcn/bingoogolapple/badgeview/R$styleable;->BGABadgeView_badge_dragExtra:I

    if-ne p1, v0, :cond_b

    .line 199
    iget v0, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mDragExtra:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mDragExtra:I

    :cond_b
    :goto_0
    return-void
.end method

.method private initCustomAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 166
    sget-object v0, Lcn/bingoogolapple/badgeview/R$styleable;->BGABadgeView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 167
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 169
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    invoke-direct {p0, v1, p1}, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->initCustomAttr(ILandroid/content/res/TypedArray;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 171
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private initDefaultAttrs(Landroid/content/Context;Lcn/bingoogolapple/badgeview/BGABadgeViewHelper$BadgeGravity;)V
    .locals 3

    .line 132
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeNumberRect:Landroid/graphics/Rect;

    .line 133
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeRectF:Landroid/graphics/RectF;

    const/high16 v0, -0x10000

    .line 134
    iput v0, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeBgColor:I

    const/4 v0, -0x1

    .line 135
    iput v0, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeTextColor:I

    const/high16 v1, 0x41200000    # 10.0f

    .line 136
    invoke-static {p1, v1}, Lcn/bingoogolapple/badgeview/BGABadgeViewUtil;->sp2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeTextSize:I

    .line 138
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgePaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    .line 139
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 140
    iget-object v1, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 142
    iget-object v1, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const/high16 v1, 0x40800000    # 4.0f

    .line 144
    invoke-static {p1, v1}, Lcn/bingoogolapple/badgeview/BGABadgeViewUtil;->dp2px(Landroid/content/Context;F)I

    move-result v2

    iput v2, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgePadding:I

    .line 145
    invoke-static {p1, v1}, Lcn/bingoogolapple/badgeview/BGABadgeViewUtil;->dp2px(Landroid/content/Context;F)I

    move-result v2

    iput v2, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeVerticalMargin:I

    .line 146
    invoke-static {p1, v1}, Lcn/bingoogolapple/badgeview/BGABadgeViewUtil;->dp2px(Landroid/content/Context;F)I

    move-result v2

    iput v2, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeHorizontalMargin:I

    .line 148
    iput-object p2, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeGravity:Lcn/bingoogolapple/badgeview/BGABadgeViewHelper$BadgeGravity;

    const/4 p2, 0x0

    .line 149
    iput-boolean p2, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mIsShowBadge:Z

    const/4 v2, 0x0

    .line 151
    iput-object v2, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeText:Ljava/lang/String;

    .line 153
    iput-object v2, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBitmap:Landroid/graphics/Bitmap;

    .line 155
    iput-boolean p2, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mIsDragging:Z

    .line 157
    iput-boolean p2, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mDraggable:Z

    .line 159
    iput v0, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeBorderColor:I

    .line 161
    invoke-static {p1, v1}, Lcn/bingoogolapple/badgeview/BGABadgeViewUtil;->dp2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mDragExtra:I

    .line 162
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeDragExtraRectF:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public drawBadge(Landroid/graphics/Canvas;)V
    .locals 1

    .line 328
    iget-boolean v0, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mIsShowBadge:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mIsDragging:Z

    if-nez v0, :cond_1

    .line 329
    iget-boolean v0, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mIsShowDrawable:Z

    if-eqz v0, :cond_0

    .line 330
    invoke-direct {p0, p1}, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->drawDrawableBadge(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 332
    :cond_0
    invoke-direct {p0, p1}, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->drawTextBadge(Landroid/graphics/Canvas;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public endDragWithDismiss()V
    .locals 2

    .line 317
    invoke-virtual {p0}, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->hiddenBadge()V

    .line 318
    iget-object v0, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mDelegate:Lcn/bingoogolapple/badgeview/BGADragDismissDelegate;

    if-eqz v0, :cond_0

    .line 319
    iget-object v1, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeable:Lcn/bingoogolapple/badgeview/BGABadgeable;

    invoke-interface {v0, v1}, Lcn/bingoogolapple/badgeview/BGADragDismissDelegate;->onDismiss(Lcn/bingoogolapple/badgeview/BGABadgeable;)V

    :cond_0
    return-void
.end method

.method public endDragWithoutDismiss()V
    .locals 1

    .line 324
    iget-object v0, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeable:Lcn/bingoogolapple/badgeview/BGABadgeable;

    invoke-interface {v0}, Lcn/bingoogolapple/badgeview/BGABadgeable;->postInvalidate()V

    return-void
.end method

.method public getBadgeBgColor()I
    .locals 1

    .line 481
    iget v0, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeBgColor:I

    return v0
.end method

.method public getBadgePadding()I
    .locals 1

    .line 473
    iget v0, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgePadding:I

    return v0
.end method

.method public getBadgeRectF()Landroid/graphics/RectF;
    .locals 1

    .line 469
    iget-object v0, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeRectF:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getBadgeText()Ljava/lang/String;
    .locals 1

    .line 477
    iget-object v0, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeText:Ljava/lang/String;

    return-object v0
.end method

.method public getBadgeTextColor()I
    .locals 1

    .line 485
    iget v0, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeTextColor:I

    return v0
.end method

.method public getBadgeTextSize()I
    .locals 1

    .line 489
    iget v0, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeTextSize:I

    return v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 493
    iget-object v0, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getRootView()Landroid/view/View;
    .locals 1

    .line 501
    iget-object v0, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeable:Lcn/bingoogolapple/badgeview/BGABadgeable;

    invoke-interface {v0}, Lcn/bingoogolapple/badgeview/BGABadgeable;->getRootView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public hiddenBadge()V
    .locals 1

    const/4 v0, 0x0

    .line 449
    iput-boolean v0, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mIsShowBadge:Z

    .line 450
    iget-object v0, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeable:Lcn/bingoogolapple/badgeview/BGABadgeable;

    invoke-interface {v0}, Lcn/bingoogolapple/badgeview/BGABadgeable;->postInvalidate()V

    return-void
.end method

.method public isDraggable()Z
    .locals 1

    .line 513
    iget-boolean v0, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mDraggable:Z

    return v0
.end method

.method public isDragging()Z
    .locals 1

    .line 509
    iget-boolean v0, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mIsDragging:Z

    return v0
.end method

.method public isResumeTravel()Z
    .locals 1

    .line 505
    iget-boolean v0, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mIsResumeTravel:Z

    return v0
.end method

.method public isShowBadge()Z
    .locals 1

    .line 454
    iget-boolean v0, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mIsShowBadge:Z

    return v0
.end method

.method public isShowDrawable()Z
    .locals 1

    .line 465
    iget-boolean v0, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mIsShowDrawable:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 276
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    goto/16 :goto_0

    .line 297
    :cond_0
    iget-boolean v0, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mIsDragging:Z

    if-eqz v0, :cond_4

    .line 298
    iget-object v0, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mDropBadgeView:Lcn/bingoogolapple/badgeview/BGADragBadgeView;

    invoke-virtual {v0, p1}, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return v1

    .line 304
    :cond_1
    iget-boolean v0, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mIsDragging:Z

    if-eqz v0, :cond_4

    .line 305
    iget-object v0, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mDropBadgeView:Lcn/bingoogolapple/badgeview/BGADragBadgeView;

    invoke-virtual {v0, p1}, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p1, 0x0

    .line 306
    iput-boolean p1, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mIsDragging:Z

    return v1

    .line 278
    :cond_2
    iget-object v0, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeDragExtraRectF:Landroid/graphics/RectF;

    iget-object v2, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeRectF:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mDragExtra:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->left:F

    .line 279
    iget-object v0, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeDragExtraRectF:Landroid/graphics/RectF;

    iget-object v2, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeRectF:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mDragExtra:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->top:F

    .line 280
    iget-object v0, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeDragExtraRectF:Landroid/graphics/RectF;

    iget-object v2, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeRectF:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget v3, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mDragExtra:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->right:F

    .line 281
    iget-object v0, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeDragExtraRectF:Landroid/graphics/RectF;

    iget-object v2, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeRectF:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iget v3, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mDragExtra:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->bottom:F

    .line 283
    iget v0, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeBorderWidth:I

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mIsShowDrawable:Z

    if-eqz v0, :cond_4

    :cond_3
    iget-boolean v0, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mDraggable:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mIsShowBadge:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeDragExtraRectF:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 284
    iput-boolean v1, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mIsDragging:Z

    .line 285
    iget-object v0, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeable:Lcn/bingoogolapple/badgeview/BGABadgeable;

    invoke-interface {v0}, Lcn/bingoogolapple/badgeview/BGABadgeable;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 287
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 288
    iget-object v2, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeable:Lcn/bingoogolapple/badgeview/BGABadgeable;

    invoke-interface {v2, v0}, Lcn/bingoogolapple/badgeview/BGABadgeable;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 289
    iget-object v2, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mDropBadgeView:Lcn/bingoogolapple/badgeview/BGADragBadgeView;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget-object v4, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeRectF:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v4

    iget-object v4, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeRectF:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget-object v4, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeRectF:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, v4

    iget-object v4, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeRectF:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    div-float/2addr v4, v5

    add-float/2addr v0, v4

    invoke-virtual {v2, v3, v0}, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->setStickCenter(FF)V

    .line 291
    iget-object v0, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mDropBadgeView:Lcn/bingoogolapple/badgeview/BGADragBadgeView;

    invoke-virtual {v0, p1}, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 292
    iget-object p1, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeable:Lcn/bingoogolapple/badgeview/BGABadgeable;

    invoke-interface {p1}, Lcn/bingoogolapple/badgeview/BGABadgeable;->postInvalidate()V

    return v1

    .line 313
    :cond_4
    :goto_0
    iget-object v0, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeable:Lcn/bingoogolapple/badgeview/BGABadgeable;

    invoke-interface {v0, p1}, Lcn/bingoogolapple/badgeview/BGABadgeable;->callSuperOnTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setBadgeBgColorInt(I)V
    .locals 0

    .line 208
    iput p1, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeBgColor:I

    .line 209
    iget-object p1, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeable:Lcn/bingoogolapple/badgeview/BGABadgeable;

    invoke-interface {p1}, Lcn/bingoogolapple/badgeview/BGABadgeable;->postInvalidate()V

    return-void
.end method

.method public setBadgeBorderColorInt(I)V
    .locals 0

    .line 271
    iput p1, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeBorderColor:I

    .line 272
    iget-object p1, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeable:Lcn/bingoogolapple/badgeview/BGABadgeable;

    invoke-interface {p1}, Lcn/bingoogolapple/badgeview/BGABadgeable;->postInvalidate()V

    return-void
.end method

.method public setBadgeBorderWidthDp(I)V
    .locals 1

    if-ltz p1, :cond_0

    .line 265
    iget-object v0, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeable:Lcn/bingoogolapple/badgeview/BGABadgeable;

    invoke-interface {v0}, Lcn/bingoogolapple/badgeview/BGABadgeable;->getContext()Landroid/content/Context;

    move-result-object v0

    int-to-float p1, p1

    invoke-static {v0, p1}, Lcn/bingoogolapple/badgeview/BGABadgeViewUtil;->dp2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeBorderWidth:I

    .line 266
    iget-object p1, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeable:Lcn/bingoogolapple/badgeview/BGABadgeable;

    invoke-interface {p1}, Lcn/bingoogolapple/badgeview/BGABadgeable;->postInvalidate()V

    :cond_0
    return-void
.end method

.method public setBadgeGravity(Lcn/bingoogolapple/badgeview/BGABadgeViewHelper$BadgeGravity;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 248
    iput-object p1, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeGravity:Lcn/bingoogolapple/badgeview/BGABadgeViewHelper$BadgeGravity;

    .line 249
    iget-object p1, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeable:Lcn/bingoogolapple/badgeview/BGABadgeable;

    invoke-interface {p1}, Lcn/bingoogolapple/badgeview/BGABadgeable;->postInvalidate()V

    :cond_0
    return-void
.end method

.method public setBadgeHorizontalMarginDp(I)V
    .locals 1

    if-ltz p1, :cond_0

    .line 234
    iget-object v0, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeable:Lcn/bingoogolapple/badgeview/BGABadgeable;

    invoke-interface {v0}, Lcn/bingoogolapple/badgeview/BGABadgeable;->getContext()Landroid/content/Context;

    move-result-object v0

    int-to-float p1, p1

    invoke-static {v0, p1}, Lcn/bingoogolapple/badgeview/BGABadgeViewUtil;->dp2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeHorizontalMargin:I

    .line 235
    iget-object p1, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeable:Lcn/bingoogolapple/badgeview/BGABadgeable;

    invoke-interface {p1}, Lcn/bingoogolapple/badgeview/BGABadgeable;->postInvalidate()V

    :cond_0
    return-void
.end method

.method public setBadgePaddingDp(I)V
    .locals 1

    if-ltz p1, :cond_0

    .line 241
    iget-object v0, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeable:Lcn/bingoogolapple/badgeview/BGABadgeable;

    invoke-interface {v0}, Lcn/bingoogolapple/badgeview/BGABadgeable;->getContext()Landroid/content/Context;

    move-result-object v0

    int-to-float p1, p1

    invoke-static {v0, p1}, Lcn/bingoogolapple/badgeview/BGABadgeViewUtil;->dp2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgePadding:I

    .line 242
    iget-object p1, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeable:Lcn/bingoogolapple/badgeview/BGABadgeable;

    invoke-interface {p1}, Lcn/bingoogolapple/badgeview/BGABadgeable;->postInvalidate()V

    :cond_0
    return-void
.end method

.method public setBadgeTextColorInt(I)V
    .locals 0

    .line 213
    iput p1, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeTextColor:I

    .line 214
    iget-object p1, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeable:Lcn/bingoogolapple/badgeview/BGABadgeable;

    invoke-interface {p1}, Lcn/bingoogolapple/badgeview/BGABadgeable;->postInvalidate()V

    return-void
.end method

.method public setBadgeTextSizeSp(I)V
    .locals 1

    if-ltz p1, :cond_0

    .line 219
    iget-object v0, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeable:Lcn/bingoogolapple/badgeview/BGABadgeable;

    invoke-interface {v0}, Lcn/bingoogolapple/badgeview/BGABadgeable;->getContext()Landroid/content/Context;

    move-result-object v0

    int-to-float p1, p1

    invoke-static {v0, p1}, Lcn/bingoogolapple/badgeview/BGABadgeViewUtil;->sp2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeTextSize:I

    .line 220
    iget-object v0, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgePaint:Landroid/graphics/Paint;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 221
    iget-object p1, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeable:Lcn/bingoogolapple/badgeview/BGABadgeable;

    invoke-interface {p1}, Lcn/bingoogolapple/badgeview/BGABadgeable;->postInvalidate()V

    :cond_0
    return-void
.end method

.method public setBadgeVerticalMarginDp(I)V
    .locals 1

    if-ltz p1, :cond_0

    .line 227
    iget-object v0, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeable:Lcn/bingoogolapple/badgeview/BGABadgeable;

    invoke-interface {v0}, Lcn/bingoogolapple/badgeview/BGABadgeable;->getContext()Landroid/content/Context;

    move-result-object v0

    int-to-float p1, p1

    invoke-static {v0, p1}, Lcn/bingoogolapple/badgeview/BGABadgeViewUtil;->dp2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeVerticalMargin:I

    .line 228
    iget-object p1, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeable:Lcn/bingoogolapple/badgeview/BGABadgeable;

    invoke-interface {p1}, Lcn/bingoogolapple/badgeview/BGABadgeable;->postInvalidate()V

    :cond_0
    return-void
.end method

.method public setDragDismissDelegate(Lcn/bingoogolapple/badgeview/BGADragDismissDelegate;)V
    .locals 0

    .line 497
    iput-object p1, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mDelegate:Lcn/bingoogolapple/badgeview/BGADragDismissDelegate;

    return-void
.end method

.method public setDraggable(Z)V
    .locals 0

    .line 254
    iput-boolean p1, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mDraggable:Z

    .line 255
    iget-object p1, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeable:Lcn/bingoogolapple/badgeview/BGABadgeable;

    invoke-interface {p1}, Lcn/bingoogolapple/badgeview/BGABadgeable;->postInvalidate()V

    return-void
.end method

.method public setIsResumeTravel(Z)V
    .locals 0

    .line 259
    iput-boolean p1, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mIsResumeTravel:Z

    .line 260
    iget-object p1, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeable:Lcn/bingoogolapple/badgeview/BGABadgeable;

    invoke-interface {p1}, Lcn/bingoogolapple/badgeview/BGABadgeable;->postInvalidate()V

    return-void
.end method

.method public showCirclePointBadge()V
    .locals 1

    const/4 v0, 0x0

    .line 438
    invoke-virtual {p0, v0}, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->showTextBadge(Ljava/lang/String;)V

    return-void
.end method

.method public showDrawable(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 458
    iput-object p1, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBitmap:Landroid/graphics/Bitmap;

    const/4 p1, 0x1

    .line 459
    iput-boolean p1, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mIsShowDrawable:Z

    .line 460
    iput-boolean p1, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mIsShowBadge:Z

    .line 461
    iget-object p1, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeable:Lcn/bingoogolapple/badgeview/BGABadgeable;

    invoke-interface {p1}, Lcn/bingoogolapple/badgeview/BGABadgeable;->postInvalidate()V

    return-void
.end method

.method public showTextBadge(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 442
    iput-boolean v0, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mIsShowDrawable:Z

    .line 443
    iput-object p1, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeText:Ljava/lang/String;

    const/4 p1, 0x1

    .line 444
    iput-boolean p1, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mIsShowBadge:Z

    .line 445
    iget-object p1, p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->mBadgeable:Lcn/bingoogolapple/badgeview/BGABadgeable;

    invoke-interface {p1}, Lcn/bingoogolapple/badgeview/BGABadgeable;->postInvalidate()V

    return-void
.end method
