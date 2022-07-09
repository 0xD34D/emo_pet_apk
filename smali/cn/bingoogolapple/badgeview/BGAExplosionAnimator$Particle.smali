.class Lcn/bingoogolapple/badgeview/BGAExplosionAnimator$Particle;
.super Ljava/lang/Object;
.source "BGAExplosionAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/bingoogolapple/badgeview/BGAExplosionAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Particle"
.end annotation


# instance fields
.field alpha:F

.field baseCx:F

.field baseCy:F

.field baseRadius:F

.field bottom:F

.field color:I

.field cx:F

.field cy:F

.field life:F

.field mag:F

.field neg:F

.field overflow:F

.field radius:F

.field final synthetic this$0:Lcn/bingoogolapple/badgeview/BGAExplosionAnimator;

.field top:F


# direct methods
.method private constructor <init>(Lcn/bingoogolapple/badgeview/BGAExplosionAnimator;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcn/bingoogolapple/badgeview/BGAExplosionAnimator$Particle;->this$0:Lcn/bingoogolapple/badgeview/BGAExplosionAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/bingoogolapple/badgeview/BGAExplosionAnimator;Lcn/bingoogolapple/badgeview/BGAExplosionAnimator$1;)V
    .locals 0

    .line 135
    invoke-direct {p0, p1}, Lcn/bingoogolapple/badgeview/BGAExplosionAnimator$Particle;-><init>(Lcn/bingoogolapple/badgeview/BGAExplosionAnimator;)V

    return-void
.end method


# virtual methods
.method public advance(F)V
    .locals 9

    const v0, 0x3fb33333    # 1.4f

    div-float/2addr p1, v0

    .line 154
    iget v1, p0, Lcn/bingoogolapple/badgeview/BGAExplosionAnimator$Particle;->life:F

    cmpg-float v2, p1, v1

    const/4 v3, 0x0

    if-ltz v2, :cond_2

    iget v2, p0, Lcn/bingoogolapple/badgeview/BGAExplosionAnimator$Particle;->overflow:F

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v5, v4, v2

    cmpl-float v5, p1, v5

    if-lez v5, :cond_0

    goto :goto_0

    :cond_0
    sub-float/2addr p1, v1

    sub-float v1, v4, v1

    sub-float/2addr v1, v2

    div-float/2addr p1, v1

    mul-float/2addr v0, p1

    const v1, 0x3f333333    # 0.7f

    cmpl-float v2, p1, v1

    if-ltz v2, :cond_1

    sub-float/2addr p1, v1

    const v1, 0x3e99999a    # 0.3f

    div-float v3, p1, v1

    :cond_1
    sub-float/2addr v4, v3

    .line 163
    iput v4, p0, Lcn/bingoogolapple/badgeview/BGAExplosionAnimator$Particle;->alpha:F

    .line 164
    iget p1, p0, Lcn/bingoogolapple/badgeview/BGAExplosionAnimator$Particle;->bottom:F

    mul-float/2addr p1, v0

    .line 165
    iget v1, p0, Lcn/bingoogolapple/badgeview/BGAExplosionAnimator$Particle;->baseCx:F

    add-float/2addr v1, p1

    iput v1, p0, Lcn/bingoogolapple/badgeview/BGAExplosionAnimator$Particle;->cx:F

    .line 166
    iget v1, p0, Lcn/bingoogolapple/badgeview/BGAExplosionAnimator$Particle;->baseCy:F

    float-to-double v1, v1

    iget v3, p0, Lcn/bingoogolapple/badgeview/BGAExplosionAnimator$Particle;->neg:F

    float-to-double v3, v3

    float-to-double v5, p1

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    mul-double/2addr v3, v5

    sub-double/2addr v1, v3

    double-to-float v1, v1

    iget v2, p0, Lcn/bingoogolapple/badgeview/BGAExplosionAnimator$Particle;->mag:F

    mul-float/2addr p1, v2

    sub-float/2addr v1, p1

    iput v1, p0, Lcn/bingoogolapple/badgeview/BGAExplosionAnimator$Particle;->cy:F

    .line 167
    invoke-static {}, Lcn/bingoogolapple/badgeview/BGAExplosionAnimator;->access$100()F

    move-result p1

    iget v1, p0, Lcn/bingoogolapple/badgeview/BGAExplosionAnimator$Particle;->baseRadius:F

    invoke-static {}, Lcn/bingoogolapple/badgeview/BGAExplosionAnimator;->access$100()F

    move-result v2

    sub-float/2addr v1, v2

    mul-float/2addr v1, v0

    add-float/2addr p1, v1

    iput p1, p0, Lcn/bingoogolapple/badgeview/BGAExplosionAnimator$Particle;->radius:F

    return-void

    .line 155
    :cond_2
    :goto_0
    iput v3, p0, Lcn/bingoogolapple/badgeview/BGAExplosionAnimator$Particle;->alpha:F

    return-void
.end method
