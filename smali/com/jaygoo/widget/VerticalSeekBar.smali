.class public Lcom/jaygoo/widget/VerticalSeekBar;
.super Lcom/jaygoo/widget/SeekBar;
.source "VerticalSeekBar.java"


# instance fields
.field private indicatorTextOrientation:I

.field verticalSeekBar:Lcom/jaygoo/widget/VerticalRangeSeekBar;


# direct methods
.method public constructor <init>(Lcom/jaygoo/widget/RangeSeekBar;Landroid/util/AttributeSet;Z)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/jaygoo/widget/SeekBar;-><init>(Lcom/jaygoo/widget/RangeSeekBar;Landroid/util/AttributeSet;Z)V

    .line 49
    invoke-direct {p0, p2}, Lcom/jaygoo/widget/VerticalSeekBar;->initAttrs(Landroid/util/AttributeSet;)V

    .line 50
    check-cast p1, Lcom/jaygoo/widget/VerticalRangeSeekBar;

    iput-object p1, p0, Lcom/jaygoo/widget/VerticalSeekBar;->verticalSeekBar:Lcom/jaygoo/widget/VerticalRangeSeekBar;

    return-void
.end method

.method private initAttrs(Landroid/util/AttributeSet;)V
    .locals 2

    .line 55
    :try_start_0
    invoke-virtual {p0}, Lcom/jaygoo/widget/VerticalSeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/jaygoo/widget/R$styleable;->VerticalRangeSeekBar:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 56
    sget v0, Lcom/jaygoo/widget/R$styleable;->VerticalRangeSeekBar_rsb_indicator_text_orientation:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/jaygoo/widget/VerticalSeekBar;->indicatorTextOrientation:I

    .line 57
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 59
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method protected drawVerticalIndicator(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;)V
    .locals 8

    .line 76
    invoke-virtual {p0}, Lcom/jaygoo/widget/VerticalSeekBar;->getIndicatorTextSize()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 77
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 78
    invoke-virtual {p0}, Lcom/jaygoo/widget/VerticalSeekBar;->getIndicatorBackgroundColor()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 79
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lcom/jaygoo/widget/VerticalSeekBar;->indicatorTextRect:Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-virtual {p2, p3, v2, v0, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 81
    iget-object v0, p0, Lcom/jaygoo/widget/VerticalSeekBar;->indicatorTextRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p0}, Lcom/jaygoo/widget/VerticalSeekBar;->getIndicatorPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/jaygoo/widget/VerticalSeekBar;->getIndicatorPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    .line 82
    invoke-virtual {p0}, Lcom/jaygoo/widget/VerticalSeekBar;->getIndicatorWidth()I

    move-result v1

    if-le v1, v0, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/jaygoo/widget/VerticalSeekBar;->getIndicatorWidth()I

    move-result v0

    .line 86
    :cond_0
    iget-object v1, p0, Lcom/jaygoo/widget/VerticalSeekBar;->indicatorTextRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p0}, Lcom/jaygoo/widget/VerticalSeekBar;->getIndicatorPaddingTop()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {p0}, Lcom/jaygoo/widget/VerticalSeekBar;->getIndicatorPaddingBottom()I

    move-result v3

    add-int/2addr v1, v3

    .line 87
    invoke-virtual {p0}, Lcom/jaygoo/widget/VerticalSeekBar;->getIndicatorHeight()I

    move-result v3

    if-le v3, v1, :cond_1

    .line 88
    invoke-virtual {p0}, Lcom/jaygoo/widget/VerticalSeekBar;->getIndicatorHeight()I

    move-result v1

    .line 91
    :cond_1
    iget-object v3, p0, Lcom/jaygoo/widget/VerticalSeekBar;->indicatorRect:Landroid/graphics/Rect;

    iget v4, p0, Lcom/jaygoo/widget/VerticalSeekBar;->scaleThumbWidth:I

    const/4 v5, 0x2

    div-int/2addr v4, v5

    div-int/lit8 v6, v0, 0x2

    sub-int/2addr v4, v6

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 92
    iget-object v3, p0, Lcom/jaygoo/widget/VerticalSeekBar;->indicatorRect:Landroid/graphics/Rect;

    iget v4, p0, Lcom/jaygoo/widget/VerticalSeekBar;->bottom:I

    sub-int/2addr v4, v1

    iget v6, p0, Lcom/jaygoo/widget/VerticalSeekBar;->scaleThumbHeight:I

    sub-int/2addr v4, v6

    invoke-virtual {p0}, Lcom/jaygoo/widget/VerticalSeekBar;->getIndicatorMargin()I

    move-result v6

    sub-int/2addr v4, v6

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 93
    iget-object v3, p0, Lcom/jaygoo/widget/VerticalSeekBar;->indicatorRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/jaygoo/widget/VerticalSeekBar;->indicatorRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v0

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 94
    iget-object v0, p0, Lcom/jaygoo/widget/VerticalSeekBar;->indicatorRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/jaygoo/widget/VerticalSeekBar;->indicatorRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v1

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 97
    iget-object v0, p0, Lcom/jaygoo/widget/VerticalSeekBar;->indicatorBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    .line 101
    iget v0, p0, Lcom/jaygoo/widget/VerticalSeekBar;->scaleThumbWidth:I

    div-int/2addr v0, v5

    .line 102
    iget-object v1, p0, Lcom/jaygoo/widget/VerticalSeekBar;->indicatorRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 103
    invoke-virtual {p0}, Lcom/jaygoo/widget/VerticalSeekBar;->getIndicatorArrowSize()I

    move-result v3

    sub-int v3, v0, v3

    .line 104
    invoke-virtual {p0}, Lcom/jaygoo/widget/VerticalSeekBar;->getIndicatorArrowSize()I

    move-result v4

    sub-int v4, v1, v4

    .line 105
    invoke-virtual {p0}, Lcom/jaygoo/widget/VerticalSeekBar;->getIndicatorArrowSize()I

    move-result v6

    add-int/2addr v6, v0

    .line 106
    iget-object v7, p0, Lcom/jaygoo/widget/VerticalSeekBar;->indicatorArrowPath:Landroid/graphics/Path;

    invoke-virtual {v7}, Landroid/graphics/Path;->reset()V

    .line 107
    iget-object v7, p0, Lcom/jaygoo/widget/VerticalSeekBar;->indicatorArrowPath:Landroid/graphics/Path;

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 108
    iget-object v0, p0, Lcom/jaygoo/widget/VerticalSeekBar;->indicatorArrowPath:Landroid/graphics/Path;

    int-to-float v1, v3

    int-to-float v3, v4

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 109
    iget-object v0, p0, Lcom/jaygoo/widget/VerticalSeekBar;->indicatorArrowPath:Landroid/graphics/Path;

    int-to-float v1, v6

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 110
    iget-object v0, p0, Lcom/jaygoo/widget/VerticalSeekBar;->indicatorArrowPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 111
    iget-object v0, p0, Lcom/jaygoo/widget/VerticalSeekBar;->indicatorArrowPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 112
    iget-object v0, p0, Lcom/jaygoo/widget/VerticalSeekBar;->indicatorRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Lcom/jaygoo/widget/VerticalSeekBar;->getIndicatorArrowSize()I

    move-result v3

    sub-int/2addr v1, v3

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 113
    iget-object v0, p0, Lcom/jaygoo/widget/VerticalSeekBar;->indicatorRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/jaygoo/widget/VerticalSeekBar;->getIndicatorArrowSize()I

    move-result v3

    sub-int/2addr v1, v3

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 116
    :cond_2
    invoke-virtual {p0}, Lcom/jaygoo/widget/VerticalSeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lcom/jaygoo/widget/Utils;->dp2px(Landroid/content/Context;F)I

    move-result v0

    .line 117
    iget-object v3, p0, Lcom/jaygoo/widget/VerticalSeekBar;->indicatorRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/2addr v3, v5

    iget-object v4, p0, Lcom/jaygoo/widget/VerticalSeekBar;->rangeSeekBar:Lcom/jaygoo/widget/RangeSeekBar;

    invoke-virtual {v4}, Lcom/jaygoo/widget/RangeSeekBar;->getProgressWidth()I

    move-result v4

    int-to-float v4, v4

    iget v6, p0, Lcom/jaygoo/widget/VerticalSeekBar;->currPercent:F

    mul-float/2addr v4, v6

    float-to-int v4, v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/jaygoo/widget/VerticalSeekBar;->rangeSeekBar:Lcom/jaygoo/widget/RangeSeekBar;

    invoke-virtual {v4}, Lcom/jaygoo/widget/RangeSeekBar;->getProgressLeft()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/2addr v3, v0

    .line 118
    iget-object v4, p0, Lcom/jaygoo/widget/VerticalSeekBar;->indicatorRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/2addr v4, v5

    iget-object v6, p0, Lcom/jaygoo/widget/VerticalSeekBar;->rangeSeekBar:Lcom/jaygoo/widget/RangeSeekBar;

    invoke-virtual {v6}, Lcom/jaygoo/widget/RangeSeekBar;->getProgressWidth()I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lcom/jaygoo/widget/VerticalSeekBar;->currPercent:F

    sub-float/2addr v1, v7

    mul-float/2addr v6, v1

    float-to-int v1, v6

    sub-int/2addr v4, v1

    iget-object v1, p0, Lcom/jaygoo/widget/VerticalSeekBar;->rangeSeekBar:Lcom/jaygoo/widget/RangeSeekBar;

    invoke-virtual {v1}, Lcom/jaygoo/widget/RangeSeekBar;->getProgressPaddingRight()I

    move-result v1

    sub-int/2addr v4, v1

    add-int/2addr v4, v0

    if-lez v3, :cond_3

    .line 120
    iget-object v0, p0, Lcom/jaygoo/widget/VerticalSeekBar;->indicatorRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v3

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 121
    iget-object v0, p0, Lcom/jaygoo/widget/VerticalSeekBar;->indicatorRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v3

    iput v1, v0, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_3
    if-lez v4, :cond_4

    .line 123
    iget-object v0, p0, Lcom/jaygoo/widget/VerticalSeekBar;->indicatorRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v4

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 124
    iget-object v0, p0, Lcom/jaygoo/widget/VerticalSeekBar;->indicatorRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v4

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 128
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/jaygoo/widget/VerticalSeekBar;->indicatorBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    .line 129
    iget-object v0, p0, Lcom/jaygoo/widget/VerticalSeekBar;->indicatorBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/jaygoo/widget/VerticalSeekBar;->indicatorRect:Landroid/graphics/Rect;

    invoke-static {p1, p2, v0, v1}, Lcom/jaygoo/widget/Utils;->drawBitmap(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    goto :goto_1

    .line 130
    :cond_5
    invoke-virtual {p0}, Lcom/jaygoo/widget/VerticalSeekBar;->getIndicatorRadius()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6

    .line 131
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/jaygoo/widget/VerticalSeekBar;->indicatorRect:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/jaygoo/widget/VerticalSeekBar;->getIndicatorRadius()F

    move-result v1

    invoke-virtual {p0}, Lcom/jaygoo/widget/VerticalSeekBar;->getIndicatorRadius()F

    move-result v3

    invoke-virtual {p1, v0, v1, v3, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 133
    :cond_6
    iget-object v0, p0, Lcom/jaygoo/widget/VerticalSeekBar;->indicatorRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 137
    :goto_1
    iget-object v0, p0, Lcom/jaygoo/widget/VerticalSeekBar;->indicatorRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/jaygoo/widget/VerticalSeekBar;->indicatorRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v3, p0, Lcom/jaygoo/widget/VerticalSeekBar;->indicatorTextRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v1, v3

    div-int/2addr v1, v5

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/jaygoo/widget/VerticalSeekBar;->getIndicatorPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/jaygoo/widget/VerticalSeekBar;->getIndicatorPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 138
    iget-object v1, p0, Lcom/jaygoo/widget/VerticalSeekBar;->indicatorRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/jaygoo/widget/VerticalSeekBar;->indicatorRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget-object v4, p0, Lcom/jaygoo/widget/VerticalSeekBar;->indicatorTextRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/2addr v3, v5

    sub-int/2addr v1, v3

    invoke-virtual {p0}, Lcom/jaygoo/widget/VerticalSeekBar;->getIndicatorPaddingTop()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {p0}, Lcom/jaygoo/widget/VerticalSeekBar;->getIndicatorPaddingBottom()I

    move-result v3

    sub-int/2addr v1, v3

    .line 141
    invoke-virtual {p0}, Lcom/jaygoo/widget/VerticalSeekBar;->getIndicatorTextColor()I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v0, v0

    .line 144
    iget-object v3, p0, Lcom/jaygoo/widget/VerticalSeekBar;->indicatorTextRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v3, v0

    int-to-float v1, v1

    .line 145
    iget-object v6, p0, Lcom/jaygoo/widget/VerticalSeekBar;->indicatorTextRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v4

    sub-float v4, v1, v6

    .line 147
    iget v6, p0, Lcom/jaygoo/widget/VerticalSeekBar;->indicatorTextOrientation:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_8

    .line 148
    iget-object v6, p0, Lcom/jaygoo/widget/VerticalSeekBar;->verticalSeekBar:Lcom/jaygoo/widget/VerticalRangeSeekBar;

    invoke-virtual {v6}, Lcom/jaygoo/widget/VerticalRangeSeekBar;->getOrientation()I

    move-result v6

    if-ne v6, v7, :cond_7

    const/16 v2, 0x5a

    goto :goto_2

    .line 150
    :cond_7
    iget-object v6, p0, Lcom/jaygoo/widget/VerticalSeekBar;->verticalSeekBar:Lcom/jaygoo/widget/VerticalRangeSeekBar;

    invoke-virtual {v6}, Lcom/jaygoo/widget/VerticalRangeSeekBar;->getOrientation()I

    move-result v6

    if-ne v6, v5, :cond_8

    const/16 v2, -0x5a

    :cond_8
    :goto_2
    if-eqz v2, :cond_9

    int-to-float v5, v2

    .line 155
    invoke-virtual {p1, v5, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 157
    :cond_9
    invoke-virtual {p1, p3, v0, v1, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    if-eqz v2, :cond_a

    neg-int p2, v2

    int-to-float p2, p2

    .line 159
    invoke-virtual {p1, p2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    :cond_a
    return-void
.end method

.method public getIndicatorTextOrientation()I
    .locals 1

    .line 164
    iget v0, p0, Lcom/jaygoo/widget/VerticalSeekBar;->indicatorTextOrientation:I

    return v0
.end method

.method protected onDrawIndicator(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;)V
    .locals 2

    if-nez p3, :cond_0

    return-void

    .line 67
    :cond_0
    iget v0, p0, Lcom/jaygoo/widget/VerticalSeekBar;->indicatorTextOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 68
    invoke-virtual {p0, p1, p2, p3}, Lcom/jaygoo/widget/VerticalSeekBar;->drawVerticalIndicator(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;)V

    goto :goto_0

    .line 70
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/jaygoo/widget/SeekBar;->onDrawIndicator(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setIndicatorTextOrientation(I)V
    .locals 0

    .line 168
    iput p1, p0, Lcom/jaygoo/widget/VerticalSeekBar;->indicatorTextOrientation:I

    return-void
.end method
