.class public Lcn/bingoogolapple/badgeview/BGAExplosionAnimator;
.super Landroid/animation/ValueAnimator;
.source "BGAExplosionAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/bingoogolapple/badgeview/BGAExplosionAnimator$Particle;
    }
.end annotation


# static fields
.field public static final ANIM_DURATION:I = 0x12c

.field private static final DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final END_VALUE:F = 1.4f

.field private static final REFRESH_RATIO:I = 0x3

.field private static V:F

.field private static W:F

.field private static X:F

.field private static Y:F


# instance fields
.field private mDragBadgeView:Lcn/bingoogolapple/badgeview/BGADragBadgeView;

.field private mInvalidateRect:Landroid/graphics/Rect;

.field private mPaint:Landroid/graphics/Paint;

.field private mParticles:[Lcn/bingoogolapple/badgeview/BGAExplosionAnimator$Particle;

.field private mRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    const v1, 0x3f19999a    # 0.6f

    invoke-direct {v0, v1}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    sput-object v0, Lcn/bingoogolapple/badgeview/BGAExplosionAnimator;->DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Lcn/bingoogolapple/badgeview/BGADragBadgeView;Landroid/graphics/Rect;Landroid/graphics/Bitmap;)V
    .locals 9

    .line 51
    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 52
    fill-array-data v0, :array_0

    invoke-virtual {p0, v0}, Lcn/bingoogolapple/badgeview/BGAExplosionAnimator;->setFloatValues([F)V

    const-wide/16 v0, 0x12c

    .line 53
    invoke-virtual {p0, v0, v1}, Lcn/bingoogolapple/badgeview/BGAExplosionAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 54
    sget-object v0, Lcn/bingoogolapple/badgeview/BGAExplosionAnimator;->DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, v0}, Lcn/bingoogolapple/badgeview/BGAExplosionAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 56
    invoke-virtual {p1}, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-static {v0, v1}, Lcn/bingoogolapple/badgeview/BGABadgeViewUtil;->dp2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcn/bingoogolapple/badgeview/BGAExplosionAnimator;->X:F

    .line 57
    invoke-virtual {p1}, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {v0, v1}, Lcn/bingoogolapple/badgeview/BGABadgeViewUtil;->dp2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcn/bingoogolapple/badgeview/BGAExplosionAnimator;->Y:F

    .line 58
    invoke-virtual {p1}, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Lcn/bingoogolapple/badgeview/BGABadgeViewUtil;->dp2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcn/bingoogolapple/badgeview/BGAExplosionAnimator;->V:F

    .line 59
    invoke-virtual {p1}, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lcn/bingoogolapple/badgeview/BGABadgeViewUtil;->dp2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcn/bingoogolapple/badgeview/BGAExplosionAnimator;->W:F

    .line 61
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/bingoogolapple/badgeview/BGAExplosionAnimator;->mPaint:Landroid/graphics/Paint;

    .line 62
    iput-object p1, p0, Lcn/bingoogolapple/badgeview/BGAExplosionAnimator;->mDragBadgeView:Lcn/bingoogolapple/badgeview/BGADragBadgeView;

    .line 63
    iput-object p2, p0, Lcn/bingoogolapple/badgeview/BGAExplosionAnimator;->mRect:Landroid/graphics/Rect;

    .line 64
    new-instance p1, Landroid/graphics/Rect;

    iget-object p2, p0, Lcn/bingoogolapple/badgeview/BGAExplosionAnimator;->mRect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcn/bingoogolapple/badgeview/BGAExplosionAnimator;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    sub-int/2addr p2, v0

    iget-object v0, p0, Lcn/bingoogolapple/badgeview/BGAExplosionAnimator;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcn/bingoogolapple/badgeview/BGAExplosionAnimator;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcn/bingoogolapple/badgeview/BGAExplosionAnimator;->mRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcn/bingoogolapple/badgeview/BGAExplosionAnimator;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    add-int/2addr v1, v2

    iget-object v2, p0, Lcn/bingoogolapple/badgeview/BGAExplosionAnimator;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcn/bingoogolapple/badgeview/BGAExplosionAnimator;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    mul-int/lit8 v3, v3, 0x3

    add-int/2addr v2, v3

    invoke-direct {p1, p2, v0, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lcn/bingoogolapple/badgeview/BGAExplosionAnimator;->mInvalidateRect:Landroid/graphics/Rect;

    const/16 p1, 0xe1

    new-array p1, p1, [Lcn/bingoogolapple/badgeview/BGAExplosionAnimator$Particle;

    .line 67
    iput-object p1, p0, Lcn/bingoogolapple/badgeview/BGAExplosionAnimator;->mParticles:[Lcn/bingoogolapple/badgeview/BGAExplosionAnimator$Particle;

    .line 68
    new-instance p1, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Ljava/util/Random;-><init>(J)V

    .line 69
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    div-int/lit8 p2, p2, 0x11

    .line 70
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x11

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0xf

    if-ge v2, v3, :cond_1

    move v4, v1

    :goto_1
    if-ge v4, v3, :cond_0

    .line 73
    iget-object v5, p0, Lcn/bingoogolapple/badgeview/BGAExplosionAnimator;->mParticles:[Lcn/bingoogolapple/badgeview/BGAExplosionAnimator$Particle;

    mul-int/lit8 v6, v2, 0xf

    add-int/2addr v6, v4

    add-int/lit8 v4, v4, 0x1

    mul-int v7, v4, p2

    add-int/lit8 v8, v2, 0x1

    mul-int/2addr v8, v0

    invoke-virtual {p3, v7, v8}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v7

    invoke-direct {p0, v7, p1}, Lcn/bingoogolapple/badgeview/BGAExplosionAnimator;->generateParticle(ILjava/util/Random;)Lcn/bingoogolapple/badgeview/BGAExplosionAnimator$Particle;

    move-result-object v7

    aput-object v7, v5, v6

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3fb33333    # 1.4f
    .end array-data
.end method

.method static synthetic access$100()F
    .locals 1

    .line 35
    sget v0, Lcn/bingoogolapple/badgeview/BGAExplosionAnimator;->V:F

    return v0
.end method

.method private generateParticle(ILjava/util/Random;)Lcn/bingoogolapple/badgeview/BGAExplosionAnimator$Particle;
    .locals 5

    .line 79
    new-instance v0, Lcn/bingoogolapple/badgeview/BGAExplosionAnimator$Particle;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/bingoogolapple/badgeview/BGAExplosionAnimator$Particle;-><init>(Lcn/bingoogolapple/badgeview/BGAExplosionAnimator;Lcn/bingoogolapple/badgeview/BGAExplosionAnimator$1;)V

    .line 80
    iput p1, v0, Lcn/bingoogolapple/badgeview/BGAExplosionAnimator$Particle;->color:I

    .line 81
    sget p1, Lcn/bingoogolapple/badgeview/BGAExplosionAnimator;->V:F

    iput p1, v0, Lcn/bingoogolapple/badgeview/BGAExplosionAnimator$Particle;->radius:F

    .line 82
    invoke-virtual {p2}, Ljava/util/Random;->nextFloat()F

    move-result p1

    const v1, 0x3e4ccccd    # 0.2f

    cmpg-float p1, p1, v1

    if-gez p1, :cond_0

    .line 83
    sget p1, Lcn/bingoogolapple/badgeview/BGAExplosionAnimator;->V:F

    sget v2, Lcn/bingoogolapple/badgeview/BGAExplosionAnimator;->X:F

    sub-float/2addr v2, p1

    invoke-virtual {p2}, Ljava/util/Random;->nextFloat()F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr p1, v2

    iput p1, v0, Lcn/bingoogolapple/badgeview/BGAExplosionAnimator$Particle;->baseRadius:F

    goto :goto_0

    .line 85
    :cond_0
    sget p1, Lcn/bingoogolapple/badgeview/BGAExplosionAnimator;->W:F

    sget v2, Lcn/bingoogolapple/badgeview/BGAExplosionAnimator;->V:F

    sub-float/2addr v2, p1

    invoke-virtual {p2}, Ljava/util/Random;->nextFloat()F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr p1, v2

    iput p1, v0, Lcn/bingoogolapple/badgeview/BGAExplosionAnimator$Particle;->baseRadius:F

    .line 87
    :goto_0
    invoke-virtual {p2}, Ljava/util/Random;->nextFloat()F

    move-result p1

    .line 88
    iget-object v2, p0, Lcn/bingoogolapple/badgeview/BGAExplosionAnimator;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3e3851ec    # 0.18f

    invoke-virtual {p2}, Ljava/util/Random;->nextFloat()F

    move-result v4

    mul-float/2addr v4, v3

    add-float/2addr v4, v1

    mul-float/2addr v2, v4

    iput v2, v0, Lcn/bingoogolapple/badgeview/BGAExplosionAnimator$Particle;->top:F

    cmpg-float v2, p1, v1

    if-gez v2, :cond_1

    .line 89
    iget v1, v0, Lcn/bingoogolapple/badgeview/BGAExplosionAnimator$Particle;->top:F

    goto :goto_1

    :cond_1
    iget v3, v0, Lcn/bingoogolapple/badgeview/BGAExplosionAnimator$Particle;->top:F

    iget v4, v0, Lcn/bingoogolapple/badgeview/BGAExplosionAnimator$Particle;->top:F

    mul-float/2addr v4, v1

    invoke-virtual {p2}, Ljava/util/Random;->nextFloat()F

    move-result v1

    mul-float/2addr v4, v1

    add-float v1, v3, v4

    :goto_1
    iput v1, v0, Lcn/bingoogolapple/badgeview/BGAExplosionAnimator$Particle;->top:F

    .line 90
    iget-object v1, p0, Lcn/bingoogolapple/badgeview/BGAExplosionAnimator;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2}, Ljava/util/Random;->nextFloat()F

    move-result v3

    const/high16 v4, 0x3f000000    # 0.5f

    sub-float/2addr v3, v4

    mul-float/2addr v1, v3

    const v3, 0x3fe66666    # 1.8f

    mul-float/2addr v1, v3

    iput v1, v0, Lcn/bingoogolapple/badgeview/BGAExplosionAnimator$Particle;->bottom:F

    if-gez v2, :cond_2

    .line 91
    iget p1, v0, Lcn/bingoogolapple/badgeview/BGAExplosionAnimator$Particle;->bottom:F

    goto :goto_3

    :cond_2
    const v1, 0x3f4ccccd    # 0.8f

    cmpg-float p1, p1, v1

    if-gez p1, :cond_3

    iget p1, v0, Lcn/bingoogolapple/badgeview/BGAExplosionAnimator$Particle;->bottom:F

    const v1, 0x3f19999a    # 0.6f

    goto :goto_2

    :cond_3
    iget p1, v0, Lcn/bingoogolapple/badgeview/BGAExplosionAnimator$Particle;->bottom:F

    const v1, 0x3e99999a    # 0.3f

    :goto_2
    mul-float/2addr p1, v1

    .line 92
    :goto_3
    iput p1, v0, Lcn/bingoogolapple/badgeview/BGAExplosionAnimator$Particle;->bottom:F

    const/high16 p1, 0x40800000    # 4.0f

    .line 93
    iget v1, v0, Lcn/bingoogolapple/badgeview/BGAExplosionAnimator$Particle;->top:F

    mul-float/2addr v1, p1

    iget p1, v0, Lcn/bingoogolapple/badgeview/BGAExplosionAnimator$Particle;->bottom:F

    div-float/2addr v1, p1

    iput v1, v0, Lcn/bingoogolapple/badgeview/BGAExplosionAnimator$Particle;->mag:F

    .line 94
    iget p1, v0, Lcn/bingoogolapple/badgeview/BGAExplosionAnimator$Particle;->mag:F

    neg-float p1, p1

    iget v1, v0, Lcn/bingoogolapple/badgeview/BGAExplosionAnimator$Particle;->bottom:F

    div-float/2addr p1, v1

    iput p1, v0, Lcn/bingoogolapple/badgeview/BGAExplosionAnimator$Particle;->neg:F

    .line 95
    iget-object p1, p0, Lcn/bingoogolapple/badgeview/BGAExplosionAnimator;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    int-to-float p1, p1

    sget v1, Lcn/bingoogolapple/badgeview/BGAExplosionAnimator;->Y:F

    invoke-virtual {p2}, Ljava/util/Random;->nextFloat()F

    move-result v2

    sub-float/2addr v2, v4

    mul-float/2addr v1, v2

    add-float/2addr p1, v1

    .line 96
    iget-object v1, p0, Lcn/bingoogolapple/badgeview/BGAExplosionAnimator;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr p1, v1

    iput p1, v0, Lcn/bingoogolapple/badgeview/BGAExplosionAnimator$Particle;->baseCx:F

    .line 97
    iget p1, v0, Lcn/bingoogolapple/badgeview/BGAExplosionAnimator$Particle;->baseCx:F

    iput p1, v0, Lcn/bingoogolapple/badgeview/BGAExplosionAnimator$Particle;->cx:F

    .line 98
    iget-object p1, p0, Lcn/bingoogolapple/badgeview/BGAExplosionAnimator;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    int-to-float p1, p1

    sget v1, Lcn/bingoogolapple/badgeview/BGAExplosionAnimator;->Y:F

    invoke-virtual {p2}, Ljava/util/Random;->nextFloat()F

    move-result v2

    sub-float/2addr v2, v4

    mul-float/2addr v1, v2

    add-float/2addr p1, v1

    .line 99
    iput p1, v0, Lcn/bingoogolapple/badgeview/BGAExplosionAnimator$Particle;->baseCy:F

    .line 100
    iput p1, v0, Lcn/bingoogolapple/badgeview/BGAExplosionAnimator$Particle;->cy:F

    const p1, 0x3e0f5c29    # 0.14f

    .line 101
    invoke-virtual {p2}, Ljava/util/Random;->nextFloat()F

    move-result v1

    mul-float/2addr v1, p1

    iput v1, v0, Lcn/bingoogolapple/badgeview/BGAExplosionAnimator$Particle;->life:F

    const p1, 0x3ecccccd    # 0.4f

    .line 102
    invoke-virtual {p2}, Ljava/util/Random;->nextFloat()F

    move-result p2

    mul-float/2addr p2, p1

    iput p2, v0, Lcn/bingoogolapple/badgeview/BGAExplosionAnimator$Particle;->overflow:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 103
    iput p1, v0, Lcn/bingoogolapple/badgeview/BGAExplosionAnimator$Particle;->alpha:F

    return-object v0
.end method

.method private postInvalidate()V
    .locals 5

    .line 132
    iget-object v0, p0, Lcn/bingoogolapple/badgeview/BGAExplosionAnimator;->mDragBadgeView:Lcn/bingoogolapple/badgeview/BGADragBadgeView;

    iget-object v1, p0, Lcn/bingoogolapple/badgeview/BGAExplosionAnimator;->mInvalidateRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcn/bingoogolapple/badgeview/BGAExplosionAnimator;->mInvalidateRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcn/bingoogolapple/badgeview/BGAExplosionAnimator;->mInvalidateRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcn/bingoogolapple/badgeview/BGAExplosionAnimator;->mInvalidateRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->postInvalidate(IIII)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 108
    invoke-virtual {p0}, Lcn/bingoogolapple/badgeview/BGAExplosionAnimator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Lcn/bingoogolapple/badgeview/BGAExplosionAnimator;->mParticles:[Lcn/bingoogolapple/badgeview/BGAExplosionAnimator$Particle;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 112
    invoke-virtual {p0}, Lcn/bingoogolapple/badgeview/BGAExplosionAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v3, v4}, Lcn/bingoogolapple/badgeview/BGAExplosionAnimator$Particle;->advance(F)V

    .line 113
    iget v4, v3, Lcn/bingoogolapple/badgeview/BGAExplosionAnimator$Particle;->alpha:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    .line 114
    iget-object v4, p0, Lcn/bingoogolapple/badgeview/BGAExplosionAnimator;->mPaint:Landroid/graphics/Paint;

    iget v5, v3, Lcn/bingoogolapple/badgeview/BGAExplosionAnimator$Particle;->color:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 115
    iget-object v4, p0, Lcn/bingoogolapple/badgeview/BGAExplosionAnimator;->mPaint:Landroid/graphics/Paint;

    iget v5, v3, Lcn/bingoogolapple/badgeview/BGAExplosionAnimator$Particle;->color:I

    invoke-static {v5}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    int-to-float v5, v5

    iget v6, v3, Lcn/bingoogolapple/badgeview/BGAExplosionAnimator$Particle;->alpha:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 116
    iget v4, v3, Lcn/bingoogolapple/badgeview/BGAExplosionAnimator$Particle;->cx:F

    iget v5, v3, Lcn/bingoogolapple/badgeview/BGAExplosionAnimator$Particle;->cy:F

    iget v3, v3, Lcn/bingoogolapple/badgeview/BGAExplosionAnimator$Particle;->radius:F

    iget-object v6, p0, Lcn/bingoogolapple/badgeview/BGAExplosionAnimator;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v3, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 119
    :cond_2
    invoke-direct {p0}, Lcn/bingoogolapple/badgeview/BGAExplosionAnimator;->postInvalidate()V

    return-void
.end method

.method public start()V
    .locals 0

    .line 124
    invoke-super {p0}, Landroid/animation/ValueAnimator;->start()V

    .line 125
    invoke-direct {p0}, Lcn/bingoogolapple/badgeview/BGAExplosionAnimator;->postInvalidate()V

    return-void
.end method
