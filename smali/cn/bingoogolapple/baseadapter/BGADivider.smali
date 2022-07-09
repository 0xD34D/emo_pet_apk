.class public Lcn/bingoogolapple/baseadapter/BGADivider;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "BGADivider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/bingoogolapple/baseadapter/BGADivider$StickyDelegate;,
        Lcn/bingoogolapple/baseadapter/BGADivider$SimpleDelegate;,
        Lcn/bingoogolapple/baseadapter/BGADivider$Delegate;
    }
.end annotation


# instance fields
.field private mDelegate:Lcn/bingoogolapple/baseadapter/BGADivider$Delegate;

.field private mDividerDrawable:Landroid/graphics/drawable/Drawable;

.field private mEndSkipCount:I

.field private mMarginLeft:I

.field private mMarginRight:I

.field private mOrientation:I

.field private mSize:I

.field private mStartSkipCount:I


# direct methods
.method private constructor <init>(I)V
    .locals 2

    .line 51
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    const/4 v0, 0x1

    .line 45
    iput v0, p0, Lcn/bingoogolapple/baseadapter/BGADivider;->mOrientation:I

    .line 46
    iput v0, p0, Lcn/bingoogolapple/baseadapter/BGADivider;->mStartSkipCount:I

    const/4 v1, 0x0

    .line 47
    iput v1, p0, Lcn/bingoogolapple/baseadapter/BGADivider;->mEndSkipCount:I

    .line 48
    iput v0, p0, Lcn/bingoogolapple/baseadapter/BGADivider;->mSize:I

    .line 52
    invoke-static {}, Lcn/bingoogolapple/baseadapter/BGABaseAdapterUtil;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcn/bingoogolapple/baseadapter/BGADivider;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    .line 53
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGADivider;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcn/bingoogolapple/baseadapter/BGADivider;->mSize:I

    return-void
.end method

.method private drawHorizontal(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    return-void
.end method

.method private drawVertical(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;IIZ)V
    .locals 16

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move/from16 v11, p5

    .line 428
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingLeft()I

    move-result v0

    iget v1, v8, Lcn/bingoogolapple/baseadapter/BGADivider;->mMarginLeft:I

    add-int v12, v0, v1

    .line 429
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, v8, Lcn/bingoogolapple/baseadapter/BGADivider;->mMarginRight:I

    sub-int v13, v0, v1

    const/4 v0, 0x0

    move/from16 v15, p4

    move v14, v0

    :goto_0
    if-ge v14, v15, :cond_5

    .line 435
    invoke-virtual {v9, v14}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 436
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 440
    :cond_0
    invoke-virtual {v9, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v1

    .line 441
    invoke-direct {v8, v1, v10}, Lcn/bingoogolapple/baseadapter/BGADivider;->getRealChildAdapterPosition(ILcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;)I

    move-result v6

    .line 443
    invoke-direct {v8, v1, v10, v6, v11}, Lcn/bingoogolapple/baseadapter/BGADivider;->isNeedSkip(ILcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;II)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 447
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 448
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget v1, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->topMargin:I

    sub-int v5, v0, v1

    .line 450
    iget-object v0, v8, Lcn/bingoogolapple/baseadapter/BGADivider;->mDelegate:Lcn/bingoogolapple/baseadapter/BGADivider$Delegate;

    if-eqz v0, :cond_3

    invoke-interface {v0, v6, v11}, Lcn/bingoogolapple/baseadapter/BGADivider$Delegate;->isNeedCustom(II)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p6, :cond_2

    .line 452
    iget-object v0, v8, Lcn/bingoogolapple/baseadapter/BGADivider;->mDelegate:Lcn/bingoogolapple/baseadapter/BGADivider$Delegate;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move v3, v12

    move v4, v13

    move/from16 v7, p5

    invoke-interface/range {v0 .. v7}, Lcn/bingoogolapple/baseadapter/BGADivider$Delegate;->drawOverVertical(Lcn/bingoogolapple/baseadapter/BGADivider;Landroid/graphics/Canvas;IIIII)V

    goto :goto_1

    .line 454
    :cond_2
    iget-object v0, v8, Lcn/bingoogolapple/baseadapter/BGADivider;->mDelegate:Lcn/bingoogolapple/baseadapter/BGADivider$Delegate;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move v3, v12

    move v4, v13

    move/from16 v7, p5

    invoke-interface/range {v0 .. v7}, Lcn/bingoogolapple/baseadapter/BGADivider$Delegate;->drawVertical(Lcn/bingoogolapple/baseadapter/BGADivider;Landroid/graphics/Canvas;IIIII)V

    goto :goto_1

    :cond_3
    if-nez p6, :cond_4

    move-object/from16 v0, p1

    .line 458
    invoke-virtual {v8, v0, v12, v13, v5}, Lcn/bingoogolapple/baseadapter/BGADivider;->drawVerticalDivider(Landroid/graphics/Canvas;III)V

    goto :goto_2

    :cond_4
    :goto_1
    move-object/from16 v0, p1

    :goto_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method private getHeaderAndFooterAdapter(Landroidx/recyclerview/widget/RecyclerView;)Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;
    .locals 1

    .line 322
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    .line 323
    instance-of v0, p1, Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;

    if-eqz v0, :cond_0

    .line 324
    check-cast p1, Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getRealChildAdapterPosition(ILcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;)I
    .locals 0

    if-eqz p2, :cond_0

    .line 481
    invoke-virtual {p2, p1}, Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;->getRealItemPosition(I)I

    move-result p1

    :cond_0
    return p1
.end method

.method private handleDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Z)V
    .locals 8

    .line 406
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 410
    :cond_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v5

    .line 411
    invoke-direct {p0, p2}, Lcn/bingoogolapple/baseadapter/BGADivider;->getHeaderAndFooterAdapter(Landroidx/recyclerview/widget/RecyclerView;)Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 416
    invoke-virtual {v4}, Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;->getRealItemCount()I

    move-result v0

    move v6, v0

    goto :goto_0

    :cond_1
    move v6, v5

    .line 419
    :goto_0
    iget v0, p0, Lcn/bingoogolapple/baseadapter/BGADivider;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v7, p3

    .line 420
    invoke-direct/range {v1 .. v7}, Lcn/bingoogolapple/baseadapter/BGADivider;->drawVertical(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;IIZ)V

    goto :goto_1

    .line 422
    :cond_2
    invoke-direct {p0, p1, p2}, Lcn/bingoogolapple/baseadapter/BGADivider;->drawHorizontal(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private isNeedSkip(ILcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;II)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 331
    invoke-virtual {p2, p1}, Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;->isHeaderViewOrFooterView(I)Z

    move-result p1

    if-eqz p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 p1, p4, -0x1

    .line 338
    iget p2, p0, Lcn/bingoogolapple/baseadapter/BGADivider;->mEndSkipCount:I

    sub-int/2addr p1, p2

    if-le p3, p1, :cond_1

    return v0

    .line 344
    :cond_1
    iget p1, p0, Lcn/bingoogolapple/baseadapter/BGADivider;->mStartSkipCount:I

    if-ge p3, p1, :cond_2

    return v0

    .line 348
    :cond_2
    iget-object p1, p0, Lcn/bingoogolapple/baseadapter/BGADivider;->mDelegate:Lcn/bingoogolapple/baseadapter/BGADivider$Delegate;

    if-eqz p1, :cond_3

    .line 349
    invoke-interface {p1, p3, p4}, Lcn/bingoogolapple/baseadapter/BGADivider$Delegate;->isNeedSkip(II)Z

    move-result p1

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public static newBitmapDivider()Lcn/bingoogolapple/baseadapter/BGADivider;
    .locals 2

    .line 81
    new-instance v0, Lcn/bingoogolapple/baseadapter/BGADivider;

    sget v1, Lcn/bingoogolapple/baseadapter/R$mipmap;->bga_baseadapter_divider_bitmap:I

    invoke-direct {v0, v1}, Lcn/bingoogolapple/baseadapter/BGADivider;-><init>(I)V

    return-object v0
.end method

.method public static newDrawableDivider(I)Lcn/bingoogolapple/baseadapter/BGADivider;
    .locals 1

    .line 63
    new-instance v0, Lcn/bingoogolapple/baseadapter/BGADivider;

    invoke-direct {v0, p0}, Lcn/bingoogolapple/baseadapter/BGADivider;-><init>(I)V

    return-object v0
.end method

.method public static newShapeDivider()Lcn/bingoogolapple/baseadapter/BGADivider;
    .locals 2

    .line 72
    new-instance v0, Lcn/bingoogolapple/baseadapter/BGADivider;

    sget v1, Lcn/bingoogolapple/baseadapter/R$drawable;->bga_baseadapter_divider_shape:I

    invoke-direct {v0, v1}, Lcn/bingoogolapple/baseadapter/BGADivider;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public drawVerticalDivider(Landroid/graphics/Canvas;III)V
    .locals 2

    .line 473
    iget v0, p0, Lcn/bingoogolapple/baseadapter/BGADivider;->mSize:I

    sub-int v0, p4, v0

    .line 474
    iget-object v1, p0, Lcn/bingoogolapple/baseadapter/BGADivider;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p2, v0, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 475
    iget-object p2, p0, Lcn/bingoogolapple/baseadapter/BGADivider;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1

    .line 358
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p4

    if-eqz p4, :cond_5

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p4

    if-nez p4, :cond_0

    goto :goto_1

    .line 362
    :cond_0
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    .line 363
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p4

    invoke-virtual {p4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p4

    .line 368
    invoke-direct {p0, p3}, Lcn/bingoogolapple/baseadapter/BGADivider;->getHeaderAndFooterAdapter(Landroidx/recyclerview/widget/RecyclerView;)Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 371
    invoke-virtual {p3, p2}, Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;->getRealItemPosition(I)I

    move-result p4

    .line 373
    invoke-virtual {p3}, Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;->getRealItemCount()I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, p4

    move p4, p2

    .line 376
    :goto_0
    invoke-direct {p0, p2, p3, p4, v0}, Lcn/bingoogolapple/baseadapter/BGADivider;->isNeedSkip(ILcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;II)Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_2

    .line 377
    invoke-virtual {p1, p3, p3, p3, p3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    .line 379
    :cond_2
    iget-object p2, p0, Lcn/bingoogolapple/baseadapter/BGADivider;->mDelegate:Lcn/bingoogolapple/baseadapter/BGADivider$Delegate;

    if-eqz p2, :cond_3

    invoke-interface {p2, p4, v0}, Lcn/bingoogolapple/baseadapter/BGADivider$Delegate;->isNeedCustom(II)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 380
    iget-object p2, p0, Lcn/bingoogolapple/baseadapter/BGADivider;->mDelegate:Lcn/bingoogolapple/baseadapter/BGADivider$Delegate;

    invoke-interface {p2, p0, p4, v0, p1}, Lcn/bingoogolapple/baseadapter/BGADivider$Delegate;->getItemOffsets(Lcn/bingoogolapple/baseadapter/BGADivider;IILandroid/graphics/Rect;)V

    goto :goto_1

    .line 382
    :cond_3
    iget p2, p0, Lcn/bingoogolapple/baseadapter/BGADivider;->mOrientation:I

    const/4 p4, 0x1

    if-ne p2, p4, :cond_4

    .line 383
    invoke-virtual {p0, p1}, Lcn/bingoogolapple/baseadapter/BGADivider;->getVerticalItemOffsets(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 385
    :cond_4
    iget p2, p0, Lcn/bingoogolapple/baseadapter/BGADivider;->mSize:I

    invoke-virtual {p1, p2, p3, p3, p3}, Landroid/graphics/Rect;->set(IIII)V

    :cond_5
    :goto_1
    return-void
.end method

.method public getMarginLeft()I
    .locals 1

    .line 309
    iget v0, p0, Lcn/bingoogolapple/baseadapter/BGADivider;->mMarginLeft:I

    return v0
.end method

.method public getMarginRight()I
    .locals 1

    .line 318
    iget v0, p0, Lcn/bingoogolapple/baseadapter/BGADivider;->mMarginRight:I

    return v0
.end method

.method public getVerticalItemOffsets(Landroid/graphics/Rect;)V
    .locals 2

    .line 392
    iget v0, p0, Lcn/bingoogolapple/baseadapter/BGADivider;->mSize:I

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    const/4 p3, 0x0

    .line 402
    invoke-direct {p0, p1, p2, p3}, Lcn/bingoogolapple/baseadapter/BGADivider;->handleDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Z)V

    return-void
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    const/4 p3, 0x1

    .line 397
    invoke-direct {p0, p1, p2, p3}, Lcn/bingoogolapple/baseadapter/BGADivider;->handleDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Z)V

    return-void
.end method

.method public rotateDivider()Lcn/bingoogolapple/baseadapter/BGADivider;
    .locals 2

    .line 236
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGADivider;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    .line 237
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcn/bingoogolapple/baseadapter/BGABaseAdapterUtil;->rotateBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcn/bingoogolapple/baseadapter/BGADivider;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    :cond_0
    return-object p0
.end method

.method public setBothMarginDp(I)Lcn/bingoogolapple/baseadapter/BGADivider;
    .locals 0

    int-to-float p1, p1

    .line 114
    invoke-static {p1}, Lcn/bingoogolapple/baseadapter/BGABaseAdapterUtil;->dp2px(F)I

    move-result p1

    iput p1, p0, Lcn/bingoogolapple/baseadapter/BGADivider;->mMarginLeft:I

    .line 115
    iput p1, p0, Lcn/bingoogolapple/baseadapter/BGADivider;->mMarginRight:I

    return-object p0
.end method

.method public setBothMarginPx(I)Lcn/bingoogolapple/baseadapter/BGADivider;
    .locals 0

    .line 126
    iput p1, p0, Lcn/bingoogolapple/baseadapter/BGADivider;->mMarginLeft:I

    .line 127
    iput p1, p0, Lcn/bingoogolapple/baseadapter/BGADivider;->mMarginRight:I

    return-object p0
.end method

.method public setBothMarginResource(I)Lcn/bingoogolapple/baseadapter/BGADivider;
    .locals 0

    .line 102
    invoke-static {p1}, Lcn/bingoogolapple/baseadapter/BGABaseAdapterUtil;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcn/bingoogolapple/baseadapter/BGADivider;->mMarginLeft:I

    .line 103
    iput p1, p0, Lcn/bingoogolapple/baseadapter/BGADivider;->mMarginRight:I

    return-object p0
.end method

.method public setColor(IZ)Lcn/bingoogolapple/baseadapter/BGADivider;
    .locals 1

    .line 216
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGADivider;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_0

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_0
    sget-object p2, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    :goto_0
    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-object p0
.end method

.method public setColorResource(IZ)Lcn/bingoogolapple/baseadapter/BGADivider;
    .locals 0

    .line 205
    invoke-static {p1}, Lcn/bingoogolapple/baseadapter/BGABaseAdapterUtil;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcn/bingoogolapple/baseadapter/BGADivider;->setColor(IZ)Lcn/bingoogolapple/baseadapter/BGADivider;

    move-result-object p1

    return-object p1
.end method

.method public setDelegate(Lcn/bingoogolapple/baseadapter/BGADivider$Delegate;)Lcn/bingoogolapple/baseadapter/BGADivider;
    .locals 0

    .line 91
    iput-object p1, p0, Lcn/bingoogolapple/baseadapter/BGADivider;->mDelegate:Lcn/bingoogolapple/baseadapter/BGADivider$Delegate;

    return-object p0
.end method

.method public setEndSkipCount(I)Lcn/bingoogolapple/baseadapter/BGADivider;
    .locals 0

    .line 263
    iput p1, p0, Lcn/bingoogolapple/baseadapter/BGADivider;->mEndSkipCount:I

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 265
    iput p1, p0, Lcn/bingoogolapple/baseadapter/BGADivider;->mEndSkipCount:I

    :cond_0
    return-object p0
.end method

.method public setHorizontal()Lcn/bingoogolapple/baseadapter/BGADivider;
    .locals 1

    const/4 v0, 0x0

    .line 226
    iput v0, p0, Lcn/bingoogolapple/baseadapter/BGADivider;->mOrientation:I

    return-object p0
.end method

.method public setMarginLeftDp(I)Lcn/bingoogolapple/baseadapter/BGADivider;
    .locals 0

    int-to-float p1, p1

    .line 149
    invoke-static {p1}, Lcn/bingoogolapple/baseadapter/BGABaseAdapterUtil;->dp2px(F)I

    move-result p1

    iput p1, p0, Lcn/bingoogolapple/baseadapter/BGADivider;->mMarginLeft:I

    return-object p0
.end method

.method public setMarginLeftPx(I)Lcn/bingoogolapple/baseadapter/BGADivider;
    .locals 0

    .line 160
    iput p1, p0, Lcn/bingoogolapple/baseadapter/BGADivider;->mMarginLeft:I

    return-object p0
.end method

.method public setMarginLeftResource(I)Lcn/bingoogolapple/baseadapter/BGADivider;
    .locals 0

    .line 138
    invoke-static {p1}, Lcn/bingoogolapple/baseadapter/BGABaseAdapterUtil;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcn/bingoogolapple/baseadapter/BGADivider;->mMarginLeft:I

    return-object p0
.end method

.method public setMarginRightDp(I)Lcn/bingoogolapple/baseadapter/BGADivider;
    .locals 0

    int-to-float p1, p1

    .line 182
    invoke-static {p1}, Lcn/bingoogolapple/baseadapter/BGABaseAdapterUtil;->dp2px(F)I

    move-result p1

    iput p1, p0, Lcn/bingoogolapple/baseadapter/BGADivider;->mMarginRight:I

    return-object p0
.end method

.method public setMarginRightPx(I)Lcn/bingoogolapple/baseadapter/BGADivider;
    .locals 0

    .line 193
    iput p1, p0, Lcn/bingoogolapple/baseadapter/BGADivider;->mMarginRight:I

    return-object p0
.end method

.method public setMarginRightResource(I)Lcn/bingoogolapple/baseadapter/BGADivider;
    .locals 0

    .line 171
    invoke-static {p1}, Lcn/bingoogolapple/baseadapter/BGABaseAdapterUtil;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcn/bingoogolapple/baseadapter/BGADivider;->mMarginRight:I

    return-object p0
.end method

.method public setSizeDp(I)Lcn/bingoogolapple/baseadapter/BGADivider;
    .locals 0

    int-to-float p1, p1

    .line 288
    invoke-static {p1}, Lcn/bingoogolapple/baseadapter/BGABaseAdapterUtil;->dp2px(F)I

    move-result p1

    iput p1, p0, Lcn/bingoogolapple/baseadapter/BGADivider;->mSize:I

    return-object p0
.end method

.method public setSizePx(I)Lcn/bingoogolapple/baseadapter/BGADivider;
    .locals 0

    .line 299
    iput p1, p0, Lcn/bingoogolapple/baseadapter/BGADivider;->mSize:I

    return-object p0
.end method

.method public setSizeResource(I)Lcn/bingoogolapple/baseadapter/BGADivider;
    .locals 0

    .line 277
    invoke-static {p1}, Lcn/bingoogolapple/baseadapter/BGABaseAdapterUtil;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcn/bingoogolapple/baseadapter/BGADivider;->mSize:I

    return-object p0
.end method

.method public setStartSkipCount(I)Lcn/bingoogolapple/baseadapter/BGADivider;
    .locals 0

    .line 249
    iput p1, p0, Lcn/bingoogolapple/baseadapter/BGADivider;->mStartSkipCount:I

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 251
    iput p1, p0, Lcn/bingoogolapple/baseadapter/BGADivider;->mStartSkipCount:I

    :cond_0
    return-object p0
.end method
