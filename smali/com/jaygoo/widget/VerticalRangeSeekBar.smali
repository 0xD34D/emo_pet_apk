.class public Lcom/jaygoo/widget/VerticalRangeSeekBar;
.super Lcom/jaygoo/widget/RangeSeekBar;
.source "VerticalRangeSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jaygoo/widget/VerticalRangeSeekBar$DirectionDef;,
        Lcom/jaygoo/widget/VerticalRangeSeekBar$TextDirectionDef;
    }
.end annotation


# static fields
.field public static final DIRECTION_LEFT:I = 0x1

.field public static final DIRECTION_RIGHT:I = 0x2

.field public static final TEXT_DIRECTION_HORIZONTAL:I = 0x2

.field public static final TEXT_DIRECTION_VERTICAL:I = 0x1


# instance fields
.field private maxTickMarkWidth:I

.field private orientation:I

.field private tickMarkDirection:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, v0}, Lcom/jaygoo/widget/VerticalRangeSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/jaygoo/widget/RangeSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 53
    iput p1, p0, Lcom/jaygoo/widget/VerticalRangeSeekBar;->orientation:I

    .line 54
    iput p1, p0, Lcom/jaygoo/widget/VerticalRangeSeekBar;->tickMarkDirection:I

    .line 64
    invoke-direct {p0, p2}, Lcom/jaygoo/widget/VerticalRangeSeekBar;->initAttrs(Landroid/util/AttributeSet;)V

    .line 65
    invoke-virtual {p0, p2}, Lcom/jaygoo/widget/VerticalRangeSeekBar;->initSeekBar(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private initAttrs(Landroid/util/AttributeSet;)V
    .locals 2

    .line 70
    :try_start_0
    invoke-virtual {p0}, Lcom/jaygoo/widget/VerticalRangeSeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/jaygoo/widget/R$styleable;->VerticalRangeSeekBar:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 71
    sget v0, Lcom/jaygoo/widget/R$styleable;->VerticalRangeSeekBar_rsb_orientation:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/jaygoo/widget/VerticalRangeSeekBar;->orientation:I

    .line 72
    sget v0, Lcom/jaygoo/widget/R$styleable;->VerticalRangeSeekBar_rsb_tick_mark_orientation:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/jaygoo/widget/VerticalRangeSeekBar;->tickMarkDirection:I

    .line 73
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 75
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method protected getEventX(Landroid/view/MotionEvent;)F
    .locals 2

    .line 221
    iget v0, p0, Lcom/jaygoo/widget/VerticalRangeSeekBar;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 222
    invoke-virtual {p0}, Lcom/jaygoo/widget/VerticalRangeSeekBar;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sub-float/2addr v0, p1

    return v0

    .line 224
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    return p1
.end method

.method protected getEventY(Landroid/view/MotionEvent;)F
    .locals 2

    .line 230
    iget v0, p0, Lcom/jaygoo/widget/VerticalRangeSeekBar;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 231
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    return p1

    .line 233
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    neg-float p1, p1

    invoke-virtual {p0}, Lcom/jaygoo/widget/VerticalRangeSeekBar;->getWidth()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    return p1
.end method

.method public bridge synthetic getLeftSeekBar()Lcom/jaygoo/widget/SeekBar;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lcom/jaygoo/widget/VerticalRangeSeekBar;->getLeftSeekBar()Lcom/jaygoo/widget/VerticalSeekBar;

    move-result-object v0

    return-object v0
.end method

.method public getLeftSeekBar()Lcom/jaygoo/widget/VerticalSeekBar;
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/jaygoo/widget/VerticalRangeSeekBar;->leftSB:Lcom/jaygoo/widget/SeekBar;

    check-cast v0, Lcom/jaygoo/widget/VerticalSeekBar;

    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    .line 251
    iget v0, p0, Lcom/jaygoo/widget/VerticalRangeSeekBar;->orientation:I

    return v0
.end method

.method public bridge synthetic getRightSeekBar()Lcom/jaygoo/widget/SeekBar;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lcom/jaygoo/widget/VerticalRangeSeekBar;->getRightSeekBar()Lcom/jaygoo/widget/VerticalSeekBar;

    move-result-object v0

    return-object v0
.end method

.method public getRightSeekBar()Lcom/jaygoo/widget/VerticalSeekBar;
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/jaygoo/widget/VerticalRangeSeekBar;->rightSB:Lcom/jaygoo/widget/SeekBar;

    check-cast v0, Lcom/jaygoo/widget/VerticalSeekBar;

    return-object v0
.end method

.method public getTickMarkDirection()I
    .locals 1

    .line 265
    iget v0, p0, Lcom/jaygoo/widget/VerticalRangeSeekBar;->tickMarkDirection:I

    return v0
.end method

.method protected getTickMarkRawHeight()I
    .locals 4

    .line 192
    iget v0, p0, Lcom/jaygoo/widget/VerticalRangeSeekBar;->maxTickMarkWidth:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/jaygoo/widget/VerticalRangeSeekBar;->getTickMarkTextMargin()I

    move-result v0

    iget v1, p0, Lcom/jaygoo/widget/VerticalRangeSeekBar;->maxTickMarkWidth:I

    :goto_0
    add-int/2addr v0, v1

    return v0

    .line 193
    :cond_0
    invoke-virtual {p0}, Lcom/jaygoo/widget/VerticalRangeSeekBar;->getTickMarkTextArray()[Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/jaygoo/widget/VerticalRangeSeekBar;->getTickMarkTextArray()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_3

    .line 194
    invoke-virtual {p0}, Lcom/jaygoo/widget/VerticalRangeSeekBar;->getTickMarkTextArray()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    .line 195
    invoke-virtual {p0}, Lcom/jaygoo/widget/VerticalRangeSeekBar;->getTickMarkTextArray()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v1, v2, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/jaygoo/widget/VerticalRangeSeekBar;->getTickMarkTextSize()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcom/jaygoo/widget/Utils;->measureText(Ljava/lang/String;F)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, p0, Lcom/jaygoo/widget/VerticalRangeSeekBar;->maxTickMarkWidth:I

    const/4 v1, 0x1

    :goto_1
    if-ge v1, v0, :cond_2

    .line 197
    invoke-virtual {p0}, Lcom/jaygoo/widget/VerticalRangeSeekBar;->getTickMarkTextArray()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/jaygoo/widget/VerticalRangeSeekBar;->getTickMarkTextSize()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Lcom/jaygoo/widget/Utils;->measureText(Ljava/lang/String;F)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 198
    iget v3, p0, Lcom/jaygoo/widget/VerticalRangeSeekBar;->maxTickMarkWidth:I

    if-ge v3, v2, :cond_1

    .line 199
    iput v2, p0, Lcom/jaygoo/widget/VerticalRangeSeekBar;->maxTickMarkWidth:I

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 202
    :cond_2
    invoke-virtual {p0}, Lcom/jaygoo/widget/VerticalRangeSeekBar;->getTickMarkTextMargin()I

    move-result v0

    iget v1, p0, Lcom/jaygoo/widget/VerticalRangeSeekBar;->maxTickMarkWidth:I

    goto :goto_0

    :cond_3
    return v1
.end method

.method protected initSeekBar(Landroid/util/AttributeSet;)V
    .locals 3

    .line 81
    new-instance v0, Lcom/jaygoo/widget/VerticalSeekBar;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/jaygoo/widget/VerticalSeekBar;-><init>(Lcom/jaygoo/widget/RangeSeekBar;Landroid/util/AttributeSet;Z)V

    iput-object v0, p0, Lcom/jaygoo/widget/VerticalRangeSeekBar;->leftSB:Lcom/jaygoo/widget/SeekBar;

    .line 82
    new-instance v0, Lcom/jaygoo/widget/VerticalSeekBar;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2}, Lcom/jaygoo/widget/VerticalSeekBar;-><init>(Lcom/jaygoo/widget/RangeSeekBar;Landroid/util/AttributeSet;Z)V

    iput-object v0, p0, Lcom/jaygoo/widget/VerticalRangeSeekBar;->rightSB:Lcom/jaygoo/widget/SeekBar;

    .line 83
    iget-object p1, p0, Lcom/jaygoo/widget/VerticalRangeSeekBar;->rightSB:Lcom/jaygoo/widget/SeekBar;

    invoke-virtual {p0}, Lcom/jaygoo/widget/VerticalRangeSeekBar;->getSeekBarMode()I

    move-result v0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {p1, v1}, Lcom/jaygoo/widget/SeekBar;->setVisible(Z)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 121
    iget v0, p0, Lcom/jaygoo/widget/VerticalRangeSeekBar;->orientation:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/high16 v0, -0x3d4c0000    # -90.0f

    .line 122
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 123
    invoke-virtual {p0}, Lcom/jaygoo/widget/VerticalRangeSeekBar;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    :cond_0
    const/high16 v0, 0x42b40000    # 90.0f

    .line 125
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 126
    invoke-virtual {p0}, Lcom/jaygoo/widget/VerticalRangeSeekBar;->getWidth()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 128
    :goto_0
    invoke-super {p0, p1}, Lcom/jaygoo/widget/RangeSeekBar;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onDrawTickMark(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 12

    .line 133
    invoke-virtual {p0}, Lcom/jaygoo/widget/VerticalRangeSeekBar;->getTickMarkTextArray()[Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 134
    invoke-virtual {p0}, Lcom/jaygoo/widget/VerticalRangeSeekBar;->getTickMarkTextArray()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    .line 135
    invoke-virtual {p0}, Lcom/jaygoo/widget/VerticalRangeSeekBar;->getProgressWidth()I

    move-result v1

    add-int/lit8 v2, v0, -0x1

    div-int/2addr v1, v2

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_a

    .line 137
    invoke-virtual {p0}, Lcom/jaygoo/widget/VerticalRangeSeekBar;->getTickMarkTextArray()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v3

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 138
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_5

    .line 139
    :cond_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    iget-object v6, p0, Lcom/jaygoo/widget/VerticalRangeSeekBar;->tickMarkTextRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v4, v2, v5, v6}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 140
    invoke-virtual {p0}, Lcom/jaygoo/widget/VerticalRangeSeekBar;->getTickMarkTextColor()I

    move-result v5

    invoke-virtual {p2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 143
    invoke-virtual {p0}, Lcom/jaygoo/widget/VerticalRangeSeekBar;->getTickMarkMode()I

    move-result v5

    const/4 v6, 0x2

    const/high16 v7, 0x40000000    # 2.0f

    const/4 v8, 0x1

    if-ne v5, v8, :cond_3

    .line 144
    invoke-virtual {p0}, Lcom/jaygoo/widget/VerticalRangeSeekBar;->getTickMarkGravity()I

    move-result v5

    if-ne v5, v6, :cond_1

    .line 145
    invoke-virtual {p0}, Lcom/jaygoo/widget/VerticalRangeSeekBar;->getProgressLeft()I

    move-result v5

    mul-int v9, v3, v1

    add-int/2addr v5, v9

    iget-object v9, p0, Lcom/jaygoo/widget/VerticalRangeSeekBar;->tickMarkTextRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    sub-int/2addr v5, v9

    :goto_1
    int-to-float v5, v5

    goto :goto_2

    .line 146
    :cond_1
    invoke-virtual {p0}, Lcom/jaygoo/widget/VerticalRangeSeekBar;->getTickMarkGravity()I

    move-result v5

    if-ne v5, v8, :cond_2

    .line 147
    invoke-virtual {p0}, Lcom/jaygoo/widget/VerticalRangeSeekBar;->getProgressLeft()I

    move-result v5

    mul-int v9, v3, v1

    add-int/2addr v5, v9

    int-to-float v5, v5

    iget-object v9, p0, Lcom/jaygoo/widget/VerticalRangeSeekBar;->tickMarkTextRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v7

    sub-float/2addr v5, v9

    goto :goto_2

    .line 149
    :cond_2
    invoke-virtual {p0}, Lcom/jaygoo/widget/VerticalRangeSeekBar;->getProgressLeft()I

    move-result v5

    mul-int v9, v3, v1

    add-int/2addr v5, v9

    goto :goto_1

    .line 152
    :cond_3
    invoke-static {v4}, Lcom/jaygoo/widget/Utils;->parseFloat(Ljava/lang/String;)F

    move-result v5

    .line 153
    invoke-virtual {p0}, Lcom/jaygoo/widget/VerticalRangeSeekBar;->getRangeSeekBarState()[Lcom/jaygoo/widget/SeekBarState;

    move-result-object v9

    .line 154
    aget-object v10, v9, v2

    iget v10, v10, Lcom/jaygoo/widget/SeekBarState;->value:F

    invoke-static {v5, v10}, Lcom/jaygoo/widget/Utils;->compareFloat(FF)I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_4

    aget-object v9, v9, v8

    iget v9, v9, Lcom/jaygoo/widget/SeekBarState;->value:F

    invoke-static {v5, v9}, Lcom/jaygoo/widget/Utils;->compareFloat(FF)I

    move-result v9

    if-eq v9, v8, :cond_4

    invoke-virtual {p0}, Lcom/jaygoo/widget/VerticalRangeSeekBar;->getSeekBarMode()I

    move-result v9

    if-ne v9, v6, :cond_4

    .line 155
    invoke-virtual {p0}, Lcom/jaygoo/widget/VerticalRangeSeekBar;->getTickMarkInRangeTextColor()I

    move-result v9

    invoke-virtual {p2, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 158
    :cond_4
    invoke-virtual {p0}, Lcom/jaygoo/widget/VerticalRangeSeekBar;->getProgressLeft()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {p0}, Lcom/jaygoo/widget/VerticalRangeSeekBar;->getProgressWidth()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {p0}, Lcom/jaygoo/widget/VerticalRangeSeekBar;->getMinProgress()F

    move-result v11

    sub-float/2addr v5, v11

    mul-float/2addr v10, v5

    invoke-virtual {p0}, Lcom/jaygoo/widget/VerticalRangeSeekBar;->getMaxProgress()F

    move-result v5

    invoke-virtual {p0}, Lcom/jaygoo/widget/VerticalRangeSeekBar;->getMinProgress()F

    move-result v11

    sub-float/2addr v5, v11

    div-float/2addr v10, v5

    add-float/2addr v9, v10

    iget-object v5, p0, Lcom/jaygoo/widget/VerticalRangeSeekBar;->tickMarkTextRect:Landroid/graphics/Rect;

    .line 159
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v7

    sub-float v5, v9, v5

    .line 162
    :goto_2
    invoke-virtual {p0}, Lcom/jaygoo/widget/VerticalRangeSeekBar;->getTickMarkLayoutGravity()I

    move-result v9

    if-nez v9, :cond_5

    .line 163
    invoke-virtual {p0}, Lcom/jaygoo/widget/VerticalRangeSeekBar;->getProgressTop()I

    move-result v9

    invoke-virtual {p0}, Lcom/jaygoo/widget/VerticalRangeSeekBar;->getTickMarkTextMargin()I

    move-result v10

    sub-int/2addr v9, v10

    goto :goto_3

    .line 165
    :cond_5
    invoke-virtual {p0}, Lcom/jaygoo/widget/VerticalRangeSeekBar;->getProgressBottom()I

    move-result v9

    invoke-virtual {p0}, Lcom/jaygoo/widget/VerticalRangeSeekBar;->getTickMarkTextMargin()I

    move-result v10

    add-int/2addr v9, v10

    iget-object v10, p0, Lcom/jaygoo/widget/VerticalRangeSeekBar;->tickMarkTextRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    add-int/2addr v9, v10

    :goto_3
    int-to-float v9, v9

    .line 168
    iget-object v10, p0, Lcom/jaygoo/widget/VerticalRangeSeekBar;->tickMarkTextRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v10, v7

    add-float/2addr v10, v5

    .line 169
    iget-object v11, p0, Lcom/jaygoo/widget/VerticalRangeSeekBar;->tickMarkTextRect:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v11, v7

    sub-float v7, v9, v11

    .line 170
    iget v11, p0, Lcom/jaygoo/widget/VerticalRangeSeekBar;->tickMarkDirection:I

    if-ne v11, v8, :cond_7

    .line 171
    iget v11, p0, Lcom/jaygoo/widget/VerticalRangeSeekBar;->orientation:I

    if-ne v11, v8, :cond_6

    const/16 v6, 0x5a

    goto :goto_4

    :cond_6
    if-ne v11, v6, :cond_7

    const/16 v6, -0x5a

    goto :goto_4

    :cond_7
    move v6, v2

    :goto_4
    if-eqz v6, :cond_8

    int-to-float v8, v6

    .line 178
    invoke-virtual {p1, v8, v10, v7}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 180
    :cond_8
    invoke-virtual {p1, v4, v5, v9, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    if-eqz v6, :cond_9

    neg-int v4, v6

    int-to-float v4, v4

    .line 182
    invoke-virtual {p1, v4, v10, v7}, Landroid/graphics/Canvas;->rotate(FFF)V

    :cond_9
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 93
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 94
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    const/high16 v1, 0x40000000    # 2.0f

    if-ne p1, v1, :cond_0

    .line 103
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_1

    :cond_0
    const/high16 v2, -0x80000000

    if-ne p1, v2, :cond_1

    .line 104
    invoke-virtual {p0}, Lcom/jaygoo/widget/VerticalRangeSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    const/4 p1, -0x1

    if-ne v0, p1, :cond_1

    .line 106
    invoke-virtual {p0}, Lcom/jaygoo/widget/VerticalRangeSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p1

    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_1

    .line 109
    :cond_1
    invoke-virtual {p0}, Lcom/jaygoo/widget/VerticalRangeSeekBar;->getGravity()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 110
    invoke-virtual {p0}, Lcom/jaygoo/widget/VerticalRangeSeekBar;->getProgressTop()I

    move-result p1

    mul-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/jaygoo/widget/VerticalRangeSeekBar;->getProgressHeight()I

    move-result v0

    add-int/2addr p1, v0

    goto :goto_0

    .line 112
    :cond_2
    invoke-virtual {p0}, Lcom/jaygoo/widget/VerticalRangeSeekBar;->getRawHeight()F

    move-result p1

    float-to-int p1, p1

    .line 114
    :goto_0
    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 116
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/jaygoo/widget/RangeSeekBar;->onMeasure(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 88
    invoke-super {p0, p2, p1, p4, p3}, Lcom/jaygoo/widget/RangeSeekBar;->onSizeChanged(IIII)V

    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    .line 261
    iput p1, p0, Lcom/jaygoo/widget/VerticalRangeSeekBar;->orientation:I

    return-void
.end method

.method public setTickMarkDirection(I)V
    .locals 0

    .line 275
    iput p1, p0, Lcom/jaygoo/widget/VerticalRangeSeekBar;->tickMarkDirection:I

    return-void
.end method

.method public setTickMarkTextArray([Ljava/lang/CharSequence;)V
    .locals 0

    .line 215
    invoke-super {p0, p1}, Lcom/jaygoo/widget/RangeSeekBar;->setTickMarkTextArray([Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 216
    iput p1, p0, Lcom/jaygoo/widget/VerticalRangeSeekBar;->maxTickMarkWidth:I

    return-void
.end method

.method public setTickMarkTextSize(I)V
    .locals 0

    .line 209
    invoke-super {p0, p1}, Lcom/jaygoo/widget/RangeSeekBar;->setTickMarkTextSize(I)V

    const/4 p1, 0x0

    .line 210
    iput p1, p0, Lcom/jaygoo/widget/VerticalRangeSeekBar;->maxTickMarkWidth:I

    return-void
.end method
