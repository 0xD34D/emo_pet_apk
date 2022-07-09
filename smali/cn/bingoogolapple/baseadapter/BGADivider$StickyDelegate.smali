.class public abstract Lcn/bingoogolapple/baseadapter/BGADivider$StickyDelegate;
.super Lcn/bingoogolapple/baseadapter/BGADivider$SimpleDelegate;
.source "BGADivider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/bingoogolapple/baseadapter/BGADivider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "StickyDelegate"
.end annotation


# instance fields
.field protected mCategoryBackgroundColor:I

.field protected mCategoryHeight:I

.field protected mCategoryPaddingLeft:I

.field protected mCategoryTextColor:I

.field protected mCategoryTextOffset:F

.field protected mCategoryTextSize:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 539
    invoke-direct {p0}, Lcn/bingoogolapple/baseadapter/BGADivider$SimpleDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public calculateCategoryTextOffset()V
    .locals 5

    .line 566
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGADivider$StickyDelegate;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcn/bingoogolapple/baseadapter/BGADivider$StickyDelegate;->mCategoryTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 568
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 569
    iget-object v1, p0, Lcn/bingoogolapple/baseadapter/BGADivider$StickyDelegate;->mPaint:Landroid/graphics/Paint;

    const-string v2, "\u738b\u6d69"

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 570
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 571
    iget v1, p0, Lcn/bingoogolapple/baseadapter/BGADivider$StickyDelegate;->mCategoryHeight:I

    sub-int/2addr v1, v0

    int-to-float v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcn/bingoogolapple/baseadapter/BGADivider$StickyDelegate;->mCategoryTextOffset:F

    return-void
.end method

.method protected drawCategory(Lcn/bingoogolapple/baseadapter/BGADivider;Landroid/graphics/Canvas;IIILjava/lang/String;)V
    .locals 7

    .line 660
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGADivider$StickyDelegate;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcn/bingoogolapple/baseadapter/BGADivider$StickyDelegate;->mCategoryBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 661
    invoke-virtual {p1}, Lcn/bingoogolapple/baseadapter/BGADivider;->getMarginLeft()I

    move-result v0

    sub-int/2addr p3, v0

    int-to-float v1, p3

    iget p3, p0, Lcn/bingoogolapple/baseadapter/BGADivider$StickyDelegate;->mCategoryHeight:I

    sub-int p3, p5, p3

    int-to-float v2, p3

    invoke-virtual {p1}, Lcn/bingoogolapple/baseadapter/BGADivider;->getMarginRight()I

    move-result p1

    add-int/2addr p4, p1

    int-to-float v3, p4

    int-to-float p1, p5

    iget-object v5, p0, Lcn/bingoogolapple/baseadapter/BGADivider$StickyDelegate;->mPaint:Landroid/graphics/Paint;

    move-object v0, p2

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 665
    iget-object p3, p0, Lcn/bingoogolapple/baseadapter/BGADivider$StickyDelegate;->mPaint:Landroid/graphics/Paint;

    iget p4, p0, Lcn/bingoogolapple/baseadapter/BGADivider$StickyDelegate;->mCategoryTextColor:I

    invoke-virtual {p3, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 666
    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result v3

    iget p3, p0, Lcn/bingoogolapple/baseadapter/BGADivider$StickyDelegate;->mCategoryPaddingLeft:I

    int-to-float v4, p3

    iget p3, p0, Lcn/bingoogolapple/baseadapter/BGADivider$StickyDelegate;->mCategoryTextOffset:F

    sub-float v5, p1, p3

    iget-object v6, p0, Lcn/bingoogolapple/baseadapter/BGADivider$StickyDelegate;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    move-object v1, p6

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected drawOverCategory(Lcn/bingoogolapple/baseadapter/BGADivider;Landroid/graphics/Canvas;IIILjava/lang/String;)V
    .locals 0

    .line 652
    invoke-virtual/range {p0 .. p6}, Lcn/bingoogolapple/baseadapter/BGADivider$StickyDelegate;->drawCategory(Lcn/bingoogolapple/baseadapter/BGADivider;Landroid/graphics/Canvas;IIILjava/lang/String;)V

    return-void
.end method

.method public drawOverVertical(Lcn/bingoogolapple/baseadapter/BGADivider;Landroid/graphics/Canvas;IIIII)V
    .locals 7

    .line 614
    invoke-virtual {p0}, Lcn/bingoogolapple/baseadapter/BGADivider$StickyDelegate;->getFirstVisibleItemPosition()I

    move-result p7

    add-int/lit8 p7, p7, 0x1

    if-ne p6, p7, :cond_1

    .line 616
    iget p7, p0, Lcn/bingoogolapple/baseadapter/BGADivider$StickyDelegate;->mCategoryHeight:I

    mul-int/lit8 v0, p7, 0x2

    sub-int/2addr v0, p5

    if-lez v0, :cond_0

    .line 618
    invoke-virtual {p0, p6}, Lcn/bingoogolapple/baseadapter/BGADivider$StickyDelegate;->isCategoryFistItem(I)Z

    move-result p5

    if-eqz p5, :cond_0

    sub-int/2addr p7, v0

    :cond_0
    move v5, p7

    .line 621
    invoke-virtual {p0}, Lcn/bingoogolapple/baseadapter/BGADivider$StickyDelegate;->getFirstVisibleItemPosition()I

    move-result p5

    invoke-virtual {p0, p5}, Lcn/bingoogolapple/baseadapter/BGADivider$StickyDelegate;->getCategoryName(I)Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lcn/bingoogolapple/baseadapter/BGADivider$StickyDelegate;->drawOverCategory(Lcn/bingoogolapple/baseadapter/BGADivider;Landroid/graphics/Canvas;IIILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public drawVertical(Lcn/bingoogolapple/baseadapter/BGADivider;Landroid/graphics/Canvas;IIIII)V
    .locals 8

    .line 599
    invoke-virtual {p0, p6}, Lcn/bingoogolapple/baseadapter/BGADivider$StickyDelegate;->isCategoryFistItem(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 600
    invoke-virtual {p0}, Lcn/bingoogolapple/baseadapter/BGADivider$StickyDelegate;->getFirstVisibleItemPosition()I

    move-result v0

    if-ne p6, v0, :cond_0

    const/4 v0, 0x1

    if-le p7, v0, :cond_0

    return-void

    .line 605
    :cond_0
    invoke-virtual {p0, p6}, Lcn/bingoogolapple/baseadapter/BGADivider$StickyDelegate;->getCategoryName(I)Ljava/lang/String;

    move-result-object v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v7}, Lcn/bingoogolapple/baseadapter/BGADivider$StickyDelegate;->drawCategory(Lcn/bingoogolapple/baseadapter/BGADivider;Landroid/graphics/Canvas;IIILjava/lang/String;)V

    goto :goto_0

    .line 608
    :cond_1
    invoke-virtual {p1, p2, p3, p4, p5}, Lcn/bingoogolapple/baseadapter/BGADivider;->drawVerticalDivider(Landroid/graphics/Canvas;III)V

    :goto_0
    return-void
.end method

.method public getCategoryHeight()I
    .locals 1

    .line 675
    iget v0, p0, Lcn/bingoogolapple/baseadapter/BGADivider$StickyDelegate;->mCategoryHeight:I

    return v0
.end method

.method protected abstract getCategoryName(I)Ljava/lang/String;
.end method

.method protected abstract getFirstVisibleItemPosition()I
.end method

.method public getItemOffsets(Lcn/bingoogolapple/baseadapter/BGADivider;IILandroid/graphics/Rect;)V
    .locals 0

    .line 588
    invoke-virtual {p0, p2}, Lcn/bingoogolapple/baseadapter/BGADivider$StickyDelegate;->isCategoryFistItem(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 590
    iget p1, p0, Lcn/bingoogolapple/baseadapter/BGADivider$StickyDelegate;->mCategoryHeight:I

    const/4 p2, 0x0

    invoke-virtual {p4, p2, p1, p2, p2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 593
    :cond_0
    invoke-virtual {p1, p4}, Lcn/bingoogolapple/baseadapter/BGADivider;->getVerticalItemOffsets(Landroid/graphics/Rect;)V

    :goto_0
    return-void
.end method

.method protected initAttr()V
    .locals 2

    const-string v0, "#F2F2F2"

    .line 549
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/bingoogolapple/baseadapter/BGADivider$StickyDelegate;->mCategoryBackgroundColor:I

    const-string v0, "#848484"

    .line 550
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/bingoogolapple/baseadapter/BGADivider$StickyDelegate;->mCategoryTextColor:I

    const/high16 v0, 0x41800000    # 16.0f

    .line 551
    invoke-static {v0}, Lcn/bingoogolapple/baseadapter/BGABaseAdapterUtil;->dp2px(F)I

    move-result v0

    iput v0, p0, Lcn/bingoogolapple/baseadapter/BGADivider$StickyDelegate;->mCategoryPaddingLeft:I

    const/high16 v0, 0x41600000    # 14.0f

    .line 552
    invoke-static {v0}, Lcn/bingoogolapple/baseadapter/BGABaseAdapterUtil;->sp2px(F)I

    move-result v0

    iput v0, p0, Lcn/bingoogolapple/baseadapter/BGADivider$StickyDelegate;->mCategoryTextSize:I

    const/high16 v0, 0x42000000    # 32.0f

    .line 553
    invoke-static {v0}, Lcn/bingoogolapple/baseadapter/BGABaseAdapterUtil;->dp2px(F)I

    move-result v0

    iput v0, p0, Lcn/bingoogolapple/baseadapter/BGADivider$StickyDelegate;->mCategoryHeight:I

    .line 555
    invoke-virtual {p0}, Lcn/bingoogolapple/baseadapter/BGADivider$StickyDelegate;->initCategoryAttr()V

    .line 557
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGADivider$StickyDelegate;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 559
    invoke-virtual {p0}, Lcn/bingoogolapple/baseadapter/BGADivider$StickyDelegate;->calculateCategoryTextOffset()V

    return-void
.end method

.method protected initCategoryAttr()V
    .locals 0

    return-void
.end method

.method protected abstract isCategoryFistItem(I)Z
.end method

.method public isNeedCustom(II)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
