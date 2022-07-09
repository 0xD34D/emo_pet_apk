.class public Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;
.super Landroid/view/View;
.source "MusicSpectrumBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar$OnSeekChangeListener;
    }
.end annotation


# instance fields
.field private ColorStr:[Ljava/lang/String;

.field private SpectMultiple:F

.field private colorGradient:I

.field private currentT:I

.field private gapMultiple:F

.field private highD:[I

.field private listener:Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar$OnSeekChangeListener;

.field private mLastXIntercept:F

.field private mLastYIntercept:F

.field private myCData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/caesar/musicspectrumbarlibrary/SpectrumData;",
            ">;"
        }
    .end annotation
.end field

.field private paint:Landroid/graphics/Paint;

.field private poseType:I

.field private roundAngle:I

.field private unSelectColor:I

.field private viewAllHigh:I

.field private viewAllWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, v0}, Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, p2, v0}, Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 31

    move-object/from16 v0, p0

    .line 49
    invoke-direct/range {p0 .. p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v1, 0x0

    .line 23
    iput v1, v0, Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;->mLastXIntercept:F

    .line 24
    iput v1, v0, Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;->mLastYIntercept:F

    const/16 v1, 0x1d

    new-array v1, v1, [I

    .line 29
    fill-array-data v1, :array_0

    iput-object v1, v0, Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;->highD:[I

    const-string v2, "#0050dc"

    const-string v3, "#0650dc"

    const-string v4, "#0b51dd"

    const-string v5, "#1151dd"

    const-string v6, "#1951de"

    const-string v7, "#2052de"

    const-string v8, "#2852df"

    const-string v9, "#3153df"

    const-string v10, "#3a53e0"

    const-string v11, "#4454e0"

    const-string v12, "#4e54e1"

    const-string v13, "#5855e2"

    const-string v14, "#6255e2"

    const-string v15, "#6d56e3"

    const-string v16, "#7756e3"

    const-string v17, "#8257e4"

    const-string v18, "#8c58e5"

    const-string v19, "#9758e5"

    const-string v20, "#a159e6"

    const-string v21, "#ab59e7"

    const-string v22, "#b45ae7"

    const-string v23, "#be5ae8"

    const-string v24, "#c65be8"

    const-string v25, "#ce5be9"

    const-string v26, "#d65ce9"

    const-string v27, "#dd5cea"

    const-string v28, "#e45cea"

    const-string v29, "#e95deb"

    const-string v30, "#ee5deb"

    .line 30
    filled-new-array/range {v2 .. v30}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;->ColorStr:[Ljava/lang/String;

    const/4 v1, -0x1

    .line 32
    iput v1, v0, Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;->currentT:I

    .line 50
    sget-object v2, Lcom/caesar/musicspectrumbarlibrary/R$styleable;->MusicSpectrumBar:[I

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 51
    sget v3, Lcom/caesar/musicspectrumbarlibrary/R$styleable;->MusicSpectrumBar_roundAngle:I

    const/4 v4, 0x5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v0, Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;->roundAngle:I

    .line 52
    sget v3, Lcom/caesar/musicspectrumbarlibrary/R$styleable;->MusicSpectrumBar_poseType:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v0, Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;->poseType:I

    .line 53
    sget v3, Lcom/caesar/musicspectrumbarlibrary/R$styleable;->MusicSpectrumBar_gapMultiple:I

    const/high16 v5, 0x40000000    # 2.0f

    invoke-virtual {v2, v3, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, v0, Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;->gapMultiple:F

    .line 54
    sget v3, Lcom/caesar/musicspectrumbarlibrary/R$styleable;->MusicSpectrumBar_unSelectColor:I

    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, v0, Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;->unSelectColor:I

    .line 55
    sget v1, Lcom/caesar/musicspectrumbarlibrary/R$styleable;->MusicSpectrumBar_colorGradient:I

    invoke-virtual {v2, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, v0, Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;->colorGradient:I

    .line 56
    sget v1, Lcom/caesar/musicspectrumbarlibrary/R$styleable;->MusicSpectrumBar_SpectMultiple:I

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-virtual {v2, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, v0, Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;->SpectMultiple:F

    .line 57
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 58
    invoke-direct/range {p0 .. p0}, Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;->clearItems()V

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x3
        0x5
        0x4
        0x6
        0x2
        0x7
        0x5
        0x6
        0x3
        0x2
        0x1
        0x2
        0x1
        0x2
        0x6
        0x5
        0x4
        0x2
        0x7
        0x5
        0x2
        0x3
        0x1
        0x2
        0x1
        0x3
        0x2
        0x1
    .end array-data
.end method

.method private clearItems()V
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;->myCData:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 239
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;->myCData:Ljava/util/ArrayList;

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;->myCData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private getMaxIntArr()I
    .locals 5

    .line 226
    iget-object v0, p0, Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;->highD:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_1

    aget v4, v0, v2

    if-le v4, v3, :cond_0

    move v3, v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method private setItems()V
    .locals 16

    move-object/from16 v0, p0

    .line 197
    iget v1, v0, Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;->viewAllWidth:I

    int-to-float v1, v1

    iget-object v2, v0, Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;->highD:[I

    array-length v2, v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v4, v0, Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;->gapMultiple:F

    const/high16 v5, 0x3f800000    # 1.0f

    add-float/2addr v4, v5

    mul-float/2addr v2, v4

    add-float/2addr v2, v5

    div-float/2addr v1, v2

    .line 198
    iget v2, v0, Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;->viewAllHigh:I

    int-to-float v2, v2

    invoke-direct/range {p0 .. p0}, Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;->getMaxIntArr()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v2, v4

    .line 199
    iget v4, v0, Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;->viewAllHigh:I

    int-to-float v4, v4

    iget v6, v0, Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;->SpectMultiple:F

    sub-float v6, v5, v6

    mul-float/2addr v4, v6

    invoke-direct/range {p0 .. p0}, Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;->getMaxIntArr()I

    move-result v6

    sub-int/2addr v6, v3

    int-to-float v6, v6

    div-float/2addr v4, v6

    .line 200
    iget-object v6, v0, Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;->myCData:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v6, 0x0

    .line 201
    :goto_0
    iget-object v7, v0, Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;->highD:[I

    array-length v8, v7

    if-ge v6, v8, :cond_3

    int-to-float v8, v6

    .line 202
    iget v9, v0, Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;->gapMultiple:F

    add-float/2addr v9, v5

    mul-float/2addr v8, v9

    mul-float v10, v8, v1

    const/4 v8, 0x0

    .line 204
    iget v9, v0, Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;->poseType:I

    if-nez v9, :cond_0

    .line 205
    iget v8, v0, Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;->viewAllHigh:I

    int-to-float v8, v8

    aget v9, v7, v6

    int-to-float v9, v9

    mul-float/2addr v9, v2

    sub-float/2addr v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float v12, v8, v9

    .line 206
    iget-object v8, v0, Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;->myCData:Ljava/util/ArrayList;

    new-instance v15, Lcom/caesar/musicspectrumbarlibrary/SpectrumData;

    add-float v11, v10, v1

    aget v7, v7, v6

    int-to-float v7, v7

    mul-float/2addr v7, v2

    add-float v13, v12, v7

    iget-object v7, v0, Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;->ColorStr:[Ljava/lang/String;

    aget-object v14, v7, v6

    move-object v9, v15

    invoke-direct/range {v9 .. v14}, Lcom/caesar/musicspectrumbarlibrary/SpectrumData;-><init>(FFFFLjava/lang/String;)V

    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    if-ne v9, v3, :cond_1

    .line 208
    iget v8, v0, Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;->viewAllHigh:I

    int-to-float v8, v8

    aget v9, v7, v6

    int-to-float v9, v9

    mul-float/2addr v9, v2

    sub-float v12, v8, v9

    .line 209
    iget-object v8, v0, Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;->myCData:Ljava/util/ArrayList;

    new-instance v15, Lcom/caesar/musicspectrumbarlibrary/SpectrumData;

    add-float v11, v10, v1

    aget v7, v7, v6

    int-to-float v7, v7

    mul-float/2addr v7, v2

    add-float v13, v12, v7

    iget-object v7, v0, Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;->ColorStr:[Ljava/lang/String;

    aget-object v14, v7, v6

    move-object v9, v15

    invoke-direct/range {v9 .. v14}, Lcom/caesar/musicspectrumbarlibrary/SpectrumData;-><init>(FFFFLjava/lang/String;)V

    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const/4 v11, 0x2

    if-ne v9, v11, :cond_2

    .line 211
    iget-object v15, v0, Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;->myCData:Ljava/util/ArrayList;

    new-instance v14, Lcom/caesar/musicspectrumbarlibrary/SpectrumData;

    add-float v11, v10, v1

    aget v7, v7, v6

    int-to-float v7, v7

    mul-float/2addr v7, v2

    add-float v13, v7, v8

    iget-object v7, v0, Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;->ColorStr:[Ljava/lang/String;

    aget-object v7, v7, v6

    const/4 v12, 0x0

    move-object v9, v14

    move-object v8, v14

    move-object v14, v7

    invoke-direct/range {v9 .. v14}, Lcom/caesar/musicspectrumbarlibrary/SpectrumData;-><init>(FFFFLjava/lang/String;)V

    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 213
    :cond_2
    iget-object v8, v0, Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;->myCData:Ljava/util/ArrayList;

    new-instance v15, Lcom/caesar/musicspectrumbarlibrary/SpectrumData;

    add-float v11, v10, v1

    aget v9, v7, v6

    sub-int/2addr v9, v3

    int-to-float v9, v9

    mul-float v12, v4, v9

    aget v7, v7, v6

    sub-int/2addr v7, v3

    int-to-float v7, v7

    mul-float/2addr v7, v4

    iget v9, v0, Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;->viewAllHigh:I

    int-to-float v9, v9

    iget v13, v0, Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;->SpectMultiple:F

    mul-float/2addr v9, v13

    add-float v13, v7, v9

    iget-object v7, v0, Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;->ColorStr:[Ljava/lang/String;

    aget-object v14, v7, v6

    move-object v9, v15

    invoke-direct/range {v9 .. v14}, Lcom/caesar/musicspectrumbarlibrary/SpectrumData;-><init>(FFFFLjava/lang/String;)V

    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 158
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 159
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 160
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    const/4 v4, 0x0

    if-eq v2, v3, :cond_2

    const/4 v5, 0x2

    if-eq v2, v5, :cond_0

    goto :goto_0

    .line 165
    :cond_0
    iget v2, p0, Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;->mLastXIntercept:F

    sub-float v2, v0, v2

    .line 166
    iget v5, p0, Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;->mLastYIntercept:F

    sub-float v5, v1, v5

    .line 167
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    cmpg-float v6, v6, v7

    if-gez v6, :cond_1

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x41200000    # 10.0f

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    mul-float/2addr v2, v6

    cmpl-float v2, v5, v2

    if-lez v2, :cond_1

    .line 168
    invoke-virtual {p0}, Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 170
    :cond_1
    invoke-virtual {p0}, Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 174
    :cond_2
    invoke-virtual {p0}, Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 162
    :cond_3
    invoke-virtual {p0}, Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 179
    :goto_0
    iput v0, p0, Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;->mLastXIntercept:F

    .line 180
    iput v1, p0, Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;->mLastYIntercept:F

    .line 181
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    monitor-enter p0

    .line 63
    :try_start_0
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 64
    iget-object v0, p0, Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;->myCData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 65
    monitor-exit p0

    return-void

    .line 67
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 68
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;->paint:Landroid/graphics/Paint;

    .line 69
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    :cond_1
    const/4 v0, 0x0

    move v2, v0

    .line 71
    :goto_0
    iget-object v3, p0, Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;->highD:[I

    array-length v4, v3

    if-ge v2, v4, :cond_8

    .line 72
    iget v4, p0, Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;->currentT:I

    if-gt v2, v4, :cond_6

    if-lez v4, :cond_5

    .line 74
    iget v5, p0, Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;->colorGradient:I

    if-nez v5, :cond_4

    .line 75
    array-length v5, v3

    mul-int/2addr v5, v2

    div-int/2addr v5, v4

    if-gez v5, :cond_2

    move v5, v0

    goto :goto_1

    .line 78
    :cond_2
    array-length v4, v3

    sub-int/2addr v4, v1

    if-le v5, v4, :cond_3

    .line 79
    array-length v3, v3

    add-int/lit8 v5, v3, -0x1

    .line 81
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;->paint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;->ColorStr:[Ljava/lang/String;

    aget-object v4, v4, v5

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2

    .line 83
    :cond_4
    iget-object v3, p0, Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;->paint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;->ColorStr:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2

    .line 86
    :cond_5
    iget-object v3, p0, Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;->paint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;->ColorStr:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2

    .line 89
    :cond_6
    iget-object v3, p0, Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;->paint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;->unSelectColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 91
    :goto_2
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_7

    .line 92
    iget-object v3, p0, Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;->myCData:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/caesar/musicspectrumbarlibrary/SpectrumData;

    invoke-virtual {v3}, Lcom/caesar/musicspectrumbarlibrary/SpectrumData;->getLeft()F

    move-result v5

    iget-object v3, p0, Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;->myCData:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/caesar/musicspectrumbarlibrary/SpectrumData;

    invoke-virtual {v3}, Lcom/caesar/musicspectrumbarlibrary/SpectrumData;->getTop()F

    move-result v6

    iget-object v3, p0, Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;->myCData:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/caesar/musicspectrumbarlibrary/SpectrumData;

    invoke-virtual {v3}, Lcom/caesar/musicspectrumbarlibrary/SpectrumData;->getRight()F

    move-result v7

    iget-object v3, p0, Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;->myCData:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/caesar/musicspectrumbarlibrary/SpectrumData;

    invoke-virtual {v3}, Lcom/caesar/musicspectrumbarlibrary/SpectrumData;->getBottom()F

    move-result v8

    iget v3, p0, Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;->roundAngle:I

    int-to-float v9, v3

    int-to-float v10, v3

    iget-object v11, p0, Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;->paint:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 94
    :cond_7
    iget-object v3, p0, Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;->myCData:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/caesar/musicspectrumbarlibrary/SpectrumData;

    invoke-virtual {v3}, Lcom/caesar/musicspectrumbarlibrary/SpectrumData;->getLeft()F

    move-result v5

    iget-object v3, p0, Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;->myCData:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/caesar/musicspectrumbarlibrary/SpectrumData;

    invoke-virtual {v3}, Lcom/caesar/musicspectrumbarlibrary/SpectrumData;->getTop()F

    move-result v6

    iget-object v3, p0, Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;->myCData:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/caesar/musicspectrumbarlibrary/SpectrumData;

    invoke-virtual {v3}, Lcom/caesar/musicspectrumbarlibrary/SpectrumData;->getRight()F

    move-result v7

    iget-object v3, p0, Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;->myCData:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/caesar/musicspectrumbarlibrary/SpectrumData;

    invoke-virtual {v3}, Lcom/caesar/musicspectrumbarlibrary/SpectrumData;->getBottom()F

    move-result v8

    iget-object v9, p0, Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;->paint:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 97
    :cond_8
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 186
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 187
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iput p1, p0, Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;->viewAllWidth:I

    .line 188
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iput p1, p0, Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;->viewAllHigh:I

    .line 189
    invoke-direct {p0}, Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;->setItems()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 112
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    if-eq v0, v2, :cond_0

    const/4 v4, 0x2

    if-eq v0, v4, :cond_7

    goto :goto_1

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;->listener:Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar$OnSeekChangeListener;

    if-eqz v0, :cond_3

    .line 143
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    cmpg-float v2, v0, v3

    if-gez v2, :cond_1

    goto :goto_0

    .line 146
    :cond_1
    iget v2, p0, Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;->viewAllWidth:I

    int-to-float v3, v2

    cmpl-float v3, v0, v3

    if-lez v3, :cond_2

    int-to-float v3, v2

    goto :goto_0

    :cond_2
    move v3, v0

    .line 149
    :goto_0
    iget-object v0, p0, Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;->listener:Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar$OnSeekChangeListener;

    iget v2, p0, Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;->viewAllWidth:I

    int-to-float v2, v2

    div-float/2addr v3, v2

    mul-float/2addr v3, v1

    float-to-int v1, v3

    invoke-interface {v0, v1}, Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar$OnSeekChangeListener;->onStopTrackingTouch(I)V

    .line 152
    :cond_3
    :goto_1
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 114
    :cond_4
    invoke-virtual {p0}, Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;->performClick()Z

    .line 115
    iget-object v0, p0, Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;->listener:Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar$OnSeekChangeListener;

    if-eqz v0, :cond_7

    .line 116
    invoke-interface {v0}, Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar$OnSeekChangeListener;->onStartTrackingTouch()V

    .line 117
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    cmpg-float v4, v0, v3

    if-gez v4, :cond_5

    move v0, v3

    goto :goto_2

    .line 120
    :cond_5
    iget v4, p0, Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;->viewAllWidth:I

    int-to-float v5, v4

    cmpl-float v5, v0, v5

    if-lez v5, :cond_6

    int-to-float v0, v4

    .line 123
    :cond_6
    :goto_2
    iget-object v4, p0, Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;->listener:Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar$OnSeekChangeListener;

    iget v5, p0, Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;->viewAllWidth:I

    int-to-float v5, v5

    div-float/2addr v0, v5

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-interface {v4, v0, v2}, Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar$OnSeekChangeListener;->onProgressChanged(IZ)V

    .line 126
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v4, p0, Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;->viewAllWidth:I

    int-to-float v4, v4

    div-float/2addr v0, v4

    iget-object v4, p0, Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;->highD:[I

    array-length v5, v4

    int-to-float v5, v5

    mul-float/2addr v0, v5

    float-to-int v0, v0

    iput v0, p0, Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;->currentT:I

    .line 127
    array-length v5, v4

    if-le v0, v5, :cond_8

    .line 128
    array-length v0, v4

    iput v0, p0, Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;->currentT:I

    .line 130
    :cond_8
    invoke-virtual {p0}, Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;->invalidate()V

    .line 131
    iget-object v0, p0, Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;->listener:Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar$OnSeekChangeListener;

    if-eqz v0, :cond_b

    .line 132
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    cmpg-float v0, p1, v3

    if-gez v0, :cond_9

    goto :goto_3

    .line 135
    :cond_9
    iget v0, p0, Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;->viewAllWidth:I

    int-to-float v3, v0

    cmpl-float v3, p1, v3

    if-lez v3, :cond_a

    int-to-float v3, v0

    goto :goto_3

    :cond_a
    move v3, p1

    .line 138
    :goto_3
    iget-object p1, p0, Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;->listener:Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar$OnSeekChangeListener;

    iget v0, p0, Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;->viewAllWidth:I

    int-to-float v0, v0

    div-float/2addr v3, v0

    mul-float/2addr v3, v1

    float-to-int v0, v3

    invoke-interface {p1, v0, v2}, Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar$OnSeekChangeListener;->onProgressChanged(IZ)V

    :cond_b
    return v2
.end method

.method public performClick()Z
    .locals 1

    .line 107
    invoke-super {p0}, Landroid/view/View;->performClick()Z

    move-result v0

    return v0
.end method

.method public setCurrent(I)V
    .locals 2

    .line 265
    iget-object v0, p0, Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;->highD:[I

    array-length v0, v0

    mul-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x64

    iput v0, p0, Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;->currentT:I

    .line 266
    invoke-virtual {p0}, Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;->invalidate()V

    .line 267
    iget-object v0, p0, Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;->listener:Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar$OnSeekChangeListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 268
    invoke-interface {v0, p1, v1}, Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar$OnSeekChangeListener;->onProgressChanged(IZ)V

    :cond_0
    return-void
.end method

.method public setDatas([I[Ljava/lang/String;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;->highD:[I

    .line 252
    iput-object p2, p0, Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;->ColorStr:[Ljava/lang/String;

    return-void
.end method

.method public setOnSeekBarChangeListener(Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar$OnSeekChangeListener;)V
    .locals 0

    .line 280
    iput-object p1, p0, Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;->listener:Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar$OnSeekChangeListener;

    return-void
.end method
