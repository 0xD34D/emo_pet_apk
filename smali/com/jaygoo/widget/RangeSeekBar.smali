.class public Lcom/jaygoo/widget/RangeSeekBar;
.super Landroid/view/View;
.source "RangeSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jaygoo/widget/RangeSeekBar$Gravity;,
        Lcom/jaygoo/widget/RangeSeekBar$GravityDef;,
        Lcom/jaygoo/widget/RangeSeekBar$TickMarkLayoutGravityDef;,
        Lcom/jaygoo/widget/RangeSeekBar$TickMarkGravityDef;,
        Lcom/jaygoo/widget/RangeSeekBar$TickMarkModeDef;,
        Lcom/jaygoo/widget/RangeSeekBar$SeekBarModeDef;
    }
.end annotation


# static fields
.field private static final MIN_INTERCEPT_DISTANCE:I = 0x64

.field public static final SEEKBAR_MODE_RANGE:I = 0x2

.field public static final SEEKBAR_MODE_SINGLE:I = 0x1

.field public static final TICK_MARK_GRAVITY_CENTER:I = 0x1

.field public static final TICK_MARK_GRAVITY_LEFT:I = 0x0

.field public static final TICK_MARK_GRAVITY_RIGHT:I = 0x2

.field public static final TRICK_MARK_MODE_NUMBER:I = 0x0

.field public static final TRICK_MARK_MODE_OTHER:I = 0x1


# instance fields
.field private callback:Lcom/jaygoo/widget/OnRangeChangedListener;

.field currTouchSB:Lcom/jaygoo/widget/SeekBar;

.field private enableThumbOverlap:Z

.field private gravity:I

.field private isEnable:Z

.field isScaleThumb:Z

.field leftSB:Lcom/jaygoo/widget/SeekBar;

.field private maxProgress:F

.field private minInterval:F

.field private minProgress:F

.field paint:Landroid/graphics/Paint;

.field progressBitmap:Landroid/graphics/Bitmap;

.field private progressBottom:I

.field private progressColor:I

.field progressDefaultBitmap:Landroid/graphics/Bitmap;

.field private progressDefaultColor:I

.field private progressDefaultDrawableId:I

.field progressDefaultDstRect:Landroid/graphics/RectF;

.field private progressDrawableId:I

.field progressDstRect:Landroid/graphics/RectF;

.field private progressHeight:I

.field private progressLeft:I

.field private progressPaddingRight:I

.field private progressRadius:F

.field private progressRight:I

.field progressSrcRect:Landroid/graphics/Rect;

.field private progressTop:I

.field private progressWidth:I

.field reservePercent:F

.field rightSB:Lcom/jaygoo/widget/SeekBar;

.field private seekBarMode:I

.field stepDivRect:Landroid/graphics/RectF;

.field private steps:I

.field private stepsAutoBonding:Z

.field stepsBitmaps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private stepsColor:I

.field private stepsDrawableId:I

.field private stepsHeight:F

.field private stepsRadius:F

.field private stepsWidth:F

.field private tickMarkGravity:I

.field private tickMarkInRangeTextColor:I

.field private tickMarkLayoutGravity:I

.field private tickMarkMode:I

.field private tickMarkTextArray:[Ljava/lang/CharSequence;

.field private tickMarkTextColor:I

.field private tickMarkTextMargin:I

.field tickMarkTextRect:Landroid/graphics/Rect;

.field private tickMarkTextSize:I

.field touchDownX:F

.field touchDownY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 178
    invoke-direct {p0, p1, v0}, Lcom/jaygoo/widget/RangeSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 182
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 157
    iput-boolean p1, p0, Lcom/jaygoo/widget/RangeSeekBar;->isEnable:Z

    const/4 p1, 0x0

    .line 161
    iput-boolean p1, p0, Lcom/jaygoo/widget/RangeSeekBar;->isScaleThumb:Z

    .line 162
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/jaygoo/widget/RangeSeekBar;->paint:Landroid/graphics/Paint;

    .line 163
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/jaygoo/widget/RangeSeekBar;->progressDefaultDstRect:Landroid/graphics/RectF;

    .line 164
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/jaygoo/widget/RangeSeekBar;->progressDstRect:Landroid/graphics/RectF;

    .line 165
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/jaygoo/widget/RangeSeekBar;->progressSrcRect:Landroid/graphics/Rect;

    .line 166
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/jaygoo/widget/RangeSeekBar;->stepDivRect:Landroid/graphics/RectF;

    .line 167
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/jaygoo/widget/RangeSeekBar;->tickMarkTextRect:Landroid/graphics/Rect;

    .line 173
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/jaygoo/widget/RangeSeekBar;->stepsBitmaps:Ljava/util/List;

    .line 183
    invoke-direct {p0, p2}, Lcom/jaygoo/widget/RangeSeekBar;->initAttrs(Landroid/util/AttributeSet;)V

    .line 184
    invoke-direct {p0}, Lcom/jaygoo/widget/RangeSeekBar;->initPaint()V

    .line 185
    invoke-direct {p0, p2}, Lcom/jaygoo/widget/RangeSeekBar;->initSeekBar(Landroid/util/AttributeSet;)V

    .line 186
    invoke-direct {p0}, Lcom/jaygoo/widget/RangeSeekBar;->initStepsBitmap()V

    return-void
.end method

.method private changeThumbActivateState(Z)V
    .locals 4

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 520
    iget-object p1, p0, Lcom/jaygoo/widget/RangeSeekBar;->currTouchSB:Lcom/jaygoo/widget/SeekBar;

    if-eqz p1, :cond_1

    .line 521
    iget-object v2, p0, Lcom/jaygoo/widget/RangeSeekBar;->leftSB:Lcom/jaygoo/widget/SeekBar;

    const/4 v3, 0x1

    if-ne p1, v2, :cond_0

    move v1, v3

    .line 522
    :cond_0
    invoke-virtual {v2, v1}, Lcom/jaygoo/widget/SeekBar;->setActivate(Z)V

    .line 523
    iget p1, p0, Lcom/jaygoo/widget/RangeSeekBar;->seekBarMode:I

    if-ne p1, v0, :cond_2

    .line 524
    iget-object p1, p0, Lcom/jaygoo/widget/RangeSeekBar;->rightSB:Lcom/jaygoo/widget/SeekBar;

    xor-int/lit8 v0, v1, 0x1

    invoke-virtual {p1, v0}, Lcom/jaygoo/widget/SeekBar;->setActivate(Z)V

    goto :goto_0

    .line 526
    :cond_1
    iget-object p1, p0, Lcom/jaygoo/widget/RangeSeekBar;->leftSB:Lcom/jaygoo/widget/SeekBar;

    invoke-virtual {p1, v1}, Lcom/jaygoo/widget/SeekBar;->setActivate(Z)V

    .line 527
    iget p1, p0, Lcom/jaygoo/widget/RangeSeekBar;->seekBarMode:I

    if-ne p1, v0, :cond_2

    .line 528
    iget-object p1, p0, Lcom/jaygoo/widget/RangeSeekBar;->rightSB:Lcom/jaygoo/widget/SeekBar;

    invoke-virtual {p1, v1}, Lcom/jaygoo/widget/SeekBar;->setActivate(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method private initAttrs(Landroid/util/AttributeSet;)V
    .locals 6

    .line 222
    :try_start_0
    invoke-virtual {p0}, Lcom/jaygoo/widget/RangeSeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/jaygoo/widget/R$styleable;->RangeSeekBar:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 223
    sget v0, Lcom/jaygoo/widget/R$styleable;->RangeSeekBar_rsb_mode:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->seekBarMode:I

    .line 224
    sget v0, Lcom/jaygoo/widget/R$styleable;->RangeSeekBar_rsb_min:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->minProgress:F

    .line 225
    sget v0, Lcom/jaygoo/widget/R$styleable;->RangeSeekBar_rsb_max:I

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->maxProgress:F

    .line 226
    sget v0, Lcom/jaygoo/widget/R$styleable;->RangeSeekBar_rsb_min_interval:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->minInterval:F

    .line 227
    sget v0, Lcom/jaygoo/widget/R$styleable;->RangeSeekBar_rsb_gravity:I

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->gravity:I

    .line 228
    sget v0, Lcom/jaygoo/widget/R$styleable;->RangeSeekBar_rsb_progress_color:I

    const v3, -0xb4269e    # -2.70962E38f

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->progressColor:I

    .line 229
    sget v0, Lcom/jaygoo/widget/R$styleable;->RangeSeekBar_rsb_progress_radius:I

    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->progressRadius:F

    .line 230
    sget v0, Lcom/jaygoo/widget/R$styleable;->RangeSeekBar_rsb_progress_default_color:I

    const v3, -0x282829

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->progressDefaultColor:I

    .line 231
    sget v0, Lcom/jaygoo/widget/R$styleable;->RangeSeekBar_rsb_progress_drawable:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->progressDrawableId:I

    .line 232
    sget v0, Lcom/jaygoo/widget/R$styleable;->RangeSeekBar_rsb_progress_drawable_default:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->progressDefaultDrawableId:I

    .line 233
    sget v0, Lcom/jaygoo/widget/R$styleable;->RangeSeekBar_rsb_progress_height:I

    invoke-virtual {p0}, Lcom/jaygoo/widget/RangeSeekBar;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v4}, Lcom/jaygoo/widget/Utils;->dp2px(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->progressHeight:I

    .line 234
    sget v0, Lcom/jaygoo/widget/R$styleable;->RangeSeekBar_rsb_tick_mark_mode:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->tickMarkMode:I

    .line 235
    sget v0, Lcom/jaygoo/widget/R$styleable;->RangeSeekBar_rsb_tick_mark_gravity:I

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->tickMarkGravity:I

    .line 236
    sget v0, Lcom/jaygoo/widget/R$styleable;->RangeSeekBar_rsb_tick_mark_layout_gravity:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->tickMarkLayoutGravity:I

    .line 237
    sget v0, Lcom/jaygoo/widget/R$styleable;->RangeSeekBar_rsb_tick_mark_text_array:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->tickMarkTextArray:[Ljava/lang/CharSequence;

    .line 238
    sget v0, Lcom/jaygoo/widget/R$styleable;->RangeSeekBar_rsb_tick_mark_text_margin:I

    invoke-virtual {p0}, Lcom/jaygoo/widget/RangeSeekBar;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x40e00000    # 7.0f

    invoke-static {v4, v5}, Lcom/jaygoo/widget/Utils;->dp2px(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v0, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->tickMarkTextMargin:I

    .line 239
    sget v0, Lcom/jaygoo/widget/R$styleable;->RangeSeekBar_rsb_tick_mark_text_size:I

    invoke-virtual {p0}, Lcom/jaygoo/widget/RangeSeekBar;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x41400000    # 12.0f

    invoke-static {v4, v5}, Lcom/jaygoo/widget/Utils;->dp2px(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v0, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->tickMarkTextSize:I

    .line 240
    sget v0, Lcom/jaygoo/widget/R$styleable;->RangeSeekBar_rsb_tick_mark_text_color:I

    iget v4, p0, Lcom/jaygoo/widget/RangeSeekBar;->progressDefaultColor:I

    invoke-virtual {p1, v0, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->tickMarkTextColor:I

    .line 241
    sget v0, Lcom/jaygoo/widget/R$styleable;->RangeSeekBar_rsb_tick_mark_text_color:I

    iget v4, p0, Lcom/jaygoo/widget/RangeSeekBar;->progressColor:I

    invoke-virtual {p1, v0, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->tickMarkInRangeTextColor:I

    .line 242
    sget v0, Lcom/jaygoo/widget/R$styleable;->RangeSeekBar_rsb_steps:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->steps:I

    .line 243
    sget v0, Lcom/jaygoo/widget/R$styleable;->RangeSeekBar_rsb_step_color:I

    const v4, -0x626263

    invoke-virtual {p1, v0, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->stepsColor:I

    .line 244
    sget v0, Lcom/jaygoo/widget/R$styleable;->RangeSeekBar_rsb_step_radius:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->stepsRadius:F

    .line 245
    sget v0, Lcom/jaygoo/widget/R$styleable;->RangeSeekBar_rsb_step_width:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->stepsWidth:F

    .line 246
    sget v0, Lcom/jaygoo/widget/R$styleable;->RangeSeekBar_rsb_step_height:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->stepsHeight:F

    .line 247
    sget v0, Lcom/jaygoo/widget/R$styleable;->RangeSeekBar_rsb_step_drawable:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->stepsDrawableId:I

    .line 248
    sget v0, Lcom/jaygoo/widget/R$styleable;->RangeSeekBar_rsb_step_auto_bonding:I

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->stepsAutoBonding:Z

    .line 249
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 251
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private initPaint()V
    .locals 2

    .line 513
    iget-object v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 514
    iget-object v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/jaygoo/widget/RangeSeekBar;->progressDefaultColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 515
    iget-object v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/jaygoo/widget/RangeSeekBar;->tickMarkTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method

.method private initProgressBitmap()V
    .locals 4

    .line 190
    iget-object v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->progressBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 191
    invoke-virtual {p0}, Lcom/jaygoo/widget/RangeSeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/jaygoo/widget/RangeSeekBar;->progressWidth:I

    iget v2, p0, Lcom/jaygoo/widget/RangeSeekBar;->progressHeight:I

    iget v3, p0, Lcom/jaygoo/widget/RangeSeekBar;->progressDrawableId:I

    invoke-static {v0, v1, v2, v3}, Lcom/jaygoo/widget/Utils;->drawableToBitmap(Landroid/content/Context;III)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->progressBitmap:Landroid/graphics/Bitmap;

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->progressDefaultBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 194
    invoke-virtual {p0}, Lcom/jaygoo/widget/RangeSeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/jaygoo/widget/RangeSeekBar;->progressWidth:I

    iget v2, p0, Lcom/jaygoo/widget/RangeSeekBar;->progressHeight:I

    iget v3, p0, Lcom/jaygoo/widget/RangeSeekBar;->progressDefaultDrawableId:I

    invoke-static {v0, v1, v2, v3}, Lcom/jaygoo/widget/Utils;->drawableToBitmap(Landroid/content/Context;III)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->progressDefaultBitmap:Landroid/graphics/Bitmap;

    :cond_1
    return-void
.end method

.method private initSeekBar(Landroid/util/AttributeSet;)V
    .locals 3

    .line 214
    new-instance v0, Lcom/jaygoo/widget/SeekBar;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/jaygoo/widget/SeekBar;-><init>(Lcom/jaygoo/widget/RangeSeekBar;Landroid/util/AttributeSet;Z)V

    iput-object v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->leftSB:Lcom/jaygoo/widget/SeekBar;

    .line 215
    new-instance v0, Lcom/jaygoo/widget/SeekBar;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2}, Lcom/jaygoo/widget/SeekBar;-><init>(Lcom/jaygoo/widget/RangeSeekBar;Landroid/util/AttributeSet;Z)V

    iput-object v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->rightSB:Lcom/jaygoo/widget/SeekBar;

    .line 216
    iget p1, p0, Lcom/jaygoo/widget/RangeSeekBar;->seekBarMode:I

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/jaygoo/widget/SeekBar;->setVisible(Z)V

    return-void
.end method

.method private initStepsBitmap()V
    .locals 4

    .line 204
    invoke-direct {p0}, Lcom/jaygoo/widget/RangeSeekBar;->verifyStepsMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->stepsDrawableId:I

    if-nez v0, :cond_0

    goto :goto_1

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->stepsBitmaps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 206
    invoke-virtual {p0}, Lcom/jaygoo/widget/RangeSeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/jaygoo/widget/RangeSeekBar;->stepsWidth:F

    float-to-int v1, v1

    iget v2, p0, Lcom/jaygoo/widget/RangeSeekBar;->stepsHeight:F

    float-to-int v2, v2

    iget v3, p0, Lcom/jaygoo/widget/RangeSeekBar;->stepsDrawableId:I

    invoke-static {v0, v1, v2, v3}, Lcom/jaygoo/widget/Utils;->drawableToBitmap(Landroid/content/Context;III)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    .line 207
    :goto_0
    iget v2, p0, Lcom/jaygoo/widget/RangeSeekBar;->steps:I

    if-gt v1, v2, :cond_1

    .line 208
    iget-object v2, p0, Lcom/jaygoo/widget/RangeSeekBar;->stepsBitmaps:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private resetCurrentSeekBarThumb()V
    .locals 2

    .line 554
    iget-object v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->currTouchSB:Lcom/jaygoo/widget/SeekBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jaygoo/widget/SeekBar;->getThumbScaleRatio()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->isScaleThumb:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 555
    iput-boolean v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->isScaleThumb:Z

    .line 556
    iget-object v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->currTouchSB:Lcom/jaygoo/widget/SeekBar;

    invoke-virtual {v0}, Lcom/jaygoo/widget/SeekBar;->resetThumb()V

    :cond_0
    return-void
.end method

.method private scaleCurrentSeekBarThumb()V
    .locals 2

    .line 544
    iget-object v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->currTouchSB:Lcom/jaygoo/widget/SeekBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jaygoo/widget/SeekBar;->getThumbScaleRatio()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->isScaleThumb:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 545
    iput-boolean v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->isScaleThumb:Z

    .line 546
    iget-object v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->currTouchSB:Lcom/jaygoo/widget/SeekBar;

    invoke-virtual {v0}, Lcom/jaygoo/widget/SeekBar;->scaleThumb()V

    :cond_0
    return-void
.end method

.method private verifyStepsMode()Z
    .locals 3

    .line 199
    iget v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->steps:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    iget v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->stepsHeight:F

    const/4 v2, 0x0

    cmpg-float v0, v0, v2

    if-lez v0, :cond_1

    iget v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->stepsWidth:F

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method protected calculateCurrentSeekBarPercent(F)F
    .locals 4

    .line 562
    iget-object v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->currTouchSB:Lcom/jaygoo/widget/SeekBar;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 563
    :cond_0
    invoke-virtual {p0}, Lcom/jaygoo/widget/RangeSeekBar;->getProgressLeft()I

    move-result v0

    int-to-float v0, v0

    sub-float v0, p1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v0, v2

    iget v3, p0, Lcom/jaygoo/widget/RangeSeekBar;->progressWidth:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    .line 564
    invoke-virtual {p0}, Lcom/jaygoo/widget/RangeSeekBar;->getProgressLeft()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v3, p1, v3

    if-gez v3, :cond_1

    goto :goto_0

    .line 566
    :cond_1
    invoke-virtual {p0}, Lcom/jaygoo/widget/RangeSeekBar;->getProgressRight()I

    move-result v1

    int-to-float v1, v1

    cmpl-float p1, p1, v1

    if-lez p1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v0

    .line 570
    :goto_0
    iget p1, p0, Lcom/jaygoo/widget/RangeSeekBar;->seekBarMode:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    .line 571
    iget-object p1, p0, Lcom/jaygoo/widget/RangeSeekBar;->currTouchSB:Lcom/jaygoo/widget/SeekBar;

    iget-object v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->leftSB:Lcom/jaygoo/widget/SeekBar;

    if-ne p1, v0, :cond_3

    .line 572
    iget-object p1, p0, Lcom/jaygoo/widget/RangeSeekBar;->rightSB:Lcom/jaygoo/widget/SeekBar;

    iget p1, p1, Lcom/jaygoo/widget/SeekBar;->currPercent:F

    iget v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->reservePercent:F

    sub-float/2addr p1, v0

    cmpl-float p1, v1, p1

    if-lez p1, :cond_4

    .line 573
    iget-object p1, p0, Lcom/jaygoo/widget/RangeSeekBar;->rightSB:Lcom/jaygoo/widget/SeekBar;

    iget p1, p1, Lcom/jaygoo/widget/SeekBar;->currPercent:F

    iget v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->reservePercent:F

    sub-float v1, p1, v0

    goto :goto_1

    .line 575
    :cond_3
    iget-object v2, p0, Lcom/jaygoo/widget/RangeSeekBar;->rightSB:Lcom/jaygoo/widget/SeekBar;

    if-ne p1, v2, :cond_4

    .line 576
    iget p1, v0, Lcom/jaygoo/widget/SeekBar;->currPercent:F

    iget v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->reservePercent:F

    add-float/2addr p1, v0

    cmpg-float p1, v1, p1

    if-gez p1, :cond_4

    .line 577
    iget-object p1, p0, Lcom/jaygoo/widget/RangeSeekBar;->leftSB:Lcom/jaygoo/widget/SeekBar;

    iget p1, p1, Lcom/jaygoo/widget/SeekBar;->currPercent:F

    iget v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->reservePercent:F

    add-float v1, p1, v0

    :cond_4
    :goto_1
    return v1
.end method

.method protected getEventX(Landroid/view/MotionEvent;)F
    .locals 0

    .line 533
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    return p1
.end method

.method protected getEventY(Landroid/view/MotionEvent;)F
    .locals 0

    .line 537
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    return p1
.end method

.method public getGravity()I
    .locals 1

    .line 1173
    iget v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->gravity:I

    return v0
.end method

.method public getLeftSeekBar()Lcom/jaygoo/widget/SeekBar;
    .locals 1

    .line 903
    iget-object v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->leftSB:Lcom/jaygoo/widget/SeekBar;

    return-object v0
.end method

.method public getMaxProgress()F
    .locals 1

    .line 944
    iget v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->maxProgress:F

    return v0
.end method

.method public getMinInterval()F
    .locals 1

    .line 1035
    iget v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->minInterval:F

    return v0
.end method

.method public getMinProgress()F
    .locals 1

    .line 940
    iget v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->minProgress:F

    return v0
.end method

.method public getProgressBottom()I
    .locals 1

    .line 916
    iget v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->progressBottom:I

    return v0
.end method

.method public getProgressColor()I
    .locals 1

    .line 1047
    iget v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->progressColor:I

    return v0
.end method

.method public getProgressDefaultColor()I
    .locals 1

    .line 1055
    iget v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->progressDefaultColor:I

    return v0
.end method

.method public getProgressDefaultDrawableId()I
    .locals 1

    .line 1073
    iget v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->progressDefaultDrawableId:I

    return v0
.end method

.method public getProgressDrawableId()I
    .locals 1

    .line 1063
    iget v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->progressDrawableId:I

    return v0
.end method

.method public getProgressHeight()I
    .locals 1

    .line 932
    iget v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->progressHeight:I

    return v0
.end method

.method public getProgressLeft()I
    .locals 1

    .line 920
    iget v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->progressLeft:I

    return v0
.end method

.method public getProgressPaddingRight()I
    .locals 1

    .line 928
    iget v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->progressPaddingRight:I

    return v0
.end method

.method public getProgressRadius()F
    .locals 1

    .line 1039
    iget v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->progressRadius:F

    return v0
.end method

.method public getProgressRight()I
    .locals 1

    .line 924
    iget v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->progressRight:I

    return v0
.end method

.method public getProgressTop()I
    .locals 1

    .line 912
    iget v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->progressTop:I

    return v0
.end method

.method public getProgressWidth()I
    .locals 1

    .line 1083
    iget v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->progressWidth:I

    return v0
.end method

.method public getRangeSeekBarState()[Lcom/jaygoo/widget/SeekBarState;
    .locals 6

    .line 835
    new-instance v0, Lcom/jaygoo/widget/SeekBarState;

    invoke-direct {v0}, Lcom/jaygoo/widget/SeekBarState;-><init>()V

    .line 836
    iget-object v1, p0, Lcom/jaygoo/widget/RangeSeekBar;->leftSB:Lcom/jaygoo/widget/SeekBar;

    invoke-virtual {v1}, Lcom/jaygoo/widget/SeekBar;->getProgress()F

    move-result v1

    iput v1, v0, Lcom/jaygoo/widget/SeekBarState;->value:F

    .line 838
    iget v1, v0, Lcom/jaygoo/widget/SeekBarState;->value:F

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/jaygoo/widget/SeekBarState;->indicatorText:Ljava/lang/String;

    .line 839
    iget v1, v0, Lcom/jaygoo/widget/SeekBarState;->value:F

    iget v2, p0, Lcom/jaygoo/widget/RangeSeekBar;->minProgress:F

    invoke-static {v1, v2}, Lcom/jaygoo/widget/Utils;->compareFloat(FF)I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 840
    iput-boolean v2, v0, Lcom/jaygoo/widget/SeekBarState;->isMin:Z

    goto :goto_0

    .line 841
    :cond_0
    iget v1, v0, Lcom/jaygoo/widget/SeekBarState;->value:F

    iget v3, p0, Lcom/jaygoo/widget/RangeSeekBar;->maxProgress:F

    invoke-static {v1, v3}, Lcom/jaygoo/widget/Utils;->compareFloat(FF)I

    move-result v1

    if-nez v1, :cond_1

    .line 842
    iput-boolean v2, v0, Lcom/jaygoo/widget/SeekBarState;->isMax:Z

    .line 845
    :cond_1
    :goto_0
    new-instance v1, Lcom/jaygoo/widget/SeekBarState;

    invoke-direct {v1}, Lcom/jaygoo/widget/SeekBarState;-><init>()V

    .line 846
    iget v3, p0, Lcom/jaygoo/widget/RangeSeekBar;->seekBarMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 847
    iget-object v3, p0, Lcom/jaygoo/widget/RangeSeekBar;->rightSB:Lcom/jaygoo/widget/SeekBar;

    invoke-virtual {v3}, Lcom/jaygoo/widget/SeekBar;->getProgress()F

    move-result v3

    iput v3, v1, Lcom/jaygoo/widget/SeekBarState;->value:F

    .line 848
    iget v3, v1, Lcom/jaygoo/widget/SeekBarState;->value:F

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/jaygoo/widget/SeekBarState;->indicatorText:Ljava/lang/String;

    .line 849
    iget-object v3, p0, Lcom/jaygoo/widget/RangeSeekBar;->rightSB:Lcom/jaygoo/widget/SeekBar;

    iget v3, v3, Lcom/jaygoo/widget/SeekBar;->currPercent:F

    iget v5, p0, Lcom/jaygoo/widget/RangeSeekBar;->minProgress:F

    invoke-static {v3, v5}, Lcom/jaygoo/widget/Utils;->compareFloat(FF)I

    move-result v3

    if-nez v3, :cond_2

    .line 850
    iput-boolean v2, v1, Lcom/jaygoo/widget/SeekBarState;->isMin:Z

    goto :goto_1

    .line 851
    :cond_2
    iget-object v3, p0, Lcom/jaygoo/widget/RangeSeekBar;->rightSB:Lcom/jaygoo/widget/SeekBar;

    iget v3, v3, Lcom/jaygoo/widget/SeekBar;->currPercent:F

    iget v5, p0, Lcom/jaygoo/widget/RangeSeekBar;->maxProgress:F

    invoke-static {v3, v5}, Lcom/jaygoo/widget/Utils;->compareFloat(FF)I

    move-result v3

    if-nez v3, :cond_3

    .line 852
    iput-boolean v2, v1, Lcom/jaygoo/widget/SeekBarState;->isMax:Z

    :cond_3
    :goto_1
    new-array v3, v4, [Lcom/jaygoo/widget/SeekBarState;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    aput-object v1, v3, v2

    return-object v3
.end method

.method protected getRawHeight()F
    .locals 5

    .line 351
    iget v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->seekBarMode:I

    const/4 v1, 0x1

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    .line 352
    iget-object v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->leftSB:Lcom/jaygoo/widget/SeekBar;

    invoke-virtual {v0}, Lcom/jaygoo/widget/SeekBar;->getRawHeight()F

    move-result v0

    .line 353
    iget v3, p0, Lcom/jaygoo/widget/RangeSeekBar;->tickMarkLayoutGravity:I

    if-ne v3, v1, :cond_1

    iget-object v1, p0, Lcom/jaygoo/widget/RangeSeekBar;->tickMarkTextArray:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 354
    iget-object v1, p0, Lcom/jaygoo/widget/RangeSeekBar;->leftSB:Lcom/jaygoo/widget/SeekBar;

    invoke-virtual {v1}, Lcom/jaygoo/widget/SeekBar;->getThumbScaleHeight()F

    move-result v1

    iget v3, p0, Lcom/jaygoo/widget/RangeSeekBar;->progressHeight:I

    int-to-float v3, v3

    sub-float/2addr v1, v3

    div-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/jaygoo/widget/RangeSeekBar;->getTickMarkRawHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 355
    iget-object v3, p0, Lcom/jaygoo/widget/RangeSeekBar;->leftSB:Lcom/jaygoo/widget/SeekBar;

    invoke-virtual {v3}, Lcom/jaygoo/widget/SeekBar;->getThumbScaleHeight()F

    move-result v3

    div-float/2addr v3, v2

    sub-float/2addr v0, v3

    iget v3, p0, Lcom/jaygoo/widget/RangeSeekBar;->progressHeight:I

    int-to-float v3, v3

    div-float/2addr v3, v2

    add-float/2addr v0, v3

    add-float/2addr v0, v1

    goto :goto_0

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->leftSB:Lcom/jaygoo/widget/SeekBar;

    invoke-virtual {v0}, Lcom/jaygoo/widget/SeekBar;->getRawHeight()F

    move-result v0

    iget-object v3, p0, Lcom/jaygoo/widget/RangeSeekBar;->rightSB:Lcom/jaygoo/widget/SeekBar;

    invoke-virtual {v3}, Lcom/jaygoo/widget/SeekBar;->getRawHeight()F

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 359
    iget v3, p0, Lcom/jaygoo/widget/RangeSeekBar;->tickMarkLayoutGravity:I

    if-ne v3, v1, :cond_1

    iget-object v1, p0, Lcom/jaygoo/widget/RangeSeekBar;->tickMarkTextArray:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 360
    iget-object v1, p0, Lcom/jaygoo/widget/RangeSeekBar;->leftSB:Lcom/jaygoo/widget/SeekBar;

    invoke-virtual {v1}, Lcom/jaygoo/widget/SeekBar;->getThumbScaleHeight()F

    move-result v1

    iget-object v3, p0, Lcom/jaygoo/widget/RangeSeekBar;->rightSB:Lcom/jaygoo/widget/SeekBar;

    invoke-virtual {v3}, Lcom/jaygoo/widget/SeekBar;->getThumbScaleHeight()F

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 361
    iget v3, p0, Lcom/jaygoo/widget/RangeSeekBar;->progressHeight:I

    int-to-float v3, v3

    sub-float v3, v1, v3

    div-float/2addr v3, v2

    invoke-virtual {p0}, Lcom/jaygoo/widget/RangeSeekBar;->getTickMarkRawHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 362
    iget v1, p0, Lcom/jaygoo/widget/RangeSeekBar;->progressHeight:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    add-float/2addr v0, v3

    :cond_1
    :goto_0
    return v0
.end method

.method public getRightSeekBar()Lcom/jaygoo/widget/SeekBar;
    .locals 1

    .line 907
    iget-object v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->rightSB:Lcom/jaygoo/widget/SeekBar;

    return-object v0
.end method

.method public getSeekBarMode()I
    .locals 1

    .line 969
    iget v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->seekBarMode:I

    return v0
.end method

.method public getSteps()I
    .locals 1

    .line 1108
    iget v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->steps:I

    return v0
.end method

.method public getStepsBitmaps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1204
    iget-object v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->stepsBitmaps:Ljava/util/List;

    return-object v0
.end method

.method public getStepsColor()I
    .locals 1

    .line 1112
    iget v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->stepsColor:I

    return v0
.end method

.method public getStepsDrawableId()I
    .locals 1

    .line 1194
    iget v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->stepsDrawableId:I

    return v0
.end method

.method public getStepsHeight()F
    .locals 1

    .line 1128
    iget v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->stepsHeight:F

    return v0
.end method

.method public getStepsRadius()F
    .locals 1

    .line 1136
    iget v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->stepsRadius:F

    return v0
.end method

.method public getStepsWidth()F
    .locals 1

    .line 1120
    iget v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->stepsWidth:F

    return v0
.end method

.method public getTickMarkGravity()I
    .locals 1

    .line 1012
    iget v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->tickMarkGravity:I

    return v0
.end method

.method public getTickMarkInRangeTextColor()I
    .locals 1

    .line 961
    iget v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->tickMarkInRangeTextColor:I

    return v0
.end method

.method public getTickMarkLayoutGravity()I
    .locals 1

    .line 1160
    iget v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->tickMarkLayoutGravity:I

    return v0
.end method

.method public getTickMarkMode()I
    .locals 1

    .line 983
    iget v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->tickMarkMode:I

    return v0
.end method

.method protected getTickMarkRawHeight()I
    .locals 3

    .line 343
    iget-object v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->tickMarkTextArray:[Ljava/lang/CharSequence;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    array-length v2, v0

    if-lez v2, :cond_0

    .line 344
    iget v2, p0, Lcom/jaygoo/widget/RangeSeekBar;->tickMarkTextMargin:I

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/jaygoo/widget/RangeSeekBar;->tickMarkTextSize:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/jaygoo/widget/Utils;->measureText(Ljava/lang/String;F)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x3

    return v2

    :cond_0
    return v1
.end method

.method public getTickMarkTextArray()[Ljava/lang/CharSequence;
    .locals 1

    .line 1027
    iget-object v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->tickMarkTextArray:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTickMarkTextColor()I
    .locals 1

    .line 953
    iget v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->tickMarkTextColor:I

    return v0
.end method

.method public getTickMarkTextMargin()I
    .locals 1

    .line 996
    iget v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->tickMarkTextMargin:I

    return v0
.end method

.method public getTickMarkTextSize()I
    .locals 1

    .line 1004
    iget v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->tickMarkTextSize:I

    return v0
.end method

.method public isEnableThumbOverlap()Z
    .locals 1

    .line 1096
    iget-boolean v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->enableThumbOverlap:Z

    return v0
.end method

.method public isStepsAutoBonding()Z
    .locals 1

    .line 1186
    iget-boolean v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->stepsAutoBonding:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 385
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 386
    iget-object v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v0}, Lcom/jaygoo/widget/RangeSeekBar;->onDrawTickMark(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 387
    iget-object v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v0}, Lcom/jaygoo/widget/RangeSeekBar;->onDrawProgressBar(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 388
    iget-object v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v0}, Lcom/jaygoo/widget/RangeSeekBar;->onDrawSteps(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 389
    invoke-virtual {p0, p1}, Lcom/jaygoo/widget/RangeSeekBar;->onDrawSeekBar(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onDrawProgressBar(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 7

    .line 439
    iget-object v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->progressDefaultBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/jaygoo/widget/Utils;->verifyBitmap(Landroid/graphics/Bitmap;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 440
    iget-object v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->progressDefaultBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/jaygoo/widget/RangeSeekBar;->progressDefaultDstRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 442
    :cond_0
    iget v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->progressDefaultColor:I

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 443
    iget-object v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->progressDefaultDstRect:Landroid/graphics/RectF;

    iget v2, p0, Lcom/jaygoo/widget/RangeSeekBar;->progressRadius:F

    invoke-virtual {p1, v0, v2, v2, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 447
    :goto_0
    iget v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->seekBarMode:I

    const/4 v2, 0x2

    const/high16 v3, 0x40000000    # 2.0f

    if-ne v0, v2, :cond_1

    .line 448
    iget-object v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->progressDstRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/jaygoo/widget/RangeSeekBar;->getProgressTop()I

    move-result v4

    int-to-float v4, v4

    iput v4, v0, Landroid/graphics/RectF;->top:F

    .line 449
    iget-object v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->progressDstRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/jaygoo/widget/RangeSeekBar;->leftSB:Lcom/jaygoo/widget/SeekBar;

    iget v4, v4, Lcom/jaygoo/widget/SeekBar;->left:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/jaygoo/widget/RangeSeekBar;->leftSB:Lcom/jaygoo/widget/SeekBar;

    invoke-virtual {v5}, Lcom/jaygoo/widget/SeekBar;->getThumbScaleWidth()F

    move-result v5

    div-float/2addr v5, v3

    add-float/2addr v4, v5

    iget v5, p0, Lcom/jaygoo/widget/RangeSeekBar;->progressWidth:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/jaygoo/widget/RangeSeekBar;->leftSB:Lcom/jaygoo/widget/SeekBar;

    iget v6, v6, Lcom/jaygoo/widget/SeekBar;->currPercent:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iput v4, v0, Landroid/graphics/RectF;->left:F

    .line 450
    iget-object v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->progressDstRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/jaygoo/widget/RangeSeekBar;->rightSB:Lcom/jaygoo/widget/SeekBar;

    iget v4, v4, Lcom/jaygoo/widget/SeekBar;->left:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/jaygoo/widget/RangeSeekBar;->rightSB:Lcom/jaygoo/widget/SeekBar;

    invoke-virtual {v5}, Lcom/jaygoo/widget/SeekBar;->getThumbScaleWidth()F

    move-result v5

    div-float/2addr v5, v3

    add-float/2addr v4, v5

    iget v3, p0, Lcom/jaygoo/widget/RangeSeekBar;->progressWidth:I

    int-to-float v3, v3

    iget-object v5, p0, Lcom/jaygoo/widget/RangeSeekBar;->rightSB:Lcom/jaygoo/widget/SeekBar;

    iget v5, v5, Lcom/jaygoo/widget/SeekBar;->currPercent:F

    mul-float/2addr v3, v5

    add-float/2addr v4, v3

    iput v4, v0, Landroid/graphics/RectF;->right:F

    .line 451
    iget-object v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->progressDstRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/jaygoo/widget/RangeSeekBar;->getProgressBottom()I

    move-result v3

    int-to-float v3, v3

    iput v3, v0, Landroid/graphics/RectF;->bottom:F

    goto :goto_1

    .line 453
    :cond_1
    iget-object v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->progressDstRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/jaygoo/widget/RangeSeekBar;->getProgressTop()I

    move-result v4

    int-to-float v4, v4

    iput v4, v0, Landroid/graphics/RectF;->top:F

    .line 454
    iget-object v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->progressDstRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/jaygoo/widget/RangeSeekBar;->leftSB:Lcom/jaygoo/widget/SeekBar;

    iget v4, v4, Lcom/jaygoo/widget/SeekBar;->left:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/jaygoo/widget/RangeSeekBar;->leftSB:Lcom/jaygoo/widget/SeekBar;

    invoke-virtual {v5}, Lcom/jaygoo/widget/SeekBar;->getThumbScaleWidth()F

    move-result v5

    div-float/2addr v5, v3

    add-float/2addr v4, v5

    iput v4, v0, Landroid/graphics/RectF;->left:F

    .line 455
    iget-object v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->progressDstRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/jaygoo/widget/RangeSeekBar;->leftSB:Lcom/jaygoo/widget/SeekBar;

    iget v4, v4, Lcom/jaygoo/widget/SeekBar;->left:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/jaygoo/widget/RangeSeekBar;->leftSB:Lcom/jaygoo/widget/SeekBar;

    invoke-virtual {v5}, Lcom/jaygoo/widget/SeekBar;->getThumbScaleWidth()F

    move-result v5

    div-float/2addr v5, v3

    add-float/2addr v4, v5

    iget v3, p0, Lcom/jaygoo/widget/RangeSeekBar;->progressWidth:I

    int-to-float v3, v3

    iget-object v5, p0, Lcom/jaygoo/widget/RangeSeekBar;->leftSB:Lcom/jaygoo/widget/SeekBar;

    iget v5, v5, Lcom/jaygoo/widget/SeekBar;->currPercent:F

    mul-float/2addr v3, v5

    add-float/2addr v4, v3

    iput v4, v0, Landroid/graphics/RectF;->right:F

    .line 456
    iget-object v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->progressDstRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/jaygoo/widget/RangeSeekBar;->getProgressBottom()I

    move-result v3

    int-to-float v3, v3

    iput v3, v0, Landroid/graphics/RectF;->bottom:F

    .line 459
    :goto_1
    iget-object v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->progressBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/jaygoo/widget/Utils;->verifyBitmap(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 460
    iget-object p2, p0, Lcom/jaygoo/widget/RangeSeekBar;->progressSrcRect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput v0, p2, Landroid/graphics/Rect;->top:I

    .line 461
    iget-object p2, p0, Lcom/jaygoo/widget/RangeSeekBar;->progressSrcRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/jaygoo/widget/RangeSeekBar;->progressBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iput v3, p2, Landroid/graphics/Rect;->bottom:I

    .line 462
    iget-object p2, p0, Lcom/jaygoo/widget/RangeSeekBar;->progressBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    .line 463
    iget v3, p0, Lcom/jaygoo/widget/RangeSeekBar;->seekBarMode:I

    if-ne v3, v2, :cond_2

    .line 464
    iget-object v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->progressSrcRect:Landroid/graphics/Rect;

    int-to-float p2, p2

    iget-object v2, p0, Lcom/jaygoo/widget/RangeSeekBar;->leftSB:Lcom/jaygoo/widget/SeekBar;

    iget v2, v2, Lcom/jaygoo/widget/SeekBar;->currPercent:F

    mul-float/2addr v2, p2

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 465
    iget-object v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->progressSrcRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/jaygoo/widget/RangeSeekBar;->rightSB:Lcom/jaygoo/widget/SeekBar;

    iget v2, v2, Lcom/jaygoo/widget/SeekBar;->currPercent:F

    mul-float/2addr p2, v2

    float-to-int p2, p2

    iput p2, v0, Landroid/graphics/Rect;->right:I

    goto :goto_2

    .line 467
    :cond_2
    iget-object v2, p0, Lcom/jaygoo/widget/RangeSeekBar;->progressSrcRect:Landroid/graphics/Rect;

    iput v0, v2, Landroid/graphics/Rect;->left:I

    .line 468
    iget-object v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->progressSrcRect:Landroid/graphics/Rect;

    int-to-float p2, p2

    iget-object v2, p0, Lcom/jaygoo/widget/RangeSeekBar;->leftSB:Lcom/jaygoo/widget/SeekBar;

    iget v2, v2, Lcom/jaygoo/widget/SeekBar;->currPercent:F

    mul-float/2addr p2, v2

    float-to-int p2, p2

    iput p2, v0, Landroid/graphics/Rect;->right:I

    .line 470
    :goto_2
    iget-object p2, p0, Lcom/jaygoo/widget/RangeSeekBar;->progressBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->progressSrcRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/jaygoo/widget/RangeSeekBar;->progressDstRect:Landroid/graphics/RectF;

    invoke-virtual {p1, p2, v0, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_3

    .line 472
    :cond_3
    iget v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->progressColor:I

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 473
    iget-object v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->progressDstRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/jaygoo/widget/RangeSeekBar;->progressRadius:F

    invoke-virtual {p1, v0, v1, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :goto_3
    return-void
.end method

.method protected onDrawSeekBar(Landroid/graphics/Canvas;)V
    .locals 4

    .line 498
    iget-object v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->leftSB:Lcom/jaygoo/widget/SeekBar;

    invoke-virtual {v0}, Lcom/jaygoo/widget/SeekBar;->getIndicatorShowMode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 499
    iget-object v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->leftSB:Lcom/jaygoo/widget/SeekBar;

    invoke-virtual {v0, v1}, Lcom/jaygoo/widget/SeekBar;->setShowIndicatorEnable(Z)V

    .line 501
    :cond_0
    iget-object v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->leftSB:Lcom/jaygoo/widget/SeekBar;

    invoke-virtual {v0, p1}, Lcom/jaygoo/widget/SeekBar;->draw(Landroid/graphics/Canvas;)V

    .line 503
    iget v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->seekBarMode:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    .line 504
    iget-object v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->rightSB:Lcom/jaygoo/widget/SeekBar;

    invoke-virtual {v0}, Lcom/jaygoo/widget/SeekBar;->getIndicatorShowMode()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 505
    iget-object v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->rightSB:Lcom/jaygoo/widget/SeekBar;

    invoke-virtual {v0, v1}, Lcom/jaygoo/widget/SeekBar;->setShowIndicatorEnable(Z)V

    .line 507
    :cond_1
    iget-object v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->rightSB:Lcom/jaygoo/widget/SeekBar;

    invoke-virtual {v0, p1}, Lcom/jaygoo/widget/SeekBar;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    return-void
.end method

.method protected onDrawSteps(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 9

    .line 480
    invoke-direct {p0}, Lcom/jaygoo/widget/RangeSeekBar;->verifyStepsMode()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 481
    :cond_0
    invoke-virtual {p0}, Lcom/jaygoo/widget/RangeSeekBar;->getProgressWidth()I

    move-result v0

    iget v1, p0, Lcom/jaygoo/widget/RangeSeekBar;->steps:I

    div-int/2addr v0, v1

    .line 482
    iget v1, p0, Lcom/jaygoo/widget/RangeSeekBar;->stepsHeight:F

    invoke-virtual {p0}, Lcom/jaygoo/widget/RangeSeekBar;->getProgressHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    const/4 v3, 0x0

    .line 483
    :goto_0
    iget v4, p0, Lcom/jaygoo/widget/RangeSeekBar;->steps:I

    if-gt v3, v4, :cond_3

    .line 484
    invoke-virtual {p0}, Lcom/jaygoo/widget/RangeSeekBar;->getProgressLeft()I

    move-result v4

    mul-int v5, v3, v0

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lcom/jaygoo/widget/RangeSeekBar;->stepsWidth:F

    div-float/2addr v5, v2

    sub-float/2addr v4, v5

    .line 485
    iget-object v5, p0, Lcom/jaygoo/widget/RangeSeekBar;->stepDivRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/jaygoo/widget/RangeSeekBar;->getProgressTop()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v6, v1

    iget v7, p0, Lcom/jaygoo/widget/RangeSeekBar;->stepsWidth:F

    add-float/2addr v7, v4

    invoke-virtual {p0}, Lcom/jaygoo/widget/RangeSeekBar;->getProgressBottom()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v8, v1

    invoke-virtual {v5, v4, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 486
    iget-object v4, p0, Lcom/jaygoo/widget/RangeSeekBar;->stepsBitmaps:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/jaygoo/widget/RangeSeekBar;->stepsBitmaps:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-gt v4, v3, :cond_1

    goto :goto_1

    .line 490
    :cond_1
    iget-object v4, p0, Lcom/jaygoo/widget/RangeSeekBar;->stepsBitmaps:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/jaygoo/widget/RangeSeekBar;->stepDivRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v4, v5, v6, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_2

    .line 487
    :cond_2
    :goto_1
    iget v4, p0, Lcom/jaygoo/widget/RangeSeekBar;->stepsColor:I

    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 488
    iget-object v4, p0, Lcom/jaygoo/widget/RangeSeekBar;->stepDivRect:Landroid/graphics/RectF;

    iget v5, p0, Lcom/jaygoo/widget/RangeSeekBar;->stepsRadius:F

    invoke-virtual {p1, v4, v5, v5, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method protected onDrawTickMark(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 11

    .line 396
    iget-object v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->tickMarkTextArray:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_6

    .line 397
    iget v1, p0, Lcom/jaygoo/widget/RangeSeekBar;->progressWidth:I

    array-length v0, v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    div-int/2addr v1, v0

    const/4 v0, 0x0

    move v3, v0

    .line 398
    :goto_0
    iget-object v4, p0, Lcom/jaygoo/widget/RangeSeekBar;->tickMarkTextArray:[Ljava/lang/CharSequence;

    array-length v5, v4

    if-ge v3, v5, :cond_6

    .line 399
    aget-object v4, v4, v3

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 400
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_4

    .line 401
    :cond_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    iget-object v6, p0, Lcom/jaygoo/widget/RangeSeekBar;->tickMarkTextRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v4, v0, v5, v6}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 402
    iget v5, p0, Lcom/jaygoo/widget/RangeSeekBar;->tickMarkTextColor:I

    invoke-virtual {p2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 405
    iget v5, p0, Lcom/jaygoo/widget/RangeSeekBar;->tickMarkMode:I

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v7, 0x2

    if-ne v5, v2, :cond_3

    .line 406
    iget v5, p0, Lcom/jaygoo/widget/RangeSeekBar;->tickMarkGravity:I

    if-ne v5, v7, :cond_1

    .line 407
    invoke-virtual {p0}, Lcom/jaygoo/widget/RangeSeekBar;->getProgressLeft()I

    move-result v5

    mul-int v6, v3, v1

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/jaygoo/widget/RangeSeekBar;->tickMarkTextRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    sub-int/2addr v5, v6

    :goto_1
    int-to-float v5, v5

    goto :goto_2

    :cond_1
    if-ne v5, v2, :cond_2

    .line 409
    invoke-virtual {p0}, Lcom/jaygoo/widget/RangeSeekBar;->getProgressLeft()I

    move-result v5

    mul-int v7, v3, v1

    add-int/2addr v5, v7

    int-to-float v5, v5

    iget-object v7, p0, Lcom/jaygoo/widget/RangeSeekBar;->tickMarkTextRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v6

    sub-float/2addr v5, v7

    goto :goto_2

    .line 411
    :cond_2
    invoke-virtual {p0}, Lcom/jaygoo/widget/RangeSeekBar;->getProgressLeft()I

    move-result v5

    mul-int v6, v3, v1

    add-int/2addr v5, v6

    goto :goto_1

    .line 414
    :cond_3
    invoke-static {v4}, Lcom/jaygoo/widget/Utils;->parseFloat(Ljava/lang/String;)F

    move-result v5

    .line 415
    invoke-virtual {p0}, Lcom/jaygoo/widget/RangeSeekBar;->getRangeSeekBarState()[Lcom/jaygoo/widget/SeekBarState;

    move-result-object v8

    .line 416
    aget-object v9, v8, v0

    iget v9, v9, Lcom/jaygoo/widget/SeekBarState;->value:F

    invoke-static {v5, v9}, Lcom/jaygoo/widget/Utils;->compareFloat(FF)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_4

    aget-object v8, v8, v2

    iget v8, v8, Lcom/jaygoo/widget/SeekBarState;->value:F

    invoke-static {v5, v8}, Lcom/jaygoo/widget/Utils;->compareFloat(FF)I

    move-result v8

    if-eq v8, v2, :cond_4

    iget v8, p0, Lcom/jaygoo/widget/RangeSeekBar;->seekBarMode:I

    if-ne v8, v7, :cond_4

    .line 417
    iget v7, p0, Lcom/jaygoo/widget/RangeSeekBar;->tickMarkInRangeTextColor:I

    invoke-virtual {p2, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 420
    :cond_4
    invoke-virtual {p0}, Lcom/jaygoo/widget/RangeSeekBar;->getProgressLeft()I

    move-result v7

    int-to-float v7, v7

    iget v8, p0, Lcom/jaygoo/widget/RangeSeekBar;->progressWidth:I

    int-to-float v8, v8

    iget v9, p0, Lcom/jaygoo/widget/RangeSeekBar;->minProgress:F

    sub-float/2addr v5, v9

    mul-float/2addr v8, v5

    iget v5, p0, Lcom/jaygoo/widget/RangeSeekBar;->maxProgress:F

    sub-float/2addr v5, v9

    div-float/2addr v8, v5

    add-float/2addr v7, v8

    iget-object v5, p0, Lcom/jaygoo/widget/RangeSeekBar;->tickMarkTextRect:Landroid/graphics/Rect;

    .line 421
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    sub-float v5, v7, v5

    .line 424
    :goto_2
    iget v6, p0, Lcom/jaygoo/widget/RangeSeekBar;->tickMarkLayoutGravity:I

    if-nez v6, :cond_5

    .line 425
    invoke-virtual {p0}, Lcom/jaygoo/widget/RangeSeekBar;->getProgressTop()I

    move-result v6

    iget v7, p0, Lcom/jaygoo/widget/RangeSeekBar;->tickMarkTextMargin:I

    sub-int/2addr v6, v7

    goto :goto_3

    .line 427
    :cond_5
    invoke-virtual {p0}, Lcom/jaygoo/widget/RangeSeekBar;->getProgressBottom()I

    move-result v6

    iget v7, p0, Lcom/jaygoo/widget/RangeSeekBar;->tickMarkTextMargin:I

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/jaygoo/widget/RangeSeekBar;->tickMarkTextRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    add-int/2addr v6, v7

    :goto_3
    int-to-float v6, v6

    .line 429
    invoke-virtual {p1, v4, v5, v6, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 312
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 313
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    const/high16 v1, 0x40000000    # 2.0f

    if-ne p2, v1, :cond_0

    .line 322
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_2

    :cond_0
    const/high16 v2, -0x80000000

    if-ne p2, v2, :cond_1

    .line 323
    invoke-virtual {p0}, Lcom/jaygoo/widget/RangeSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    instance-of p2, p2, Landroid/view/ViewGroup;

    if-eqz p2, :cond_1

    const/4 p2, -0x1

    if-ne v0, p2, :cond_1

    .line 325
    invoke-virtual {p0}, Lcom/jaygoo/widget/RangeSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p2

    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_2

    .line 328
    :cond_1
    iget p2, p0, Lcom/jaygoo/widget/RangeSeekBar;->gravity:I

    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    .line 329
    iget-object p2, p0, Lcom/jaygoo/widget/RangeSeekBar;->tickMarkTextArray:[Ljava/lang/CharSequence;

    const/high16 v0, 0x40000000    # 2.0f

    if-eqz p2, :cond_2

    iget p2, p0, Lcom/jaygoo/widget/RangeSeekBar;->tickMarkLayoutGravity:I

    const/4 v2, 0x1

    if-ne p2, v2, :cond_2

    .line 330
    invoke-virtual {p0}, Lcom/jaygoo/widget/RangeSeekBar;->getRawHeight()F

    move-result p2

    invoke-virtual {p0}, Lcom/jaygoo/widget/RangeSeekBar;->getTickMarkRawHeight()I

    move-result v2

    int-to-float v2, v2

    goto :goto_0

    .line 332
    :cond_2
    invoke-virtual {p0}, Lcom/jaygoo/widget/RangeSeekBar;->getRawHeight()F

    move-result p2

    iget-object v2, p0, Lcom/jaygoo/widget/RangeSeekBar;->leftSB:Lcom/jaygoo/widget/SeekBar;

    invoke-virtual {v2}, Lcom/jaygoo/widget/SeekBar;->getThumbScaleHeight()F

    move-result v2

    iget-object v3, p0, Lcom/jaygoo/widget/RangeSeekBar;->rightSB:Lcom/jaygoo/widget/SeekBar;

    invoke-virtual {v3}, Lcom/jaygoo/widget/SeekBar;->getThumbScaleHeight()F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    div-float/2addr v2, v0

    :goto_0
    sub-float/2addr p2, v2

    mul-float/2addr p2, v0

    goto :goto_1

    .line 335
    :cond_3
    invoke-virtual {p0}, Lcom/jaygoo/widget/RangeSeekBar;->getRawHeight()F

    move-result p2

    :goto_1
    float-to-int p2, p2

    .line 337
    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 339
    :goto_2
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method protected onMeasureProgress(II)V
    .locals 5

    .line 261
    invoke-virtual {p0}, Lcom/jaygoo/widget/RangeSeekBar;->getPaddingBottom()I

    move-result v0

    sub-int v0, p2, v0

    invoke-virtual {p0}, Lcom/jaygoo/widget/RangeSeekBar;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    if-gtz p2, :cond_0

    return-void

    .line 264
    :cond_0
    iget p2, p0, Lcom/jaygoo/widget/RangeSeekBar;->gravity:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/high16 v3, 0x40000000    # 2.0f

    if-nez p2, :cond_4

    .line 267
    iget-object p2, p0, Lcom/jaygoo/widget/RangeSeekBar;->leftSB:Lcom/jaygoo/widget/SeekBar;

    invoke-virtual {p2}, Lcom/jaygoo/widget/SeekBar;->getIndicatorShowMode()I

    move-result p2

    if-ne p2, v2, :cond_2

    iget-object p2, p0, Lcom/jaygoo/widget/RangeSeekBar;->rightSB:Lcom/jaygoo/widget/SeekBar;

    .line 268
    invoke-virtual {p2}, Lcom/jaygoo/widget/SeekBar;->getIndicatorShowMode()I

    move-result p2

    if-eq p2, v2, :cond_1

    goto :goto_0

    :cond_1
    move p2, v1

    goto :goto_1

    .line 269
    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/jaygoo/widget/RangeSeekBar;->leftSB:Lcom/jaygoo/widget/SeekBar;

    invoke-virtual {p2}, Lcom/jaygoo/widget/SeekBar;->getIndicatorRawHeight()I

    move-result p2

    iget-object v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->rightSB:Lcom/jaygoo/widget/SeekBar;

    invoke-virtual {v0}, Lcom/jaygoo/widget/SeekBar;->getIndicatorRawHeight()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    int-to-float p2, p2

    .line 271
    :goto_1
    iget-object v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->leftSB:Lcom/jaygoo/widget/SeekBar;

    invoke-virtual {v0}, Lcom/jaygoo/widget/SeekBar;->getThumbScaleHeight()F

    move-result v0

    iget-object v2, p0, Lcom/jaygoo/widget/RangeSeekBar;->rightSB:Lcom/jaygoo/widget/SeekBar;

    invoke-virtual {v2}, Lcom/jaygoo/widget/SeekBar;->getThumbScaleHeight()F

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 272
    iget v2, p0, Lcom/jaygoo/widget/RangeSeekBar;->progressHeight:I

    int-to-float v4, v2

    div-float/2addr v4, v3

    sub-float/2addr v0, v4

    int-to-float v2, v2

    sub-float v2, v0, v2

    div-float/2addr v2, v3

    add-float/2addr v2, p2

    float-to-int v2, v2

    .line 276
    iput v2, p0, Lcom/jaygoo/widget/RangeSeekBar;->progressTop:I

    .line 277
    iget-object v2, p0, Lcom/jaygoo/widget/RangeSeekBar;->tickMarkTextArray:[Ljava/lang/CharSequence;

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/jaygoo/widget/RangeSeekBar;->tickMarkLayoutGravity:I

    if-nez v2, :cond_3

    .line 278
    invoke-virtual {p0}, Lcom/jaygoo/widget/RangeSeekBar;->getTickMarkRawHeight()I

    move-result v2

    int-to-float v2, v2

    iget v4, p0, Lcom/jaygoo/widget/RangeSeekBar;->progressHeight:I

    int-to-float v4, v4

    sub-float/2addr v0, v4

    div-float/2addr v0, v3

    add-float/2addr p2, v0

    invoke-static {v2, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/jaygoo/widget/RangeSeekBar;->progressTop:I

    .line 280
    :cond_3
    iget p2, p0, Lcom/jaygoo/widget/RangeSeekBar;->progressTop:I

    iget v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->progressHeight:I

    add-int/2addr p2, v0

    iput p2, p0, Lcom/jaygoo/widget/RangeSeekBar;->progressBottom:I

    goto :goto_3

    :cond_4
    if-ne p2, v2, :cond_6

    .line 282
    iget-object p2, p0, Lcom/jaygoo/widget/RangeSeekBar;->tickMarkTextArray:[Ljava/lang/CharSequence;

    if-eqz p2, :cond_5

    iget p2, p0, Lcom/jaygoo/widget/RangeSeekBar;->tickMarkLayoutGravity:I

    if-ne p2, v2, :cond_5

    .line 283
    invoke-virtual {p0}, Lcom/jaygoo/widget/RangeSeekBar;->getTickMarkRawHeight()I

    move-result p2

    sub-int/2addr v0, p2

    iput v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->progressBottom:I

    goto :goto_2

    :cond_5
    int-to-float p2, v0

    .line 285
    iget-object v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->leftSB:Lcom/jaygoo/widget/SeekBar;

    invoke-virtual {v0}, Lcom/jaygoo/widget/SeekBar;->getThumbScaleHeight()F

    move-result v0

    iget-object v2, p0, Lcom/jaygoo/widget/RangeSeekBar;->rightSB:Lcom/jaygoo/widget/SeekBar;

    invoke-virtual {v2}, Lcom/jaygoo/widget/SeekBar;->getThumbScaleHeight()F

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    div-float/2addr v0, v3

    sub-float/2addr p2, v0

    iget v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->progressHeight:I

    int-to-float v0, v0

    div-float/2addr v0, v3

    add-float/2addr p2, v0

    float-to-int p2, p2

    iput p2, p0, Lcom/jaygoo/widget/RangeSeekBar;->progressBottom:I

    .line 288
    :goto_2
    iget p2, p0, Lcom/jaygoo/widget/RangeSeekBar;->progressBottom:I

    iget v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->progressHeight:I

    sub-int/2addr p2, v0

    iput p2, p0, Lcom/jaygoo/widget/RangeSeekBar;->progressTop:I

    goto :goto_3

    .line 290
    :cond_6
    iget p2, p0, Lcom/jaygoo/widget/RangeSeekBar;->progressHeight:I

    sub-int/2addr v0, p2

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->progressTop:I

    add-int/2addr v0, p2

    .line 291
    iput v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->progressBottom:I

    .line 294
    :goto_3
    iget-object p2, p0, Lcom/jaygoo/widget/RangeSeekBar;->leftSB:Lcom/jaygoo/widget/SeekBar;

    invoke-virtual {p2}, Lcom/jaygoo/widget/SeekBar;->getThumbScaleWidth()F

    move-result p2

    iget-object v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->rightSB:Lcom/jaygoo/widget/SeekBar;

    invoke-virtual {v0}, Lcom/jaygoo/widget/SeekBar;->getThumbScaleWidth()F

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->max(FF)F

    move-result p2

    float-to-int p2, p2

    .line 295
    div-int/lit8 p2, p2, 0x2

    invoke-virtual {p0}, Lcom/jaygoo/widget/RangeSeekBar;->getPaddingLeft()I

    move-result v0

    add-int/2addr v0, p2

    iput v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->progressLeft:I

    sub-int p2, p1, p2

    .line 296
    invoke-virtual {p0}, Lcom/jaygoo/widget/RangeSeekBar;->getPaddingRight()I

    move-result v0

    sub-int/2addr p2, v0

    iput p2, p0, Lcom/jaygoo/widget/RangeSeekBar;->progressRight:I

    .line 297
    iget v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->progressLeft:I

    sub-int/2addr p2, v0

    iput p2, p0, Lcom/jaygoo/widget/RangeSeekBar;->progressWidth:I

    .line 298
    iget-object p2, p0, Lcom/jaygoo/widget/RangeSeekBar;->progressDefaultDstRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/jaygoo/widget/RangeSeekBar;->getProgressLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/jaygoo/widget/RangeSeekBar;->getProgressTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/jaygoo/widget/RangeSeekBar;->getProgressRight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/jaygoo/widget/RangeSeekBar;->getProgressBottom()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p2, v0, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 299
    iget p2, p0, Lcom/jaygoo/widget/RangeSeekBar;->progressRight:I

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/jaygoo/widget/RangeSeekBar;->progressPaddingRight:I

    .line 301
    iget p1, p0, Lcom/jaygoo/widget/RangeSeekBar;->progressRadius:F

    cmpg-float p1, p1, v1

    if-gtz p1, :cond_7

    .line 302
    invoke-virtual {p0}, Lcom/jaygoo/widget/RangeSeekBar;->getProgressBottom()I

    move-result p1

    invoke-virtual {p0}, Lcom/jaygoo/widget/RangeSeekBar;->getProgressTop()I

    move-result p2

    sub-int/2addr p1, p2

    int-to-float p1, p1

    const p2, 0x3ee66666    # 0.45f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Lcom/jaygoo/widget/RangeSeekBar;->progressRadius:F

    .line 304
    :cond_7
    invoke-direct {p0}, Lcom/jaygoo/widget/RangeSeekBar;->initProgressBitmap()V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    .line 735
    :try_start_0
    check-cast p1, Lcom/jaygoo/widget/SavedState;

    .line 736
    invoke-virtual {p1}, Lcom/jaygoo/widget/SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 737
    iget v0, p1, Lcom/jaygoo/widget/SavedState;->minValue:F

    .line 738
    iget v1, p1, Lcom/jaygoo/widget/SavedState;->maxValue:F

    .line 739
    iget v2, p1, Lcom/jaygoo/widget/SavedState;->rangeInterval:F

    .line 740
    invoke-virtual {p0, v0, v1, v2}, Lcom/jaygoo/widget/RangeSeekBar;->setRange(FFF)V

    .line 741
    iget v0, p1, Lcom/jaygoo/widget/SavedState;->currSelectedMin:F

    .line 742
    iget p1, p1, Lcom/jaygoo/widget/SavedState;->currSelectedMax:F

    .line 743
    invoke-virtual {p0, v0, p1}, Lcom/jaygoo/widget/RangeSeekBar;->setProgress(FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 745
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 721
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 722
    new-instance v1, Lcom/jaygoo/widget/SavedState;

    invoke-direct {v1, v0}, Lcom/jaygoo/widget/SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 723
    iget v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->minProgress:F

    iput v0, v1, Lcom/jaygoo/widget/SavedState;->minValue:F

    .line 724
    iget v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->maxProgress:F

    iput v0, v1, Lcom/jaygoo/widget/SavedState;->maxValue:F

    .line 725
    iget v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->minInterval:F

    iput v0, v1, Lcom/jaygoo/widget/SavedState;->rangeInterval:F

    .line 726
    invoke-virtual {p0}, Lcom/jaygoo/widget/RangeSeekBar;->getRangeSeekBarState()[Lcom/jaygoo/widget/SeekBarState;

    move-result-object v0

    const/4 v2, 0x0

    .line 727
    aget-object v2, v0, v2

    iget v2, v2, Lcom/jaygoo/widget/SeekBarState;->value:F

    iput v2, v1, Lcom/jaygoo/widget/SavedState;->currSelectedMin:F

    const/4 v2, 0x1

    .line 728
    aget-object v0, v0, v2

    iget v0, v0, Lcom/jaygoo/widget/SeekBarState;->value:F

    iput v0, v1, Lcom/jaygoo/widget/SavedState;->currSelectedMax:F

    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 370
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 371
    invoke-virtual {p0, p1, p2}, Lcom/jaygoo/widget/RangeSeekBar;->onMeasureProgress(II)V

    .line 373
    iget p1, p0, Lcom/jaygoo/widget/RangeSeekBar;->minProgress:F

    iget p2, p0, Lcom/jaygoo/widget/RangeSeekBar;->maxProgress:F

    iget p3, p0, Lcom/jaygoo/widget/RangeSeekBar;->minInterval:F

    invoke-virtual {p0, p1, p2, p3}, Lcom/jaygoo/widget/RangeSeekBar;->setRange(FFF)V

    .line 375
    invoke-virtual {p0}, Lcom/jaygoo/widget/RangeSeekBar;->getProgressBottom()I

    move-result p1

    invoke-virtual {p0}, Lcom/jaygoo/widget/RangeSeekBar;->getProgressTop()I

    move-result p2

    add-int/2addr p1, p2

    const/4 p2, 0x2

    div-int/2addr p1, p2

    .line 376
    iget-object p3, p0, Lcom/jaygoo/widget/RangeSeekBar;->leftSB:Lcom/jaygoo/widget/SeekBar;

    invoke-virtual {p0}, Lcom/jaygoo/widget/RangeSeekBar;->getProgressLeft()I

    move-result p4

    invoke-virtual {p3, p4, p1}, Lcom/jaygoo/widget/SeekBar;->onSizeChanged(II)V

    .line 377
    iget p3, p0, Lcom/jaygoo/widget/RangeSeekBar;->seekBarMode:I

    if-ne p3, p2, :cond_0

    .line 378
    iget-object p2, p0, Lcom/jaygoo/widget/RangeSeekBar;->rightSB:Lcom/jaygoo/widget/SeekBar;

    invoke-virtual {p0}, Lcom/jaygoo/widget/RangeSeekBar;->getProgressLeft()I

    move-result p3

    invoke-virtual {p2, p3, p1}, Lcom/jaygoo/widget/SeekBar;->onSizeChanged(II)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 586
    iget-boolean v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->isEnable:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 588
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v0, :cond_18

    if-eq v0, v1, :cond_11

    if-eq v0, v3, :cond_7

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    goto/16 :goto_6

    .line 669
    :cond_1
    iget v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->seekBarMode:I

    if-ne v0, v3, :cond_2

    .line 670
    iget-object v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->rightSB:Lcom/jaygoo/widget/SeekBar;

    invoke-virtual {v0, v4}, Lcom/jaygoo/widget/SeekBar;->setShowIndicatorEnable(Z)V

    .line 672
    :cond_2
    iget-object v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->currTouchSB:Lcom/jaygoo/widget/SeekBar;

    iget-object v2, p0, Lcom/jaygoo/widget/RangeSeekBar;->leftSB:Lcom/jaygoo/widget/SeekBar;

    if-ne v0, v2, :cond_3

    .line 673
    invoke-direct {p0}, Lcom/jaygoo/widget/RangeSeekBar;->resetCurrentSeekBarThumb()V

    goto :goto_0

    .line 674
    :cond_3
    iget-object v2, p0, Lcom/jaygoo/widget/RangeSeekBar;->rightSB:Lcom/jaygoo/widget/SeekBar;

    if-ne v0, v2, :cond_4

    .line 675
    invoke-direct {p0}, Lcom/jaygoo/widget/RangeSeekBar;->resetCurrentSeekBarThumb()V

    .line 677
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->leftSB:Lcom/jaygoo/widget/SeekBar;

    invoke-virtual {v0, v4}, Lcom/jaygoo/widget/SeekBar;->setShowIndicatorEnable(Z)V

    .line 678
    iget-object v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->callback:Lcom/jaygoo/widget/OnRangeChangedListener;

    if-eqz v0, :cond_5

    .line 679
    invoke-virtual {p0}, Lcom/jaygoo/widget/RangeSeekBar;->getRangeSeekBarState()[Lcom/jaygoo/widget/SeekBarState;

    move-result-object v0

    .line 680
    iget-object v2, p0, Lcom/jaygoo/widget/RangeSeekBar;->callback:Lcom/jaygoo/widget/OnRangeChangedListener;

    aget-object v3, v0, v4

    iget v3, v3, Lcom/jaygoo/widget/SeekBarState;->value:F

    aget-object v0, v0, v1

    iget v0, v0, Lcom/jaygoo/widget/SeekBarState;->value:F

    invoke-interface {v2, p0, v3, v0, v4}, Lcom/jaygoo/widget/OnRangeChangedListener;->onRangeChanged(Lcom/jaygoo/widget/RangeSeekBar;FFZ)V

    .line 683
    :cond_5
    invoke-virtual {p0}, Lcom/jaygoo/widget/RangeSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 684
    invoke-virtual {p0}, Lcom/jaygoo/widget/RangeSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 686
    :cond_6
    invoke-direct {p0, v4}, Lcom/jaygoo/widget/RangeSeekBar;->changeThumbActivateState(Z)V

    goto/16 :goto_6

    .line 626
    :cond_7
    invoke-virtual {p0, p1}, Lcom/jaygoo/widget/RangeSeekBar;->getEventX(Landroid/view/MotionEvent;)F

    move-result v0

    .line 627
    iget v5, p0, Lcom/jaygoo/widget/RangeSeekBar;->seekBarMode:I

    if-ne v5, v3, :cond_d

    iget-object v3, p0, Lcom/jaygoo/widget/RangeSeekBar;->leftSB:Lcom/jaygoo/widget/SeekBar;

    iget v3, v3, Lcom/jaygoo/widget/SeekBar;->currPercent:F

    iget-object v5, p0, Lcom/jaygoo/widget/RangeSeekBar;->rightSB:Lcom/jaygoo/widget/SeekBar;

    iget v5, v5, Lcom/jaygoo/widget/SeekBar;->currPercent:F

    cmpl-float v3, v3, v5

    if-nez v3, :cond_d

    .line 628
    iget-object v3, p0, Lcom/jaygoo/widget/RangeSeekBar;->currTouchSB:Lcom/jaygoo/widget/SeekBar;

    invoke-virtual {v3}, Lcom/jaygoo/widget/SeekBar;->materialRestore()V

    .line 629
    iget-object v3, p0, Lcom/jaygoo/widget/RangeSeekBar;->callback:Lcom/jaygoo/widget/OnRangeChangedListener;

    if-eqz v3, :cond_9

    .line 630
    iget-object v5, p0, Lcom/jaygoo/widget/RangeSeekBar;->currTouchSB:Lcom/jaygoo/widget/SeekBar;

    iget-object v6, p0, Lcom/jaygoo/widget/RangeSeekBar;->leftSB:Lcom/jaygoo/widget/SeekBar;

    if-ne v5, v6, :cond_8

    move v5, v1

    goto :goto_1

    :cond_8
    move v5, v4

    :goto_1
    invoke-interface {v3, p0, v5}, Lcom/jaygoo/widget/OnRangeChangedListener;->onStopTrackingTouch(Lcom/jaygoo/widget/RangeSeekBar;Z)V

    .line 632
    :cond_9
    iget v3, p0, Lcom/jaygoo/widget/RangeSeekBar;->touchDownX:F

    sub-float v3, v0, v3

    const/4 v5, 0x0

    cmpl-float v3, v3, v5

    if-lez v3, :cond_a

    .line 634
    iget-object v3, p0, Lcom/jaygoo/widget/RangeSeekBar;->currTouchSB:Lcom/jaygoo/widget/SeekBar;

    iget-object v5, p0, Lcom/jaygoo/widget/RangeSeekBar;->rightSB:Lcom/jaygoo/widget/SeekBar;

    if-eq v3, v5, :cond_b

    .line 635
    invoke-virtual {v3, v4}, Lcom/jaygoo/widget/SeekBar;->setShowIndicatorEnable(Z)V

    .line 636
    invoke-direct {p0}, Lcom/jaygoo/widget/RangeSeekBar;->resetCurrentSeekBarThumb()V

    .line 637
    iget-object v3, p0, Lcom/jaygoo/widget/RangeSeekBar;->rightSB:Lcom/jaygoo/widget/SeekBar;

    iput-object v3, p0, Lcom/jaygoo/widget/RangeSeekBar;->currTouchSB:Lcom/jaygoo/widget/SeekBar;

    goto :goto_2

    .line 641
    :cond_a
    iget-object v3, p0, Lcom/jaygoo/widget/RangeSeekBar;->currTouchSB:Lcom/jaygoo/widget/SeekBar;

    iget-object v5, p0, Lcom/jaygoo/widget/RangeSeekBar;->leftSB:Lcom/jaygoo/widget/SeekBar;

    if-eq v3, v5, :cond_b

    .line 642
    invoke-virtual {v3, v4}, Lcom/jaygoo/widget/SeekBar;->setShowIndicatorEnable(Z)V

    .line 643
    invoke-direct {p0}, Lcom/jaygoo/widget/RangeSeekBar;->resetCurrentSeekBarThumb()V

    .line 644
    iget-object v3, p0, Lcom/jaygoo/widget/RangeSeekBar;->leftSB:Lcom/jaygoo/widget/SeekBar;

    iput-object v3, p0, Lcom/jaygoo/widget/RangeSeekBar;->currTouchSB:Lcom/jaygoo/widget/SeekBar;

    .line 647
    :cond_b
    :goto_2
    iget-object v3, p0, Lcom/jaygoo/widget/RangeSeekBar;->callback:Lcom/jaygoo/widget/OnRangeChangedListener;

    if-eqz v3, :cond_d

    .line 648
    iget-object v5, p0, Lcom/jaygoo/widget/RangeSeekBar;->currTouchSB:Lcom/jaygoo/widget/SeekBar;

    iget-object v6, p0, Lcom/jaygoo/widget/RangeSeekBar;->leftSB:Lcom/jaygoo/widget/SeekBar;

    if-ne v5, v6, :cond_c

    move v5, v1

    goto :goto_3

    :cond_c
    move v5, v4

    :goto_3
    invoke-interface {v3, p0, v5}, Lcom/jaygoo/widget/OnRangeChangedListener;->onStartTrackingTouch(Lcom/jaygoo/widget/RangeSeekBar;Z)V

    .line 651
    :cond_d
    invoke-direct {p0}, Lcom/jaygoo/widget/RangeSeekBar;->scaleCurrentSeekBarThumb()V

    .line 652
    iget-object v3, p0, Lcom/jaygoo/widget/RangeSeekBar;->currTouchSB:Lcom/jaygoo/widget/SeekBar;

    iget v5, v3, Lcom/jaygoo/widget/SeekBar;->material:F

    cmpl-float v5, v5, v2

    if-ltz v5, :cond_e

    goto :goto_4

    :cond_e
    iget-object v2, p0, Lcom/jaygoo/widget/RangeSeekBar;->currTouchSB:Lcom/jaygoo/widget/SeekBar;

    iget v2, v2, Lcom/jaygoo/widget/SeekBar;->material:F

    const v5, 0x3dcccccd    # 0.1f

    add-float/2addr v2, v5

    :goto_4
    iput v2, v3, Lcom/jaygoo/widget/SeekBar;->material:F

    .line 653
    iput v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->touchDownX:F

    .line 654
    iget-object v2, p0, Lcom/jaygoo/widget/RangeSeekBar;->currTouchSB:Lcom/jaygoo/widget/SeekBar;

    invoke-virtual {p0, v0}, Lcom/jaygoo/widget/RangeSeekBar;->calculateCurrentSeekBarPercent(F)F

    move-result v0

    invoke-virtual {v2, v0}, Lcom/jaygoo/widget/SeekBar;->slide(F)V

    .line 655
    iget-object v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->currTouchSB:Lcom/jaygoo/widget/SeekBar;

    invoke-virtual {v0, v1}, Lcom/jaygoo/widget/SeekBar;->setShowIndicatorEnable(Z)V

    .line 657
    iget-object v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->callback:Lcom/jaygoo/widget/OnRangeChangedListener;

    if-eqz v0, :cond_f

    .line 658
    invoke-virtual {p0}, Lcom/jaygoo/widget/RangeSeekBar;->getRangeSeekBarState()[Lcom/jaygoo/widget/SeekBarState;

    move-result-object v0

    .line 659
    iget-object v2, p0, Lcom/jaygoo/widget/RangeSeekBar;->callback:Lcom/jaygoo/widget/OnRangeChangedListener;

    aget-object v3, v0, v4

    iget v3, v3, Lcom/jaygoo/widget/SeekBarState;->value:F

    aget-object v0, v0, v1

    iget v0, v0, Lcom/jaygoo/widget/SeekBarState;->value:F

    invoke-interface {v2, p0, v3, v0, v1}, Lcom/jaygoo/widget/OnRangeChangedListener;->onRangeChanged(Lcom/jaygoo/widget/RangeSeekBar;FFZ)V

    .line 661
    :cond_f
    invoke-virtual {p0}, Lcom/jaygoo/widget/RangeSeekBar;->invalidate()V

    .line 663
    invoke-virtual {p0}, Lcom/jaygoo/widget/RangeSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 664
    invoke-virtual {p0}, Lcom/jaygoo/widget/RangeSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 666
    :cond_10
    invoke-direct {p0, v1}, Lcom/jaygoo/widget/RangeSeekBar;->changeThumbActivateState(Z)V

    goto/16 :goto_6

    .line 689
    :cond_11
    invoke-direct {p0}, Lcom/jaygoo/widget/RangeSeekBar;->verifyStepsMode()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->stepsAutoBonding:Z

    if-eqz v0, :cond_12

    .line 690
    invoke-virtual {p0, p1}, Lcom/jaygoo/widget/RangeSeekBar;->getEventX(Landroid/view/MotionEvent;)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jaygoo/widget/RangeSeekBar;->calculateCurrentSeekBarPercent(F)F

    move-result v0

    .line 691
    iget v5, p0, Lcom/jaygoo/widget/RangeSeekBar;->steps:I

    int-to-float v5, v5

    div-float/2addr v2, v5

    .line 692
    new-instance v5, Ljava/math/BigDecimal;

    div-float/2addr v0, v2

    float-to-double v6, v0

    invoke-direct {v5, v6, v7}, Ljava/math/BigDecimal;-><init>(D)V

    sget-object v0, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {v5, v4, v0}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->intValue()I

    move-result v0

    .line 693
    iget-object v5, p0, Lcom/jaygoo/widget/RangeSeekBar;->currTouchSB:Lcom/jaygoo/widget/SeekBar;

    int-to-float v0, v0

    mul-float/2addr v0, v2

    invoke-virtual {v5, v0}, Lcom/jaygoo/widget/SeekBar;->slide(F)V

    .line 696
    :cond_12
    iget v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->seekBarMode:I

    if-ne v0, v3, :cond_13

    .line 697
    iget-object v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->rightSB:Lcom/jaygoo/widget/SeekBar;

    invoke-virtual {v0, v4}, Lcom/jaygoo/widget/SeekBar;->setShowIndicatorEnable(Z)V

    .line 699
    :cond_13
    iget-object v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->leftSB:Lcom/jaygoo/widget/SeekBar;

    invoke-virtual {v0, v4}, Lcom/jaygoo/widget/SeekBar;->setShowIndicatorEnable(Z)V

    .line 700
    iget-object v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->currTouchSB:Lcom/jaygoo/widget/SeekBar;

    invoke-virtual {v0}, Lcom/jaygoo/widget/SeekBar;->materialRestore()V

    .line 701
    invoke-direct {p0}, Lcom/jaygoo/widget/RangeSeekBar;->resetCurrentSeekBarThumb()V

    .line 702
    iget-object v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->callback:Lcom/jaygoo/widget/OnRangeChangedListener;

    if-eqz v0, :cond_14

    .line 703
    invoke-virtual {p0}, Lcom/jaygoo/widget/RangeSeekBar;->getRangeSeekBarState()[Lcom/jaygoo/widget/SeekBarState;

    move-result-object v0

    .line 704
    iget-object v2, p0, Lcom/jaygoo/widget/RangeSeekBar;->callback:Lcom/jaygoo/widget/OnRangeChangedListener;

    aget-object v3, v0, v4

    iget v3, v3, Lcom/jaygoo/widget/SeekBarState;->value:F

    aget-object v0, v0, v1

    iget v0, v0, Lcom/jaygoo/widget/SeekBarState;->value:F

    invoke-interface {v2, p0, v3, v0, v4}, Lcom/jaygoo/widget/OnRangeChangedListener;->onRangeChanged(Lcom/jaygoo/widget/RangeSeekBar;FFZ)V

    .line 707
    :cond_14
    invoke-virtual {p0}, Lcom/jaygoo/widget/RangeSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 708
    invoke-virtual {p0}, Lcom/jaygoo/widget/RangeSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 710
    :cond_15
    iget-object v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->callback:Lcom/jaygoo/widget/OnRangeChangedListener;

    if-eqz v0, :cond_17

    .line 711
    iget-object v2, p0, Lcom/jaygoo/widget/RangeSeekBar;->currTouchSB:Lcom/jaygoo/widget/SeekBar;

    iget-object v3, p0, Lcom/jaygoo/widget/RangeSeekBar;->leftSB:Lcom/jaygoo/widget/SeekBar;

    if-ne v2, v3, :cond_16

    goto :goto_5

    :cond_16
    move v1, v4

    :goto_5
    invoke-interface {v0, p0, v1}, Lcom/jaygoo/widget/OnRangeChangedListener;->onStopTrackingTouch(Lcom/jaygoo/widget/RangeSeekBar;Z)V

    .line 713
    :cond_17
    invoke-direct {p0, v4}, Lcom/jaygoo/widget/RangeSeekBar;->changeThumbActivateState(Z)V

    .line 716
    :goto_6
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 590
    :cond_18
    invoke-virtual {p0, p1}, Lcom/jaygoo/widget/RangeSeekBar;->getEventX(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->touchDownX:F

    .line 591
    invoke-virtual {p0, p1}, Lcom/jaygoo/widget/RangeSeekBar;->getEventY(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->touchDownY:F

    .line 592
    iget v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->seekBarMode:I

    if-ne v0, v3, :cond_1c

    .line 593
    iget-object v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->rightSB:Lcom/jaygoo/widget/SeekBar;

    iget v0, v0, Lcom/jaygoo/widget/SeekBar;->currPercent:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_19

    iget-object v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->leftSB:Lcom/jaygoo/widget/SeekBar;

    invoke-virtual {p0, p1}, Lcom/jaygoo/widget/RangeSeekBar;->getEventX(Landroid/view/MotionEvent;)F

    move-result v3

    invoke-virtual {p0, p1}, Lcom/jaygoo/widget/RangeSeekBar;->getEventY(Landroid/view/MotionEvent;)F

    move-result v5

    invoke-virtual {v0, v3, v5}, Lcom/jaygoo/widget/SeekBar;->collide(FF)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 594
    iget-object p1, p0, Lcom/jaygoo/widget/RangeSeekBar;->leftSB:Lcom/jaygoo/widget/SeekBar;

    iput-object p1, p0, Lcom/jaygoo/widget/RangeSeekBar;->currTouchSB:Lcom/jaygoo/widget/SeekBar;

    .line 595
    invoke-direct {p0}, Lcom/jaygoo/widget/RangeSeekBar;->scaleCurrentSeekBarThumb()V

    goto :goto_8

    .line 596
    :cond_19
    iget-object v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->rightSB:Lcom/jaygoo/widget/SeekBar;

    invoke-virtual {p0, p1}, Lcom/jaygoo/widget/RangeSeekBar;->getEventX(Landroid/view/MotionEvent;)F

    move-result v3

    invoke-virtual {p0, p1}, Lcom/jaygoo/widget/RangeSeekBar;->getEventY(Landroid/view/MotionEvent;)F

    move-result p1

    invoke-virtual {v0, v3, p1}, Lcom/jaygoo/widget/SeekBar;->collide(FF)Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 597
    iget-object p1, p0, Lcom/jaygoo/widget/RangeSeekBar;->rightSB:Lcom/jaygoo/widget/SeekBar;

    iput-object p1, p0, Lcom/jaygoo/widget/RangeSeekBar;->currTouchSB:Lcom/jaygoo/widget/SeekBar;

    .line 598
    invoke-direct {p0}, Lcom/jaygoo/widget/RangeSeekBar;->scaleCurrentSeekBarThumb()V

    goto :goto_8

    .line 600
    :cond_1a
    iget p1, p0, Lcom/jaygoo/widget/RangeSeekBar;->touchDownX:F

    invoke-virtual {p0}, Lcom/jaygoo/widget/RangeSeekBar;->getProgressLeft()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    mul-float/2addr p1, v2

    iget v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->progressWidth:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 601
    iget-object v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->leftSB:Lcom/jaygoo/widget/SeekBar;

    iget v0, v0, Lcom/jaygoo/widget/SeekBar;->currPercent:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 602
    iget-object v2, p0, Lcom/jaygoo/widget/RangeSeekBar;->rightSB:Lcom/jaygoo/widget/SeekBar;

    iget v2, v2, Lcom/jaygoo/widget/SeekBar;->currPercent:F

    sub-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpg-float p1, v0, p1

    if-gez p1, :cond_1b

    .line 604
    iget-object p1, p0, Lcom/jaygoo/widget/RangeSeekBar;->leftSB:Lcom/jaygoo/widget/SeekBar;

    iput-object p1, p0, Lcom/jaygoo/widget/RangeSeekBar;->currTouchSB:Lcom/jaygoo/widget/SeekBar;

    goto :goto_7

    .line 606
    :cond_1b
    iget-object p1, p0, Lcom/jaygoo/widget/RangeSeekBar;->rightSB:Lcom/jaygoo/widget/SeekBar;

    iput-object p1, p0, Lcom/jaygoo/widget/RangeSeekBar;->currTouchSB:Lcom/jaygoo/widget/SeekBar;

    .line 608
    :goto_7
    iget p1, p0, Lcom/jaygoo/widget/RangeSeekBar;->touchDownX:F

    invoke-virtual {p0, p1}, Lcom/jaygoo/widget/RangeSeekBar;->calculateCurrentSeekBarPercent(F)F

    move-result p1

    .line 609
    iget-object v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->currTouchSB:Lcom/jaygoo/widget/SeekBar;

    invoke-virtual {v0, p1}, Lcom/jaygoo/widget/SeekBar;->slide(F)V

    goto :goto_8

    .line 612
    :cond_1c
    iget-object p1, p0, Lcom/jaygoo/widget/RangeSeekBar;->leftSB:Lcom/jaygoo/widget/SeekBar;

    iput-object p1, p0, Lcom/jaygoo/widget/RangeSeekBar;->currTouchSB:Lcom/jaygoo/widget/SeekBar;

    .line 613
    invoke-direct {p0}, Lcom/jaygoo/widget/RangeSeekBar;->scaleCurrentSeekBarThumb()V

    .line 617
    :goto_8
    invoke-virtual {p0}, Lcom/jaygoo/widget/RangeSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_1d

    .line 618
    invoke-virtual {p0}, Lcom/jaygoo/widget/RangeSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 620
    :cond_1d
    iget-object p1, p0, Lcom/jaygoo/widget/RangeSeekBar;->callback:Lcom/jaygoo/widget/OnRangeChangedListener;

    if-eqz p1, :cond_1f

    .line 621
    iget-object v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->currTouchSB:Lcom/jaygoo/widget/SeekBar;

    iget-object v2, p0, Lcom/jaygoo/widget/RangeSeekBar;->leftSB:Lcom/jaygoo/widget/SeekBar;

    if-ne v0, v2, :cond_1e

    move v4, v1

    :cond_1e
    invoke-interface {p1, p0, v4}, Lcom/jaygoo/widget/OnRangeChangedListener;->onStartTrackingTouch(Lcom/jaygoo/widget/RangeSeekBar;Z)V

    .line 623
    :cond_1f
    invoke-direct {p0, v1}, Lcom/jaygoo/widget/RangeSeekBar;->changeThumbActivateState(Z)V

    return v1
.end method

.method public setEnableThumbOverlap(Z)V
    .locals 0

    .line 1100
    iput-boolean p1, p0, Lcom/jaygoo/widget/RangeSeekBar;->enableThumbOverlap:Z

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 862
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 863
    iput-boolean p1, p0, Lcom/jaygoo/widget/RangeSeekBar;->isEnable:Z

    return-void
.end method

.method public setGravity(I)V
    .locals 0

    .line 1182
    iput p1, p0, Lcom/jaygoo/widget/RangeSeekBar;->gravity:I

    return-void
.end method

.method public setIndicatorText(Ljava/lang/String;)V
    .locals 2

    .line 867
    iget-object v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->leftSB:Lcom/jaygoo/widget/SeekBar;

    invoke-virtual {v0, p1}, Lcom/jaygoo/widget/SeekBar;->setIndicatorText(Ljava/lang/String;)V

    .line 868
    iget v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->seekBarMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 869
    iget-object v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->rightSB:Lcom/jaygoo/widget/SeekBar;

    invoke-virtual {v0, p1}, Lcom/jaygoo/widget/SeekBar;->setIndicatorText(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setIndicatorTextDecimalFormat(Ljava/lang/String;)V
    .locals 2

    .line 879
    iget-object v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->leftSB:Lcom/jaygoo/widget/SeekBar;

    invoke-virtual {v0, p1}, Lcom/jaygoo/widget/SeekBar;->setIndicatorTextDecimalFormat(Ljava/lang/String;)V

    .line 880
    iget v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->seekBarMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 881
    iget-object v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->rightSB:Lcom/jaygoo/widget/SeekBar;

    invoke-virtual {v0, p1}, Lcom/jaygoo/widget/SeekBar;->setIndicatorTextDecimalFormat(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setIndicatorTextStringFormat(Ljava/lang/String;)V
    .locals 2

    .line 891
    iget-object v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->leftSB:Lcom/jaygoo/widget/SeekBar;

    invoke-virtual {v0, p1}, Lcom/jaygoo/widget/SeekBar;->setIndicatorTextStringFormat(Ljava/lang/String;)V

    .line 892
    iget v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->seekBarMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 893
    iget-object v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->rightSB:Lcom/jaygoo/widget/SeekBar;

    invoke-virtual {v0, p1}, Lcom/jaygoo/widget/SeekBar;->setIndicatorTextStringFormat(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setOnRangeChangedListener(Lcom/jaygoo/widget/OnRangeChangedListener;)V
    .locals 0

    .line 753
    iput-object p1, p0, Lcom/jaygoo/widget/RangeSeekBar;->callback:Lcom/jaygoo/widget/OnRangeChangedListener;

    return-void
.end method

.method public setProgress(F)V
    .locals 1

    .line 757
    iget v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->maxProgress:F

    invoke-virtual {p0, p1, v0}, Lcom/jaygoo/widget/RangeSeekBar;->setProgress(FF)V

    return-void
.end method

.method public setProgress(FF)V
    .locals 3

    .line 761
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 762
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    sub-float v0, p2, p1

    .line 763
    iget v1, p0, Lcom/jaygoo/widget/RangeSeekBar;->minInterval:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    sub-float p1, p2, v1

    .line 767
    :cond_0
    iget v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->minProgress:F

    cmpg-float v1, p1, v0

    if-ltz v1, :cond_4

    .line 770
    iget v1, p0, Lcom/jaygoo/widget/RangeSeekBar;->maxProgress:F

    cmpl-float v2, p2, v1

    if-gtz v2, :cond_3

    sub-float/2addr v1, v0

    .line 775
    iget-object v2, p0, Lcom/jaygoo/widget/RangeSeekBar;->leftSB:Lcom/jaygoo/widget/SeekBar;

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    div-float/2addr v0, v1

    iput v0, v2, Lcom/jaygoo/widget/SeekBar;->currPercent:F

    .line 776
    iget v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->seekBarMode:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 777
    iget-object v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->rightSB:Lcom/jaygoo/widget/SeekBar;

    iget v2, p0, Lcom/jaygoo/widget/RangeSeekBar;->minProgress:F

    sub-float v2, p2, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float/2addr v2, v1

    iput v2, v0, Lcom/jaygoo/widget/SeekBar;->currPercent:F

    .line 780
    :cond_1
    iget-object v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->callback:Lcom/jaygoo/widget/OnRangeChangedListener;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 781
    invoke-interface {v0, p0, p1, p2, v1}, Lcom/jaygoo/widget/OnRangeChangedListener;->onRangeChanged(Lcom/jaygoo/widget/RangeSeekBar;FFZ)V

    .line 783
    :cond_2
    invoke-virtual {p0}, Lcom/jaygoo/widget/RangeSeekBar;->invalidate()V

    return-void

    .line 771
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setProgress() max > (preset max - offsetValue) . #max:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " #preset max:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 768
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setProgress() min < (preset min - offsetValue) . #min:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " #preset min:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setProgressBottom(I)V
    .locals 0

    .line 1148
    iput p1, p0, Lcom/jaygoo/widget/RangeSeekBar;->progressBottom:I

    return-void
.end method

.method public setProgressColor(I)V
    .locals 0

    .line 1051
    iput p1, p0, Lcom/jaygoo/widget/RangeSeekBar;->progressColor:I

    return-void
.end method

.method public setProgressColor(II)V
    .locals 0

    .line 948
    iput p1, p0, Lcom/jaygoo/widget/RangeSeekBar;->progressDefaultColor:I

    .line 949
    iput p2, p0, Lcom/jaygoo/widget/RangeSeekBar;->progressColor:I

    return-void
.end method

.method public setProgressDefaultColor(I)V
    .locals 0

    .line 1059
    iput p1, p0, Lcom/jaygoo/widget/RangeSeekBar;->progressDefaultColor:I

    return-void
.end method

.method public setProgressDefaultDrawableId(I)V
    .locals 0

    .line 1077
    iput p1, p0, Lcom/jaygoo/widget/RangeSeekBar;->progressDefaultDrawableId:I

    const/4 p1, 0x0

    .line 1078
    iput-object p1, p0, Lcom/jaygoo/widget/RangeSeekBar;->progressDefaultBitmap:Landroid/graphics/Bitmap;

    .line 1079
    invoke-direct {p0}, Lcom/jaygoo/widget/RangeSeekBar;->initProgressBitmap()V

    return-void
.end method

.method public setProgressDrawableId(I)V
    .locals 0

    .line 1067
    iput p1, p0, Lcom/jaygoo/widget/RangeSeekBar;->progressDrawableId:I

    const/4 p1, 0x0

    .line 1068
    iput-object p1, p0, Lcom/jaygoo/widget/RangeSeekBar;->progressBitmap:Landroid/graphics/Bitmap;

    .line 1069
    invoke-direct {p0}, Lcom/jaygoo/widget/RangeSeekBar;->initProgressBitmap()V

    return-void
.end method

.method public setProgressHeight(I)V
    .locals 0

    .line 936
    iput p1, p0, Lcom/jaygoo/widget/RangeSeekBar;->progressHeight:I

    return-void
.end method

.method public setProgressLeft(I)V
    .locals 0

    .line 1152
    iput p1, p0, Lcom/jaygoo/widget/RangeSeekBar;->progressLeft:I

    return-void
.end method

.method public setProgressRadius(F)V
    .locals 0

    .line 1043
    iput p1, p0, Lcom/jaygoo/widget/RangeSeekBar;->progressRadius:F

    return-void
.end method

.method public setProgressRight(I)V
    .locals 0

    .line 1156
    iput p1, p0, Lcom/jaygoo/widget/RangeSeekBar;->progressRight:I

    return-void
.end method

.method public setProgressTop(I)V
    .locals 0

    .line 1144
    iput p1, p0, Lcom/jaygoo/widget/RangeSeekBar;->progressTop:I

    return-void
.end method

.method public setProgressWidth(I)V
    .locals 0

    .line 1087
    iput p1, p0, Lcom/jaygoo/widget/RangeSeekBar;->progressWidth:I

    return-void
.end method

.method public setRange(FF)V
    .locals 1

    .line 794
    iget v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->minInterval:F

    invoke-virtual {p0, p1, p2, v0}, Lcom/jaygoo/widget/RangeSeekBar;->setRange(FFF)V

    return-void
.end method

.method public setRange(FFF)V
    .locals 3

    cmpg-float v0, p2, p1

    if-lez v0, :cond_4

    const/4 v0, 0x0

    cmpg-float v1, p3, v0

    if-ltz v1, :cond_3

    sub-float v1, p2, p1

    cmpl-float v2, p3, v1

    if-gez v2, :cond_2

    .line 815
    iput p2, p0, Lcom/jaygoo/widget/RangeSeekBar;->maxProgress:F

    .line 816
    iput p1, p0, Lcom/jaygoo/widget/RangeSeekBar;->minProgress:F

    .line 817
    iput p3, p0, Lcom/jaygoo/widget/RangeSeekBar;->minInterval:F

    div-float/2addr p3, v1

    .line 818
    iput p3, p0, Lcom/jaygoo/widget/RangeSeekBar;->reservePercent:F

    .line 821
    iget p1, p0, Lcom/jaygoo/widget/RangeSeekBar;->seekBarMode:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    .line 822
    iget-object p1, p0, Lcom/jaygoo/widget/RangeSeekBar;->leftSB:Lcom/jaygoo/widget/SeekBar;

    iget p1, p1, Lcom/jaygoo/widget/SeekBar;->currPercent:F

    iget p2, p0, Lcom/jaygoo/widget/RangeSeekBar;->reservePercent:F

    add-float/2addr p1, p2

    const/high16 p2, 0x3f800000    # 1.0f

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_0

    iget-object p1, p0, Lcom/jaygoo/widget/RangeSeekBar;->leftSB:Lcom/jaygoo/widget/SeekBar;

    iget p1, p1, Lcom/jaygoo/widget/SeekBar;->currPercent:F

    iget p2, p0, Lcom/jaygoo/widget/RangeSeekBar;->reservePercent:F

    add-float/2addr p1, p2

    iget-object p2, p0, Lcom/jaygoo/widget/RangeSeekBar;->rightSB:Lcom/jaygoo/widget/SeekBar;

    iget p2, p2, Lcom/jaygoo/widget/SeekBar;->currPercent:F

    cmpl-float p1, p1, p2

    if-lez p1, :cond_0

    .line 823
    iget-object p1, p0, Lcom/jaygoo/widget/RangeSeekBar;->rightSB:Lcom/jaygoo/widget/SeekBar;

    iget-object p2, p0, Lcom/jaygoo/widget/RangeSeekBar;->leftSB:Lcom/jaygoo/widget/SeekBar;

    iget p2, p2, Lcom/jaygoo/widget/SeekBar;->currPercent:F

    iget p3, p0, Lcom/jaygoo/widget/RangeSeekBar;->reservePercent:F

    add-float/2addr p2, p3

    iput p2, p1, Lcom/jaygoo/widget/SeekBar;->currPercent:F

    goto :goto_0

    .line 824
    :cond_0
    iget-object p1, p0, Lcom/jaygoo/widget/RangeSeekBar;->rightSB:Lcom/jaygoo/widget/SeekBar;

    iget p1, p1, Lcom/jaygoo/widget/SeekBar;->currPercent:F

    iget p2, p0, Lcom/jaygoo/widget/RangeSeekBar;->reservePercent:F

    sub-float/2addr p1, p2

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_1

    iget-object p1, p0, Lcom/jaygoo/widget/RangeSeekBar;->rightSB:Lcom/jaygoo/widget/SeekBar;

    iget p1, p1, Lcom/jaygoo/widget/SeekBar;->currPercent:F

    iget p2, p0, Lcom/jaygoo/widget/RangeSeekBar;->reservePercent:F

    sub-float/2addr p1, p2

    iget-object p2, p0, Lcom/jaygoo/widget/RangeSeekBar;->leftSB:Lcom/jaygoo/widget/SeekBar;

    iget p2, p2, Lcom/jaygoo/widget/SeekBar;->currPercent:F

    cmpg-float p1, p1, p2

    if-gez p1, :cond_1

    .line 825
    iget-object p1, p0, Lcom/jaygoo/widget/RangeSeekBar;->leftSB:Lcom/jaygoo/widget/SeekBar;

    iget-object p2, p0, Lcom/jaygoo/widget/RangeSeekBar;->rightSB:Lcom/jaygoo/widget/SeekBar;

    iget p2, p2, Lcom/jaygoo/widget/SeekBar;->currPercent:F

    iget p3, p0, Lcom/jaygoo/widget/RangeSeekBar;->reservePercent:F

    sub-float/2addr p2, p3

    iput p2, p1, Lcom/jaygoo/widget/SeekBar;->currPercent:F

    .line 828
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/jaygoo/widget/RangeSeekBar;->invalidate()V

    return-void

    .line 812
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setRange() interval must be less than (max - min) ! #minInterval:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p3, " #max - min:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 809
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setRange() interval must be greater than zero ! #minInterval:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 806
    :cond_4
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRange() max must be greater than min ! #max:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, " #min:"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public setSeekBarMode(I)V
    .locals 2

    .line 978
    iput p1, p0, Lcom/jaygoo/widget/RangeSeekBar;->seekBarMode:I

    .line 979
    iget-object v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->rightSB:Lcom/jaygoo/widget/SeekBar;

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/jaygoo/widget/SeekBar;->setVisible(Z)V

    return-void
.end method

.method public setSteps(I)V
    .locals 0

    .line 1104
    iput p1, p0, Lcom/jaygoo/widget/RangeSeekBar;->steps:I

    return-void
.end method

.method public setStepsAutoBonding(Z)V
    .locals 0

    .line 1190
    iput-boolean p1, p0, Lcom/jaygoo/widget/RangeSeekBar;->stepsAutoBonding:Z

    return-void
.end method

.method public setStepsBitmaps(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1208
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/jaygoo/widget/RangeSeekBar;->steps:I

    if-le v0, v1, :cond_0

    .line 1211
    iget-object v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->stepsBitmaps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1212
    iget-object v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->stepsBitmaps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void

    .line 1209
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "stepsBitmaps must > steps !"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setStepsColor(I)V
    .locals 0

    .line 1116
    iput p1, p0, Lcom/jaygoo/widget/RangeSeekBar;->stepsColor:I

    return-void
.end method

.method public setStepsDrawable(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 1216
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/jaygoo/widget/RangeSeekBar;->steps:I

    if-le v0, v1, :cond_2

    .line 1219
    invoke-direct {p0}, Lcom/jaygoo/widget/RangeSeekBar;->verifyStepsMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1222
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 1223
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1224
    invoke-virtual {p0}, Lcom/jaygoo/widget/RangeSeekBar;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/jaygoo/widget/RangeSeekBar;->stepsWidth:F

    float-to-int v3, v3

    iget v4, p0, Lcom/jaygoo/widget/RangeSeekBar;->stepsHeight:F

    float-to-int v4, v4

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v2, v3, v4, v5}, Lcom/jaygoo/widget/Utils;->drawableToBitmap(Landroid/content/Context;III)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1226
    :cond_0
    invoke-virtual {p0, v0}, Lcom/jaygoo/widget/RangeSeekBar;->setStepsBitmaps(Ljava/util/List;)V

    return-void

    .line 1220
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "stepsWidth must > 0, stepsHeight must > 0,steps must > 0 First!!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1217
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "stepsDrawableIds must > steps !"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setStepsDrawableId(I)V
    .locals 1

    .line 1198
    iget-object v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->stepsBitmaps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1199
    iput p1, p0, Lcom/jaygoo/widget/RangeSeekBar;->stepsDrawableId:I

    .line 1200
    invoke-direct {p0}, Lcom/jaygoo/widget/RangeSeekBar;->initStepsBitmap()V

    return-void
.end method

.method public setStepsHeight(F)V
    .locals 0

    .line 1132
    iput p1, p0, Lcom/jaygoo/widget/RangeSeekBar;->stepsHeight:F

    return-void
.end method

.method public setStepsRadius(F)V
    .locals 0

    .line 1140
    iput p1, p0, Lcom/jaygoo/widget/RangeSeekBar;->stepsRadius:F

    return-void
.end method

.method public setStepsWidth(F)V
    .locals 0

    .line 1124
    iput p1, p0, Lcom/jaygoo/widget/RangeSeekBar;->stepsWidth:F

    return-void
.end method

.method public setTickMarkGravity(I)V
    .locals 0

    .line 1023
    iput p1, p0, Lcom/jaygoo/widget/RangeSeekBar;->tickMarkGravity:I

    return-void
.end method

.method public setTickMarkInRangeTextColor(I)V
    .locals 0

    .line 965
    iput p1, p0, Lcom/jaygoo/widget/RangeSeekBar;->tickMarkInRangeTextColor:I

    return-void
.end method

.method public setTickMarkLayoutGravity(I)V
    .locals 0

    .line 1169
    iput p1, p0, Lcom/jaygoo/widget/RangeSeekBar;->tickMarkLayoutGravity:I

    return-void
.end method

.method public setTickMarkMode(I)V
    .locals 0

    .line 992
    iput p1, p0, Lcom/jaygoo/widget/RangeSeekBar;->tickMarkMode:I

    return-void
.end method

.method public setTickMarkTextArray([Ljava/lang/CharSequence;)V
    .locals 0

    .line 1031
    iput-object p1, p0, Lcom/jaygoo/widget/RangeSeekBar;->tickMarkTextArray:[Ljava/lang/CharSequence;

    return-void
.end method

.method public setTickMarkTextColor(I)V
    .locals 0

    .line 957
    iput p1, p0, Lcom/jaygoo/widget/RangeSeekBar;->tickMarkTextColor:I

    return-void
.end method

.method public setTickMarkTextMargin(I)V
    .locals 0

    .line 1000
    iput p1, p0, Lcom/jaygoo/widget/RangeSeekBar;->tickMarkTextMargin:I

    return-void
.end method

.method public setTickMarkTextSize(I)V
    .locals 0

    .line 1008
    iput p1, p0, Lcom/jaygoo/widget/RangeSeekBar;->tickMarkTextSize:I

    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    .line 1092
    iget-object v0, p0, Lcom/jaygoo/widget/RangeSeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void
.end method
