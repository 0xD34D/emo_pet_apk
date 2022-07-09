.class public Lcom/jaygoo/widget/SeekBar;
.super Ljava/lang/Object;
.source "SeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jaygoo/widget/SeekBar$IndicatorModeDef;
    }
.end annotation


# static fields
.field public static final INDICATOR_ALWAYS_HIDE:I = 0x1

.field public static final INDICATOR_ALWAYS_SHOW:I = 0x3

.field public static final INDICATOR_ALWAYS_SHOW_AFTER_TOUCH:I = 0x2

.field public static final INDICATOR_SHOW_WHEN_TOUCH:I = 0x0

.field public static final MATCH_PARENT:I = -0x2

.field public static final WRAP_CONTENT:I = -0x1


# instance fields
.field anim:Landroid/animation/ValueAnimator;

.field bottom:I

.field currPercent:F

.field indicatorArrowPath:Landroid/graphics/Path;

.field private indicatorArrowSize:I

.field private indicatorBackgroundColor:I

.field indicatorBitmap:Landroid/graphics/Bitmap;

.field private indicatorDrawableId:I

.field private indicatorHeight:I

.field private indicatorMargin:I

.field private indicatorPaddingBottom:I

.field private indicatorPaddingLeft:I

.field private indicatorPaddingRight:I

.field private indicatorPaddingTop:I

.field private indicatorRadius:F

.field indicatorRect:Landroid/graphics/Rect;

.field private indicatorShowMode:I

.field private indicatorTextColor:I

.field indicatorTextDecimalFormat:Ljava/text/DecimalFormat;

.field indicatorTextRect:Landroid/graphics/Rect;

.field private indicatorTextSize:I

.field indicatorTextStringFormat:Ljava/lang/String;

.field private indicatorWidth:I

.field isActivate:Z

.field isLeft:Z

.field private isShowIndicator:Z

.field isVisible:Z

.field left:I

.field material:F

.field paint:Landroid/graphics/Paint;

.field rangeSeekBar:Lcom/jaygoo/widget/RangeSeekBar;

.field right:I

.field scaleThumbHeight:I

.field scaleThumbWidth:I

.field thumbBitmap:Landroid/graphics/Bitmap;

.field private thumbDrawableId:I

.field private thumbHeight:I

.field thumbInactivatedBitmap:Landroid/graphics/Bitmap;

.field private thumbInactivatedDrawableId:I

.field thumbScaleRatio:F

.field private thumbWidth:I

.field top:I

.field userText2Draw:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/jaygoo/widget/RangeSeekBar;Landroid/util/AttributeSet;Z)V
    .locals 2

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 80
    iput v0, p0, Lcom/jaygoo/widget/SeekBar;->material:F

    const/4 v0, 0x0

    .line 88
    iput-boolean v0, p0, Lcom/jaygoo/widget/SeekBar;->isActivate:Z

    const/4 v0, 0x1

    .line 89
    iput-boolean v0, p0, Lcom/jaygoo/widget/SeekBar;->isVisible:Z

    .line 92
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/jaygoo/widget/SeekBar;->indicatorArrowPath:Landroid/graphics/Path;

    .line 93
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/jaygoo/widget/SeekBar;->indicatorTextRect:Landroid/graphics/Rect;

    .line 94
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/jaygoo/widget/SeekBar;->indicatorRect:Landroid/graphics/Rect;

    .line 95
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/jaygoo/widget/SeekBar;->paint:Landroid/graphics/Paint;

    .line 101
    iput-object p1, p0, Lcom/jaygoo/widget/SeekBar;->rangeSeekBar:Lcom/jaygoo/widget/RangeSeekBar;

    .line 102
    iput-boolean p3, p0, Lcom/jaygoo/widget/SeekBar;->isLeft:Z

    .line 103
    invoke-direct {p0, p2}, Lcom/jaygoo/widget/SeekBar;->initAttrs(Landroid/util/AttributeSet;)V

    .line 104
    invoke-direct {p0}, Lcom/jaygoo/widget/SeekBar;->initBitmap()V

    .line 105
    invoke-virtual {p0}, Lcom/jaygoo/widget/SeekBar;->initVariables()V

    return-void
.end method

.method private initAttrs(Landroid/util/AttributeSet;)V
    .locals 6

    .line 109
    invoke-virtual {p0}, Lcom/jaygoo/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/jaygoo/widget/R$styleable;->RangeSeekBar:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 111
    :cond_0
    sget v0, Lcom/jaygoo/widget/R$styleable;->RangeSeekBar_rsb_indicator_margin:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/jaygoo/widget/SeekBar;->indicatorMargin:I

    .line 112
    sget v0, Lcom/jaygoo/widget/R$styleable;->RangeSeekBar_rsb_indicator_drawable:I

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/jaygoo/widget/SeekBar;->indicatorDrawableId:I

    .line 113
    sget v0, Lcom/jaygoo/widget/R$styleable;->RangeSeekBar_rsb_indicator_show_mode:I

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/jaygoo/widget/SeekBar;->indicatorShowMode:I

    .line 114
    sget v0, Lcom/jaygoo/widget/R$styleable;->RangeSeekBar_rsb_indicator_height:I

    const/4 v3, -0x1

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v0

    iput v0, p0, Lcom/jaygoo/widget/SeekBar;->indicatorHeight:I

    .line 115
    sget v0, Lcom/jaygoo/widget/R$styleable;->RangeSeekBar_rsb_indicator_width:I

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v0

    iput v0, p0, Lcom/jaygoo/widget/SeekBar;->indicatorWidth:I

    .line 116
    sget v0, Lcom/jaygoo/widget/R$styleable;->RangeSeekBar_rsb_indicator_text_size:I

    invoke-virtual {p0}, Lcom/jaygoo/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x41600000    # 14.0f

    invoke-static {v4, v5}, Lcom/jaygoo/widget/Utils;->dp2px(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v0, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/jaygoo/widget/SeekBar;->indicatorTextSize:I

    .line 117
    sget v0, Lcom/jaygoo/widget/R$styleable;->RangeSeekBar_rsb_indicator_text_color:I

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/jaygoo/widget/SeekBar;->indicatorTextColor:I

    .line 118
    sget v0, Lcom/jaygoo/widget/R$styleable;->RangeSeekBar_rsb_indicator_background_color:I

    invoke-virtual {p0}, Lcom/jaygoo/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/jaygoo/widget/R$color;->colorAccent:I

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/jaygoo/widget/SeekBar;->indicatorBackgroundColor:I

    .line 119
    sget v0, Lcom/jaygoo/widget/R$styleable;->RangeSeekBar_rsb_indicator_padding_left:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/jaygoo/widget/SeekBar;->indicatorPaddingLeft:I

    .line 120
    sget v0, Lcom/jaygoo/widget/R$styleable;->RangeSeekBar_rsb_indicator_padding_right:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/jaygoo/widget/SeekBar;->indicatorPaddingRight:I

    .line 121
    sget v0, Lcom/jaygoo/widget/R$styleable;->RangeSeekBar_rsb_indicator_padding_top:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/jaygoo/widget/SeekBar;->indicatorPaddingTop:I

    .line 122
    sget v0, Lcom/jaygoo/widget/R$styleable;->RangeSeekBar_rsb_indicator_padding_bottom:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/jaygoo/widget/SeekBar;->indicatorPaddingBottom:I

    .line 123
    sget v0, Lcom/jaygoo/widget/R$styleable;->RangeSeekBar_rsb_indicator_arrow_size:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/jaygoo/widget/SeekBar;->indicatorArrowSize:I

    .line 124
    sget v0, Lcom/jaygoo/widget/R$styleable;->RangeSeekBar_rsb_thumb_drawable:I

    sget v3, Lcom/jaygoo/widget/R$drawable;->rsb_default_thumb:I

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/jaygoo/widget/SeekBar;->thumbDrawableId:I

    .line 125
    sget v0, Lcom/jaygoo/widget/R$styleable;->RangeSeekBar_rsb_thumb_inactivated_drawable:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/jaygoo/widget/SeekBar;->thumbInactivatedDrawableId:I

    .line 126
    sget v0, Lcom/jaygoo/widget/R$styleable;->RangeSeekBar_rsb_thumb_width:I

    invoke-virtual {p0}, Lcom/jaygoo/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x41d00000    # 26.0f

    invoke-static {v2, v3}, Lcom/jaygoo/widget/Utils;->dp2px(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/jaygoo/widget/SeekBar;->thumbWidth:I

    .line 127
    sget v0, Lcom/jaygoo/widget/R$styleable;->RangeSeekBar_rsb_thumb_height:I

    invoke-virtual {p0}, Lcom/jaygoo/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/jaygoo/widget/Utils;->dp2px(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/jaygoo/widget/SeekBar;->thumbHeight:I

    .line 128
    sget v0, Lcom/jaygoo/widget/R$styleable;->RangeSeekBar_rsb_thumb_scale_ratio:I

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/jaygoo/widget/SeekBar;->thumbScaleRatio:F

    .line 129
    sget v0, Lcom/jaygoo/widget/R$styleable;->RangeSeekBar_rsb_indicator_radius:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/jaygoo/widget/SeekBar;->indicatorRadius:F

    .line 130
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private initBitmap()V
    .locals 3

    .line 157
    iget v0, p0, Lcom/jaygoo/widget/SeekBar;->indicatorDrawableId:I

    invoke-virtual {p0, v0}, Lcom/jaygoo/widget/SeekBar;->setIndicatorDrawableId(I)V

    .line 158
    iget v0, p0, Lcom/jaygoo/widget/SeekBar;->thumbDrawableId:I

    iget v1, p0, Lcom/jaygoo/widget/SeekBar;->thumbWidth:I

    iget v2, p0, Lcom/jaygoo/widget/SeekBar;->thumbHeight:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/jaygoo/widget/SeekBar;->setThumbDrawableId(III)V

    .line 159
    iget v0, p0, Lcom/jaygoo/widget/SeekBar;->thumbInactivatedDrawableId:I

    iget v1, p0, Lcom/jaygoo/widget/SeekBar;->thumbWidth:I

    iget v2, p0, Lcom/jaygoo/widget/SeekBar;->thumbHeight:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/jaygoo/widget/SeekBar;->setThumbInactivatedDrawableId(III)V

    return-void
.end method


# virtual methods
.method protected collide(FF)Z
    .locals 2

    .line 369
    iget-object v0, p0, Lcom/jaygoo/widget/SeekBar;->rangeSeekBar:Lcom/jaygoo/widget/RangeSeekBar;

    invoke-virtual {v0}, Lcom/jaygoo/widget/RangeSeekBar;->getProgressWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/jaygoo/widget/SeekBar;->currPercent:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 370
    iget v1, p0, Lcom/jaygoo/widget/SeekBar;->left:I

    add-int/2addr v1, v0

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    iget v1, p0, Lcom/jaygoo/widget/SeekBar;->right:I

    add-int/2addr v1, v0

    int-to-float v0, v1

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    iget p1, p0, Lcom/jaygoo/widget/SeekBar;->top:I

    int-to-float p1, p1

    cmpl-float p1, p2, p1

    if-lez p1, :cond_0

    iget p1, p0, Lcom/jaygoo/widget/SeekBar;->bottom:I

    int-to-float p1, p1

    cmpg-float p1, p2, p1

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected draw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 208
    iget-boolean v0, p0, Lcom/jaygoo/widget/SeekBar;->isVisible:Z

    if-nez v0, :cond_0

    return-void

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/jaygoo/widget/SeekBar;->rangeSeekBar:Lcom/jaygoo/widget/RangeSeekBar;

    invoke-virtual {v0}, Lcom/jaygoo/widget/RangeSeekBar;->getProgressWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/jaygoo/widget/SeekBar;->currPercent:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 212
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v0, v0

    const/4 v1, 0x0

    .line 213
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 215
    iget v0, p0, Lcom/jaygoo/widget/SeekBar;->left:I

    int-to-float v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 216
    iget-boolean v0, p0, Lcom/jaygoo/widget/SeekBar;->isShowIndicator:Z

    if-eqz v0, :cond_1

    .line 217
    iget-object v0, p0, Lcom/jaygoo/widget/SeekBar;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/jaygoo/widget/SeekBar;->userText2Draw:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/jaygoo/widget/SeekBar;->formatCurrentIndicatorText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/jaygoo/widget/SeekBar;->onDrawIndicator(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;)V

    .line 219
    :cond_1
    invoke-virtual {p0, p1}, Lcom/jaygoo/widget/SeekBar;->onDrawThumb(Landroid/graphics/Canvas;)V

    .line 220
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected formatCurrentIndicatorText(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 249
    iget-object v0, p0, Lcom/jaygoo/widget/SeekBar;->rangeSeekBar:Lcom/jaygoo/widget/RangeSeekBar;

    invoke-virtual {v0}, Lcom/jaygoo/widget/RangeSeekBar;->getRangeSeekBarState()[Lcom/jaygoo/widget/SeekBarState;

    move-result-object v0

    .line 250
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    .line 251
    iget-boolean p1, p0, Lcom/jaygoo/widget/SeekBar;->isLeft:Z

    if-eqz p1, :cond_1

    .line 252
    iget-object p1, p0, Lcom/jaygoo/widget/SeekBar;->indicatorTextDecimalFormat:Ljava/text/DecimalFormat;

    if-eqz p1, :cond_0

    .line 253
    aget-object v0, v0, v2

    iget v0, v0, Lcom/jaygoo/widget/SeekBarState;->value:F

    float-to-double v0, v0

    invoke-virtual {p1, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 255
    :cond_0
    aget-object p1, v0, v2

    iget-object p1, p1, Lcom/jaygoo/widget/SeekBarState;->indicatorText:Ljava/lang/String;

    goto :goto_0

    .line 258
    :cond_1
    iget-object p1, p0, Lcom/jaygoo/widget/SeekBar;->indicatorTextDecimalFormat:Ljava/text/DecimalFormat;

    if-eqz p1, :cond_2

    .line 259
    aget-object v0, v0, v3

    iget v0, v0, Lcom/jaygoo/widget/SeekBarState;->value:F

    float-to-double v0, v0

    invoke-virtual {p1, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 261
    :cond_2
    aget-object p1, v0, v3

    iget-object p1, p1, Lcom/jaygoo/widget/SeekBarState;->indicatorText:Ljava/lang/String;

    .line 265
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/jaygoo/widget/SeekBar;->indicatorTextStringFormat:Ljava/lang/String;

    if-eqz v0, :cond_4

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v2

    .line 266
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :cond_4
    return-object p1
.end method

.method protected getActivate()Z
    .locals 1

    .line 652
    iget-boolean v0, p0, Lcom/jaygoo/widget/SeekBar;->isActivate:Z

    return v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/jaygoo/widget/SeekBar;->rangeSeekBar:Lcom/jaygoo/widget/RangeSeekBar;

    invoke-virtual {v0}, Lcom/jaygoo/widget/RangeSeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getIndicatorArrowSize()I
    .locals 1

    .line 443
    iget v0, p0, Lcom/jaygoo/widget/SeekBar;->indicatorArrowSize:I

    return v0
.end method

.method public getIndicatorBackgroundColor()I
    .locals 1

    .line 568
    iget v0, p0, Lcom/jaygoo/widget/SeekBar;->indicatorBackgroundColor:I

    return v0
.end method

.method public getIndicatorDrawableId()I
    .locals 1

    .line 431
    iget v0, p0, Lcom/jaygoo/widget/SeekBar;->indicatorDrawableId:I

    return v0
.end method

.method public getIndicatorHeight()I
    .locals 1

    .line 536
    iget v0, p0, Lcom/jaygoo/widget/SeekBar;->indicatorHeight:I

    return v0
.end method

.method public getIndicatorMargin()I
    .locals 1

    .line 483
    iget v0, p0, Lcom/jaygoo/widget/SeekBar;->indicatorMargin:I

    return v0
.end method

.method public getIndicatorPaddingBottom()I
    .locals 1

    .line 475
    iget v0, p0, Lcom/jaygoo/widget/SeekBar;->indicatorPaddingBottom:I

    return v0
.end method

.method public getIndicatorPaddingLeft()I
    .locals 1

    .line 451
    iget v0, p0, Lcom/jaygoo/widget/SeekBar;->indicatorPaddingLeft:I

    return v0
.end method

.method public getIndicatorPaddingRight()I
    .locals 1

    .line 459
    iget v0, p0, Lcom/jaygoo/widget/SeekBar;->indicatorPaddingRight:I

    return v0
.end method

.method public getIndicatorPaddingTop()I
    .locals 1

    .line 467
    iget v0, p0, Lcom/jaygoo/widget/SeekBar;->indicatorPaddingTop:I

    return v0
.end method

.method public getIndicatorRadius()F
    .locals 1

    .line 644
    iget v0, p0, Lcom/jaygoo/widget/SeekBar;->indicatorRadius:F

    return v0
.end method

.method public getIndicatorRawHeight()I
    .locals 2

    .line 520
    iget v0, p0, Lcom/jaygoo/widget/SeekBar;->indicatorHeight:I

    if-lez v0, :cond_1

    .line 521
    iget-object v1, p0, Lcom/jaygoo/widget/SeekBar;->indicatorBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 522
    iget v1, p0, Lcom/jaygoo/widget/SeekBar;->indicatorMargin:I

    :goto_0
    add-int/2addr v0, v1

    return v0

    .line 524
    :cond_0
    iget v1, p0, Lcom/jaygoo/widget/SeekBar;->indicatorArrowSize:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/jaygoo/widget/SeekBar;->indicatorMargin:I

    goto :goto_0

    .line 527
    :cond_1
    iget-object v0, p0, Lcom/jaygoo/widget/SeekBar;->indicatorBitmap:Landroid/graphics/Bitmap;

    const-string v1, "8"

    if-eqz v0, :cond_2

    .line 528
    iget v0, p0, Lcom/jaygoo/widget/SeekBar;->indicatorTextSize:I

    int-to-float v0, v0

    invoke-static {v1, v0}, Lcom/jaygoo/widget/Utils;->measureText(Ljava/lang/String;F)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v1, p0, Lcom/jaygoo/widget/SeekBar;->indicatorPaddingTop:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/jaygoo/widget/SeekBar;->indicatorPaddingBottom:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/jaygoo/widget/SeekBar;->indicatorMargin:I

    goto :goto_0

    .line 530
    :cond_2
    iget v0, p0, Lcom/jaygoo/widget/SeekBar;->indicatorTextSize:I

    int-to-float v0, v0

    invoke-static {v1, v0}, Lcom/jaygoo/widget/Utils;->measureText(Ljava/lang/String;F)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v1, p0, Lcom/jaygoo/widget/SeekBar;->indicatorPaddingTop:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/jaygoo/widget/SeekBar;->indicatorPaddingBottom:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/jaygoo/widget/SeekBar;->indicatorMargin:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/jaygoo/widget/SeekBar;->indicatorArrowSize:I

    goto :goto_0
.end method

.method public getIndicatorShowMode()I
    .locals 1

    .line 491
    iget v0, p0, Lcom/jaygoo/widget/SeekBar;->indicatorShowMode:I

    return v0
.end method

.method public getIndicatorTextColor()I
    .locals 1

    .line 560
    iget v0, p0, Lcom/jaygoo/widget/SeekBar;->indicatorTextColor:I

    return v0
.end method

.method public getIndicatorTextDecimalFormat()Ljava/text/DecimalFormat;
    .locals 1

    .line 423
    iget-object v0, p0, Lcom/jaygoo/widget/SeekBar;->indicatorTextDecimalFormat:Ljava/text/DecimalFormat;

    return-object v0
.end method

.method public getIndicatorTextSize()I
    .locals 1

    .line 552
    iget v0, p0, Lcom/jaygoo/widget/SeekBar;->indicatorTextSize:I

    return v0
.end method

.method public getIndicatorWidth()I
    .locals 1

    .line 544
    iget v0, p0, Lcom/jaygoo/widget/SeekBar;->indicatorWidth:I

    return v0
.end method

.method public getProgress()F
    .locals 3

    .line 687
    iget-object v0, p0, Lcom/jaygoo/widget/SeekBar;->rangeSeekBar:Lcom/jaygoo/widget/RangeSeekBar;

    invoke-virtual {v0}, Lcom/jaygoo/widget/RangeSeekBar;->getMaxProgress()F

    move-result v0

    iget-object v1, p0, Lcom/jaygoo/widget/SeekBar;->rangeSeekBar:Lcom/jaygoo/widget/RangeSeekBar;

    invoke-virtual {v1}, Lcom/jaygoo/widget/RangeSeekBar;->getMinProgress()F

    move-result v1

    sub-float/2addr v0, v1

    .line 688
    iget-object v1, p0, Lcom/jaygoo/widget/SeekBar;->rangeSeekBar:Lcom/jaygoo/widget/RangeSeekBar;

    invoke-virtual {v1}, Lcom/jaygoo/widget/RangeSeekBar;->getMinProgress()F

    move-result v1

    iget v2, p0, Lcom/jaygoo/widget/SeekBar;->currPercent:F

    mul-float/2addr v0, v2

    add-float/2addr v1, v0

    return v1
.end method

.method public getRawHeight()F
    .locals 2

    .line 198
    invoke-virtual {p0}, Lcom/jaygoo/widget/SeekBar;->getIndicatorHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/jaygoo/widget/SeekBar;->getIndicatorArrowSize()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/jaygoo/widget/SeekBar;->getIndicatorMargin()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/jaygoo/widget/SeekBar;->getThumbScaleHeight()F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .line 149
    invoke-virtual {p0}, Lcom/jaygoo/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/jaygoo/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getThumbDrawableId()I
    .locals 1

    .line 591
    iget v0, p0, Lcom/jaygoo/widget/SeekBar;->thumbDrawableId:I

    return v0
.end method

.method public getThumbHeight()I
    .locals 1

    .line 636
    iget v0, p0, Lcom/jaygoo/widget/SeekBar;->thumbHeight:I

    return v0
.end method

.method public getThumbInactivatedDrawableId()I
    .locals 1

    .line 576
    iget v0, p0, Lcom/jaygoo/widget/SeekBar;->thumbInactivatedDrawableId:I

    return v0
.end method

.method public getThumbScaleHeight()F
    .locals 2

    .line 628
    iget v0, p0, Lcom/jaygoo/widget/SeekBar;->thumbHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/jaygoo/widget/SeekBar;->thumbScaleRatio:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public getThumbScaleRatio()F
    .locals 1

    .line 670
    iget v0, p0, Lcom/jaygoo/widget/SeekBar;->thumbScaleRatio:F

    return v0
.end method

.method public getThumbScaleWidth()F
    .locals 2

    .line 632
    iget v0, p0, Lcom/jaygoo/widget/SeekBar;->thumbWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/jaygoo/widget/SeekBar;->thumbScaleRatio:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public getThumbWidth()I
    .locals 1

    .line 620
    iget v0, p0, Lcom/jaygoo/widget/SeekBar;->thumbWidth:I

    return v0
.end method

.method protected initVariables()V
    .locals 2

    .line 134
    iget v0, p0, Lcom/jaygoo/widget/SeekBar;->thumbWidth:I

    iput v0, p0, Lcom/jaygoo/widget/SeekBar;->scaleThumbWidth:I

    .line 135
    iget v0, p0, Lcom/jaygoo/widget/SeekBar;->thumbHeight:I

    iput v0, p0, Lcom/jaygoo/widget/SeekBar;->scaleThumbHeight:I

    .line 136
    iget v0, p0, Lcom/jaygoo/widget/SeekBar;->indicatorHeight:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 137
    iget v0, p0, Lcom/jaygoo/widget/SeekBar;->indicatorTextSize:I

    int-to-float v0, v0

    const-string v1, "8"

    invoke-static {v1, v0}, Lcom/jaygoo/widget/Utils;->measureText(Ljava/lang/String;F)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v1, p0, Lcom/jaygoo/widget/SeekBar;->indicatorPaddingTop:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/jaygoo/widget/SeekBar;->indicatorPaddingBottom:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/jaygoo/widget/SeekBar;->indicatorHeight:I

    .line 139
    :cond_0
    iget v0, p0, Lcom/jaygoo/widget/SeekBar;->indicatorArrowSize:I

    if-gtz v0, :cond_1

    .line 140
    iget v0, p0, Lcom/jaygoo/widget/SeekBar;->thumbWidth:I

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/jaygoo/widget/SeekBar;->indicatorArrowSize:I

    :cond_1
    return-void
.end method

.method public isShowIndicator()Z
    .locals 1

    .line 511
    iget-boolean v0, p0, Lcom/jaygoo/widget/SeekBar;->isShowIndicator:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 674
    iget-boolean v0, p0, Lcom/jaygoo/widget/SeekBar;->isVisible:Z

    return v0
.end method

.method public materialRestore()V
    .locals 3

    .line 395
    iget-object v0, p0, Lcom/jaygoo/widget/SeekBar;->anim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 396
    iget v2, p0, Lcom/jaygoo/widget/SeekBar;->material:F

    aput v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/jaygoo/widget/SeekBar;->anim:Landroid/animation/ValueAnimator;

    .line 397
    new-instance v1, Lcom/jaygoo/widget/SeekBar$1;

    invoke-direct {v1, p0}, Lcom/jaygoo/widget/SeekBar$1;-><init>(Lcom/jaygoo/widget/SeekBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 404
    iget-object v0, p0, Lcom/jaygoo/widget/SeekBar;->anim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/jaygoo/widget/SeekBar$2;

    invoke-direct {v1, p0}, Lcom/jaygoo/widget/SeekBar$2;-><init>(Lcom/jaygoo/widget/SeekBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 411
    iget-object v0, p0, Lcom/jaygoo/widget/SeekBar;->anim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method protected onDrawIndicator(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;)V
    .locals 8

    if-nez p3, :cond_0

    return-void

    .line 280
    :cond_0
    iget v0, p0, Lcom/jaygoo/widget/SeekBar;->indicatorTextSize:I

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 281
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 282
    iget v0, p0, Lcom/jaygoo/widget/SeekBar;->indicatorBackgroundColor:I

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, 0x0

    .line 283
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/jaygoo/widget/SeekBar;->indicatorTextRect:Landroid/graphics/Rect;

    invoke-virtual {p2, p3, v0, v1, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 284
    iget-object v0, p0, Lcom/jaygoo/widget/SeekBar;->indicatorTextRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget v1, p0, Lcom/jaygoo/widget/SeekBar;->indicatorPaddingLeft:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/jaygoo/widget/SeekBar;->indicatorPaddingRight:I

    add-int/2addr v0, v1

    .line 285
    iget v1, p0, Lcom/jaygoo/widget/SeekBar;->indicatorWidth:I

    if-le v1, v0, :cond_1

    move v0, v1

    .line 289
    :cond_1
    iget-object v1, p0, Lcom/jaygoo/widget/SeekBar;->indicatorTextRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget v2, p0, Lcom/jaygoo/widget/SeekBar;->indicatorPaddingTop:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/jaygoo/widget/SeekBar;->indicatorPaddingBottom:I

    add-int/2addr v1, v2

    .line 290
    iget v2, p0, Lcom/jaygoo/widget/SeekBar;->indicatorHeight:I

    if-le v2, v1, :cond_2

    move v1, v2

    .line 294
    :cond_2
    iget-object v2, p0, Lcom/jaygoo/widget/SeekBar;->indicatorRect:Landroid/graphics/Rect;

    iget v3, p0, Lcom/jaygoo/widget/SeekBar;->scaleThumbWidth:I

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    int-to-float v5, v0

    div-float/2addr v5, v4

    sub-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 295
    iget-object v2, p0, Lcom/jaygoo/widget/SeekBar;->indicatorRect:Landroid/graphics/Rect;

    iget v3, p0, Lcom/jaygoo/widget/SeekBar;->bottom:I

    sub-int/2addr v3, v1

    iget v4, p0, Lcom/jaygoo/widget/SeekBar;->scaleThumbHeight:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/jaygoo/widget/SeekBar;->indicatorMargin:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 296
    iget-object v2, p0, Lcom/jaygoo/widget/SeekBar;->indicatorRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v0

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 297
    iget-object v2, p0, Lcom/jaygoo/widget/SeekBar;->indicatorRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v1

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 299
    iget-object v2, p0, Lcom/jaygoo/widget/SeekBar;->indicatorBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_3

    .line 303
    iget v2, p0, Lcom/jaygoo/widget/SeekBar;->scaleThumbWidth:I

    div-int/lit8 v2, v2, 0x2

    .line 304
    iget-object v3, p0, Lcom/jaygoo/widget/SeekBar;->indicatorRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    .line 305
    iget v4, p0, Lcom/jaygoo/widget/SeekBar;->indicatorArrowSize:I

    sub-int v5, v2, v4

    sub-int v6, v3, v4

    add-int/2addr v4, v2

    .line 308
    iget-object v7, p0, Lcom/jaygoo/widget/SeekBar;->indicatorArrowPath:Landroid/graphics/Path;

    invoke-virtual {v7}, Landroid/graphics/Path;->reset()V

    .line 309
    iget-object v7, p0, Lcom/jaygoo/widget/SeekBar;->indicatorArrowPath:Landroid/graphics/Path;

    int-to-float v2, v2

    int-to-float v3, v3

    invoke-virtual {v7, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 310
    iget-object v2, p0, Lcom/jaygoo/widget/SeekBar;->indicatorArrowPath:Landroid/graphics/Path;

    int-to-float v3, v5

    int-to-float v5, v6

    invoke-virtual {v2, v3, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 311
    iget-object v2, p0, Lcom/jaygoo/widget/SeekBar;->indicatorArrowPath:Landroid/graphics/Path;

    int-to-float v3, v4

    invoke-virtual {v2, v3, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 312
    iget-object v2, p0, Lcom/jaygoo/widget/SeekBar;->indicatorArrowPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 313
    iget-object v2, p0, Lcom/jaygoo/widget/SeekBar;->indicatorArrowPath:Landroid/graphics/Path;

    invoke-virtual {p1, v2, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 314
    iget-object v2, p0, Lcom/jaygoo/widget/SeekBar;->indicatorRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Lcom/jaygoo/widget/SeekBar;->indicatorArrowSize:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 315
    iget-object v2, p0, Lcom/jaygoo/widget/SeekBar;->indicatorRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/jaygoo/widget/SeekBar;->indicatorArrowSize:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 319
    :cond_3
    invoke-virtual {p0}, Lcom/jaygoo/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v3}, Lcom/jaygoo/widget/Utils;->dp2px(Landroid/content/Context;F)I

    move-result v2

    .line 320
    iget-object v4, p0, Lcom/jaygoo/widget/SeekBar;->indicatorRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Lcom/jaygoo/widget/SeekBar;->rangeSeekBar:Lcom/jaygoo/widget/RangeSeekBar;

    invoke-virtual {v5}, Lcom/jaygoo/widget/RangeSeekBar;->getProgressWidth()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/jaygoo/widget/SeekBar;->currPercent:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/jaygoo/widget/SeekBar;->rangeSeekBar:Lcom/jaygoo/widget/RangeSeekBar;

    invoke-virtual {v5}, Lcom/jaygoo/widget/RangeSeekBar;->getProgressLeft()I

    move-result v5

    sub-int/2addr v4, v5

    add-int/2addr v4, v2

    .line 321
    iget-object v5, p0, Lcom/jaygoo/widget/SeekBar;->indicatorRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    iget-object v6, p0, Lcom/jaygoo/widget/SeekBar;->rangeSeekBar:Lcom/jaygoo/widget/RangeSeekBar;

    invoke-virtual {v6}, Lcom/jaygoo/widget/RangeSeekBar;->getProgressWidth()I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lcom/jaygoo/widget/SeekBar;->currPercent:F

    sub-float/2addr v3, v7

    mul-float/2addr v6, v3

    float-to-int v3, v6

    sub-int/2addr v5, v3

    iget-object v3, p0, Lcom/jaygoo/widget/SeekBar;->rangeSeekBar:Lcom/jaygoo/widget/RangeSeekBar;

    invoke-virtual {v3}, Lcom/jaygoo/widget/RangeSeekBar;->getProgressPaddingRight()I

    move-result v3

    sub-int/2addr v5, v3

    add-int/2addr v5, v2

    if-lez v4, :cond_4

    .line 324
    iget-object v2, p0, Lcom/jaygoo/widget/SeekBar;->indicatorRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 325
    iget-object v2, p0, Lcom/jaygoo/widget/SeekBar;->indicatorRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_4
    if-lez v5, :cond_5

    .line 327
    iget-object v2, p0, Lcom/jaygoo/widget/SeekBar;->indicatorRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v5

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 328
    iget-object v2, p0, Lcom/jaygoo/widget/SeekBar;->indicatorRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v5

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 332
    :cond_5
    :goto_0
    iget-object v2, p0, Lcom/jaygoo/widget/SeekBar;->indicatorBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_6

    .line 333
    iget-object v3, p0, Lcom/jaygoo/widget/SeekBar;->indicatorRect:Landroid/graphics/Rect;

    invoke-static {p1, p2, v2, v3}, Lcom/jaygoo/widget/Utils;->drawBitmap(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    goto :goto_1

    .line 334
    :cond_6
    iget v2, p0, Lcom/jaygoo/widget/SeekBar;->indicatorRadius:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_7

    .line 335
    new-instance v2, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/jaygoo/widget/SeekBar;->indicatorRect:Landroid/graphics/Rect;

    invoke-direct {v2, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iget v3, p0, Lcom/jaygoo/widget/SeekBar;->indicatorRadius:F

    invoke-virtual {p1, v2, v3, v3, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 337
    :cond_7
    iget-object v2, p0, Lcom/jaygoo/widget/SeekBar;->indicatorRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 342
    :goto_1
    iget v2, p0, Lcom/jaygoo/widget/SeekBar;->indicatorPaddingLeft:I

    if-lez v2, :cond_8

    .line 343
    iget-object v0, p0, Lcom/jaygoo/widget/SeekBar;->indicatorRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/jaygoo/widget/SeekBar;->indicatorPaddingLeft:I

    add-int/2addr v0, v2

    goto :goto_2

    .line 344
    :cond_8
    iget v2, p0, Lcom/jaygoo/widget/SeekBar;->indicatorPaddingRight:I

    if-lez v2, :cond_9

    .line 345
    iget-object v0, p0, Lcom/jaygoo/widget/SeekBar;->indicatorRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/jaygoo/widget/SeekBar;->indicatorPaddingRight:I

    sub-int/2addr v0, v2

    iget-object v2, p0, Lcom/jaygoo/widget/SeekBar;->indicatorTextRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v0, v2

    goto :goto_2

    .line 347
    :cond_9
    iget-object v2, p0, Lcom/jaygoo/widget/SeekBar;->indicatorRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/jaygoo/widget/SeekBar;->indicatorTextRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v0, v3

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v2

    .line 350
    :goto_2
    iget v2, p0, Lcom/jaygoo/widget/SeekBar;->indicatorPaddingTop:I

    if-lez v2, :cond_a

    .line 351
    iget-object v1, p0, Lcom/jaygoo/widget/SeekBar;->indicatorRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/jaygoo/widget/SeekBar;->indicatorTextRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/jaygoo/widget/SeekBar;->indicatorPaddingTop:I

    add-int/2addr v1, v2

    goto :goto_3

    .line 352
    :cond_a
    iget v2, p0, Lcom/jaygoo/widget/SeekBar;->indicatorPaddingBottom:I

    if-lez v2, :cond_b

    .line 353
    iget-object v1, p0, Lcom/jaygoo/widget/SeekBar;->indicatorRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/jaygoo/widget/SeekBar;->indicatorTextRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/jaygoo/widget/SeekBar;->indicatorPaddingBottom:I

    sub-int/2addr v1, v2

    goto :goto_3

    .line 355
    :cond_b
    iget-object v2, p0, Lcom/jaygoo/widget/SeekBar;->indicatorRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/jaygoo/widget/SeekBar;->indicatorTextRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v2, v1

    add-int/lit8 v1, v2, 0x1

    .line 359
    :goto_3
    iget v2, p0, Lcom/jaygoo/widget/SeekBar;->indicatorTextColor:I

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v0, v0

    int-to-float v1, v1

    .line 360
    invoke-virtual {p1, p3, v0, v1, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onDrawThumb(Landroid/graphics/Canvas;)V
    .locals 7

    .line 234
    iget-object v0, p0, Lcom/jaygoo/widget/SeekBar;->thumbInactivatedBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    iget-boolean v4, p0, Lcom/jaygoo/widget/SeekBar;->isActivate:Z

    if-nez v4, :cond_0

    .line 235
    iget-object v4, p0, Lcom/jaygoo/widget/SeekBar;->rangeSeekBar:Lcom/jaygoo/widget/RangeSeekBar;

    invoke-virtual {v4}, Lcom/jaygoo/widget/RangeSeekBar;->getProgressTop()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/jaygoo/widget/SeekBar;->rangeSeekBar:Lcom/jaygoo/widget/RangeSeekBar;

    invoke-virtual {v5}, Lcom/jaygoo/widget/RangeSeekBar;->getProgressHeight()I

    move-result v5

    iget v6, p0, Lcom/jaygoo/widget/SeekBar;->scaleThumbHeight:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v5, v2

    add-float/2addr v4, v5

    invoke-virtual {p1, v0, v3, v4, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/jaygoo/widget/SeekBar;->thumbBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 237
    iget-object v4, p0, Lcom/jaygoo/widget/SeekBar;->rangeSeekBar:Lcom/jaygoo/widget/RangeSeekBar;

    invoke-virtual {v4}, Lcom/jaygoo/widget/RangeSeekBar;->getProgressTop()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/jaygoo/widget/SeekBar;->rangeSeekBar:Lcom/jaygoo/widget/RangeSeekBar;

    invoke-virtual {v5}, Lcom/jaygoo/widget/RangeSeekBar;->getProgressHeight()I

    move-result v5

    iget v6, p0, Lcom/jaygoo/widget/SeekBar;->scaleThumbHeight:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v5, v2

    add-float/2addr v4, v5

    invoke-virtual {p1, v0, v3, v4, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onSizeChanged(II)V
    .locals 2

    .line 170
    invoke-virtual {p0}, Lcom/jaygoo/widget/SeekBar;->initVariables()V

    .line 171
    invoke-direct {p0}, Lcom/jaygoo/widget/SeekBar;->initBitmap()V

    int-to-float p1, p1

    .line 172
    invoke-virtual {p0}, Lcom/jaygoo/widget/SeekBar;->getThumbScaleWidth()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sub-float v0, p1, v0

    float-to-int v0, v0

    iput v0, p0, Lcom/jaygoo/widget/SeekBar;->left:I

    .line 173
    invoke-virtual {p0}, Lcom/jaygoo/widget/SeekBar;->getThumbScaleWidth()F

    move-result v0

    div-float/2addr v0, v1

    add-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/jaygoo/widget/SeekBar;->right:I

    .line 174
    invoke-virtual {p0}, Lcom/jaygoo/widget/SeekBar;->getThumbHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    sub-int p1, p2, p1

    iput p1, p0, Lcom/jaygoo/widget/SeekBar;->top:I

    .line 175
    invoke-virtual {p0}, Lcom/jaygoo/widget/SeekBar;->getThumbHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr p2, p1

    iput p2, p0, Lcom/jaygoo/widget/SeekBar;->bottom:I

    return-void
.end method

.method public resetThumb()V
    .locals 3

    .line 189
    invoke-virtual {p0}, Lcom/jaygoo/widget/SeekBar;->getThumbWidth()I

    move-result v0

    iput v0, p0, Lcom/jaygoo/widget/SeekBar;->scaleThumbWidth:I

    .line 190
    invoke-virtual {p0}, Lcom/jaygoo/widget/SeekBar;->getThumbHeight()I

    move-result v0

    iput v0, p0, Lcom/jaygoo/widget/SeekBar;->scaleThumbHeight:I

    .line 191
    iget-object v0, p0, Lcom/jaygoo/widget/SeekBar;->rangeSeekBar:Lcom/jaygoo/widget/RangeSeekBar;

    invoke-virtual {v0}, Lcom/jaygoo/widget/RangeSeekBar;->getProgressBottom()I

    move-result v0

    .line 192
    iget v1, p0, Lcom/jaygoo/widget/SeekBar;->scaleThumbHeight:I

    div-int/lit8 v2, v1, 0x2

    sub-int v2, v0, v2

    iput v2, p0, Lcom/jaygoo/widget/SeekBar;->top:I

    .line 193
    div-int/lit8 v2, v1, 0x2

    add-int/2addr v0, v2

    iput v0, p0, Lcom/jaygoo/widget/SeekBar;->bottom:I

    .line 194
    iget v0, p0, Lcom/jaygoo/widget/SeekBar;->thumbDrawableId:I

    iget v2, p0, Lcom/jaygoo/widget/SeekBar;->scaleThumbWidth:I

    invoke-virtual {p0, v0, v2, v1}, Lcom/jaygoo/widget/SeekBar;->setThumbDrawableId(III)V

    return-void
.end method

.method public scaleThumb()V
    .locals 3

    .line 180
    invoke-virtual {p0}, Lcom/jaygoo/widget/SeekBar;->getThumbScaleWidth()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/jaygoo/widget/SeekBar;->scaleThumbWidth:I

    .line 181
    invoke-virtual {p0}, Lcom/jaygoo/widget/SeekBar;->getThumbScaleHeight()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/jaygoo/widget/SeekBar;->scaleThumbHeight:I

    .line 182
    iget-object v0, p0, Lcom/jaygoo/widget/SeekBar;->rangeSeekBar:Lcom/jaygoo/widget/RangeSeekBar;

    invoke-virtual {v0}, Lcom/jaygoo/widget/RangeSeekBar;->getProgressBottom()I

    move-result v0

    .line 183
    iget v1, p0, Lcom/jaygoo/widget/SeekBar;->scaleThumbHeight:I

    div-int/lit8 v2, v1, 0x2

    sub-int v2, v0, v2

    iput v2, p0, Lcom/jaygoo/widget/SeekBar;->top:I

    .line 184
    div-int/lit8 v2, v1, 0x2

    add-int/2addr v0, v2

    iput v0, p0, Lcom/jaygoo/widget/SeekBar;->bottom:I

    .line 185
    iget v0, p0, Lcom/jaygoo/widget/SeekBar;->thumbDrawableId:I

    iget v2, p0, Lcom/jaygoo/widget/SeekBar;->scaleThumbWidth:I

    invoke-virtual {p0, v0, v2, v1}, Lcom/jaygoo/widget/SeekBar;->setThumbDrawableId(III)V

    return-void
.end method

.method protected setActivate(Z)V
    .locals 0

    .line 656
    iput-boolean p1, p0, Lcom/jaygoo/widget/SeekBar;->isActivate:Z

    return-void
.end method

.method public setIndicatorArrowSize(I)V
    .locals 0

    .line 447
    iput p1, p0, Lcom/jaygoo/widget/SeekBar;->indicatorArrowSize:I

    return-void
.end method

.method public setIndicatorBackgroundColor(I)V
    .locals 0

    .line 572
    iput p1, p0, Lcom/jaygoo/widget/SeekBar;->indicatorBackgroundColor:I

    return-void
.end method

.method public setIndicatorDrawableId(I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 436
    iput p1, p0, Lcom/jaygoo/widget/SeekBar;->indicatorDrawableId:I

    .line 437
    invoke-virtual {p0}, Lcom/jaygoo/widget/SeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/jaygoo/widget/SeekBar;->indicatorBitmap:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method public setIndicatorHeight(I)V
    .locals 0

    .line 540
    iput p1, p0, Lcom/jaygoo/widget/SeekBar;->indicatorHeight:I

    return-void
.end method

.method public setIndicatorMargin(I)V
    .locals 0

    .line 487
    iput p1, p0, Lcom/jaygoo/widget/SeekBar;->indicatorMargin:I

    return-void
.end method

.method public setIndicatorPaddingBottom(I)V
    .locals 0

    .line 479
    iput p1, p0, Lcom/jaygoo/widget/SeekBar;->indicatorPaddingBottom:I

    return-void
.end method

.method public setIndicatorPaddingLeft(I)V
    .locals 0

    .line 455
    iput p1, p0, Lcom/jaygoo/widget/SeekBar;->indicatorPaddingLeft:I

    return-void
.end method

.method public setIndicatorPaddingRight(I)V
    .locals 0

    .line 463
    iput p1, p0, Lcom/jaygoo/widget/SeekBar;->indicatorPaddingRight:I

    return-void
.end method

.method public setIndicatorPaddingTop(I)V
    .locals 0

    .line 471
    iput p1, p0, Lcom/jaygoo/widget/SeekBar;->indicatorPaddingTop:I

    return-void
.end method

.method public setIndicatorRadius(F)V
    .locals 0

    .line 648
    iput p1, p0, Lcom/jaygoo/widget/SeekBar;->indicatorRadius:F

    return-void
.end method

.method public setIndicatorShowMode(I)V
    .locals 0

    .line 503
    iput p1, p0, Lcom/jaygoo/widget/SeekBar;->indicatorShowMode:I

    return-void
.end method

.method public setIndicatorText(Ljava/lang/String;)V
    .locals 0

    .line 415
    iput-object p1, p0, Lcom/jaygoo/widget/SeekBar;->userText2Draw:Ljava/lang/String;

    return-void
.end method

.method public setIndicatorTextColor(I)V
    .locals 0

    .line 564
    iput p1, p0, Lcom/jaygoo/widget/SeekBar;->indicatorTextColor:I

    return-void
.end method

.method public setIndicatorTextDecimalFormat(Ljava/lang/String;)V
    .locals 1

    .line 419
    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0, p1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jaygoo/widget/SeekBar;->indicatorTextDecimalFormat:Ljava/text/DecimalFormat;

    return-void
.end method

.method public setIndicatorTextSize(I)V
    .locals 0

    .line 556
    iput p1, p0, Lcom/jaygoo/widget/SeekBar;->indicatorTextSize:I

    return-void
.end method

.method public setIndicatorTextStringFormat(Ljava/lang/String;)V
    .locals 0

    .line 427
    iput-object p1, p0, Lcom/jaygoo/widget/SeekBar;->indicatorTextStringFormat:Ljava/lang/String;

    return-void
.end method

.method public setIndicatorWidth(I)V
    .locals 0

    .line 548
    iput p1, p0, Lcom/jaygoo/widget/SeekBar;->indicatorWidth:I

    return-void
.end method

.method protected setShowIndicatorEnable(Z)V
    .locals 2

    .line 380
    iget v0, p0, Lcom/jaygoo/widget/SeekBar;->indicatorShowMode:I

    if-eqz v0, :cond_2

    const/4 p1, 0x1

    if-eq v0, p1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 386
    :cond_0
    iput-boolean p1, p0, Lcom/jaygoo/widget/SeekBar;->isShowIndicator:Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 389
    iput-boolean p1, p0, Lcom/jaygoo/widget/SeekBar;->isShowIndicator:Z

    goto :goto_0

    .line 382
    :cond_2
    iput-boolean p1, p0, Lcom/jaygoo/widget/SeekBar;->isShowIndicator:Z

    :goto_0
    return-void
.end method

.method public setThumbDrawableId(I)V
    .locals 4

    .line 606
    iget v0, p0, Lcom/jaygoo/widget/SeekBar;->thumbWidth:I

    if-lez v0, :cond_2

    iget v0, p0, Lcom/jaygoo/widget/SeekBar;->thumbHeight:I

    if-lez v0, :cond_2

    if-eqz p1, :cond_1

    .line 609
    invoke-virtual {p0}, Lcom/jaygoo/widget/SeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 610
    iput p1, p0, Lcom/jaygoo/widget/SeekBar;->thumbDrawableId:I

    .line 611
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 612
    iget v0, p0, Lcom/jaygoo/widget/SeekBar;->thumbWidth:I

    iget v1, p0, Lcom/jaygoo/widget/SeekBar;->thumbHeight:I

    invoke-virtual {p0}, Lcom/jaygoo/widget/SeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/jaygoo/widget/Utils;->drawableToBitmap(IILandroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/jaygoo/widget/SeekBar;->thumbBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 614
    :cond_0
    iget v0, p0, Lcom/jaygoo/widget/SeekBar;->thumbWidth:I

    iget v1, p0, Lcom/jaygoo/widget/SeekBar;->thumbHeight:I

    invoke-virtual {p0}, Lcom/jaygoo/widget/SeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/jaygoo/widget/Utils;->drawableToBitmap(IILandroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/jaygoo/widget/SeekBar;->thumbBitmap:Landroid/graphics/Bitmap;

    :cond_1
    :goto_0
    return-void

    .line 607
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "please set thumbWidth and thumbHeight first!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setThumbDrawableId(III)V
    .locals 2

    if-eqz p1, :cond_1

    .line 595
    invoke-virtual {p0}, Lcom/jaygoo/widget/SeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_1

    if-lez p2, :cond_1

    if-lez p3, :cond_1

    .line 596
    iput p1, p0, Lcom/jaygoo/widget/SeekBar;->thumbDrawableId:I

    .line 597
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 598
    invoke-virtual {p0}, Lcom/jaygoo/widget/SeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {p2, p3, p1}, Lcom/jaygoo/widget/Utils;->drawableToBitmap(IILandroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/jaygoo/widget/SeekBar;->thumbBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 600
    :cond_0
    invoke-virtual {p0}, Lcom/jaygoo/widget/SeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {p2, p3, p1}, Lcom/jaygoo/widget/Utils;->drawableToBitmap(IILandroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/jaygoo/widget/SeekBar;->thumbBitmap:Landroid/graphics/Bitmap;

    :cond_1
    :goto_0
    return-void
.end method

.method public setThumbHeight(I)V
    .locals 0

    .line 640
    iput p1, p0, Lcom/jaygoo/widget/SeekBar;->thumbHeight:I

    return-void
.end method

.method public setThumbInactivatedDrawableId(III)V
    .locals 2

    if-eqz p1, :cond_1

    .line 580
    invoke-virtual {p0}, Lcom/jaygoo/widget/SeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 581
    iput p1, p0, Lcom/jaygoo/widget/SeekBar;->thumbInactivatedDrawableId:I

    .line 582
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 583
    invoke-virtual {p0}, Lcom/jaygoo/widget/SeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {p2, p3, p1}, Lcom/jaygoo/widget/Utils;->drawableToBitmap(IILandroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/jaygoo/widget/SeekBar;->thumbInactivatedBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 585
    :cond_0
    invoke-virtual {p0}, Lcom/jaygoo/widget/SeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {p2, p3, p1}, Lcom/jaygoo/widget/Utils;->drawableToBitmap(IILandroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/jaygoo/widget/SeekBar;->thumbInactivatedBitmap:Landroid/graphics/Bitmap;

    :cond_1
    :goto_0
    return-void
.end method

.method public setThumbWidth(I)V
    .locals 0

    .line 624
    iput p1, p0, Lcom/jaygoo/widget/SeekBar;->thumbWidth:I

    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    .line 660
    iget-object v0, p0, Lcom/jaygoo/widget/SeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void
.end method

.method public setVisible(Z)V
    .locals 0

    .line 683
    iput-boolean p1, p0, Lcom/jaygoo/widget/SeekBar;->isVisible:Z

    return-void
.end method

.method public showIndicator(Z)V
    .locals 0

    .line 507
    iput-boolean p1, p0, Lcom/jaygoo/widget/SeekBar;->isShowIndicator:Z

    return-void
.end method

.method protected slide(F)V
    .locals 3

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    if-gez v1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    cmpl-float v0, p1, v2

    if-lez v0, :cond_1

    move p1, v2

    .line 376
    :cond_1
    :goto_0
    iput p1, p0, Lcom/jaygoo/widget/SeekBar;->currPercent:F

    return-void
.end method
