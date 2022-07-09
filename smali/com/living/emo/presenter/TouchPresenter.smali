.class public Lcom/living/emo/presenter/TouchPresenter;
.super Ljava/lang/Object;
.source "TouchPresenter.java"

# interfaces
.implements Lcom/living/emo/interfaces/ITouchListenerPresenter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/living/emo/presenter/TouchPresenter$TouchListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.living.emo.presenter.TouchPresenter"


# instance fields
.field private count:I

.field protected lastX:I

.field protected lastY:I

.field private mAmount:Z

.field private mAngle:F

.field private mCenX:I

.field private mCenY:I

.field private mLess:Z

.field private mMore:Z

.field private mTouchListener:Lcom/living/emo/presenter/TouchPresenter$TouchListener;

.field private oriRotation:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lcom/living/emo/presenter/TouchPresenter;->oriRotation:F

    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lcom/living/emo/presenter/TouchPresenter;->count:I

    .line 23
    iput-boolean v0, p0, Lcom/living/emo/presenter/TouchPresenter;->mMore:Z

    .line 24
    iput-boolean v0, p0, Lcom/living/emo/presenter/TouchPresenter;->mLess:Z

    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Lcom/living/emo/presenter/TouchPresenter;->mAmount:Z

    const/4 v0, 0x0

    .line 135
    iput-object v0, p0, Lcom/living/emo/presenter/TouchPresenter;->mTouchListener:Lcom/living/emo/presenter/TouchPresenter$TouchListener;

    return-void
.end method


# virtual methods
.method public angle(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)F
    .locals 9

    .line 101
    sget-object v0, Lcom/living/emo/presenter/TouchPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "---cen-----:x:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/graphics/Point;->x:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "-----y"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/living/emo/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "---first-----:x:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Landroid/graphics/Point;->x:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "---second-----:x:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p3, Landroid/graphics/Point;->x:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p3, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/living/emo/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget v1, p2, Landroid/graphics/Point;->x:I

    iget v2, p1, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 105
    iget v2, p2, Landroid/graphics/Point;->y:I

    iget v3, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 106
    iget v3, p3, Landroid/graphics/Point;->x:I

    iget v4, p1, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    .line 107
    iget v4, p3, Landroid/graphics/Point;->y:I

    iget v5, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    .line 110
    iget v5, p3, Landroid/graphics/Point;->x:I

    iget v6, p2, Landroid/graphics/Point;->x:I

    sub-int/2addr v5, v6

    iget v6, p3, Landroid/graphics/Point;->x:I

    iget v7, p2, Landroid/graphics/Point;->x:I

    sub-int/2addr v6, v7

    mul-int/2addr v5, v6

    iget v6, p3, Landroid/graphics/Point;->y:I

    iget v7, p2, Landroid/graphics/Point;->y:I

    sub-int/2addr v6, v7

    iget v7, p3, Landroid/graphics/Point;->y:I

    iget v8, p2, Landroid/graphics/Point;->y:I

    sub-int/2addr v7, v8

    mul-int/2addr v6, v7

    add-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v1, v1

    mul-float/2addr v2, v2

    add-float/2addr v1, v2

    mul-float/2addr v3, v3

    mul-float/2addr v4, v4

    add-float/2addr v3, v4

    .line 115
    iget v2, p2, Landroid/graphics/Point;->x:I

    iget v4, p1, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v4

    iget v4, p3, Landroid/graphics/Point;->y:I

    iget v6, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, v6

    mul-int/2addr v2, v4

    iget p2, p2, Landroid/graphics/Point;->y:I

    iget v4, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr p2, v4

    iget p3, p3, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->x:I

    sub-int/2addr p3, p1

    mul-int/2addr p2, p3

    sub-int/2addr v2, p2

    if-lez v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    add-float p2, v1, v3

    sub-float/2addr p2, v5

    float-to-double p2, p2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    float-to-double v1, v1

    .line 118
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    mul-double/2addr v1, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    mul-double/2addr v1, v3

    div-double/2addr p2, v1

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, "----22222222"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/living/emo/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    cmpl-double v3, p2, v1

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    if-lez v3, :cond_1

    move-wide p2, v1

    goto :goto_1

    :cond_1
    cmpg-double v1, p2, v4

    if-gez v1, :cond_2

    move-wide p2, v4

    .line 127
    :cond_2
    :goto_1
    invoke-static {p2, p3}, Ljava/lang/Math;->acos(D)D

    move-result-wide p2

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "----radian----"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, "=---Math.toDegrees(radian)------"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2, p3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/living/emo/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_3

    .line 130
    invoke-static {p2, p3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p1

    goto :goto_2

    :cond_3
    invoke-static {p2, p3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p1

    neg-double p1, p1

    :goto_2
    double-to-float p1, p1

    return p1
.end method

.method public delDrag(Landroid/view/View;Landroid/view/MotionEvent;I)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p3, v1, :cond_5

    const/4 v2, 0x2

    if-eq p3, v2, :cond_0

    const/4 p1, 0x6

    if-eq p3, p1, :cond_5

    goto/16 :goto_0

    .line 52
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 53
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 54
    new-instance p3, Landroid/graphics/Point;

    iget v2, p0, Lcom/living/emo/presenter/TouchPresenter;->mCenX:I

    iget v3, p0, Lcom/living/emo/presenter/TouchPresenter;->mCenY:I

    invoke-direct {p3, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 55
    new-instance v2, Landroid/graphics/Point;

    iget v3, p0, Lcom/living/emo/presenter/TouchPresenter;->lastX:I

    iget v4, p0, Lcom/living/emo/presenter/TouchPresenter;->lastY:I

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 56
    new-instance v3, Landroid/graphics/Point;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    float-to-int v5, v5

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 57
    iget v4, p0, Lcom/living/emo/presenter/TouchPresenter;->oriRotation:F

    invoke-virtual {p0, p3, v2, v3}, Lcom/living/emo/presenter/TouchPresenter;->angle(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)F

    move-result v3

    add-float/2addr v4, v3

    iput v4, p0, Lcom/living/emo/presenter/TouchPresenter;->oriRotation:F

    .line 58
    invoke-virtual {p1, v4}, Landroid/view/View;->setRotation(F)V

    .line 59
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/living/emo/presenter/TouchPresenter;->lastX:I

    .line 60
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/living/emo/presenter/TouchPresenter;->lastY:I

    .line 62
    new-instance p1, Landroid/graphics/Point;

    iget p2, p0, Lcom/living/emo/presenter/TouchPresenter;->lastX:I

    iget v3, p0, Lcom/living/emo/presenter/TouchPresenter;->mCenY:I

    invoke-direct {p1, p2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p0, p3, v2, p1}, Lcom/living/emo/presenter/TouchPresenter;->angle(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)F

    move-result p1

    .line 63
    sget-object p2, Lcom/living/emo/presenter/TouchPresenter;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "------secsec-------="

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/living/emo/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget p3, p0, Lcom/living/emo/presenter/TouchPresenter;->mAngle:F

    sub-float/2addr p1, p3

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 p3, 0x41a00000    # 20.0f

    cmpl-float p1, p1, p3

    if-lez p1, :cond_1

    .line 66
    iput-boolean v1, p0, Lcom/living/emo/presenter/TouchPresenter;->mMore:Z

    .line 68
    :cond_1
    iget p1, p0, Lcom/living/emo/presenter/TouchPresenter;->count:I

    const/4 p3, 0x3

    if-le p1, p3, :cond_2

    .line 69
    iput-boolean v1, p0, Lcom/living/emo/presenter/TouchPresenter;->mLess:Z

    .line 71
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "------sec------"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/living/emo/presenter/TouchPresenter;->mMore:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, "------mangle-----"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/living/emo/presenter/TouchPresenter;->mLess:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, "equlll"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/living/emo/presenter/TouchPresenter;->mAmount:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/living/emo/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-boolean p1, p0, Lcom/living/emo/presenter/TouchPresenter;->mMore:Z

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/living/emo/presenter/TouchPresenter;->mLess:Z

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/living/emo/presenter/TouchPresenter;->mAmount:Z

    if-eqz p1, :cond_4

    .line 73
    iget-object p1, p0, Lcom/living/emo/presenter/TouchPresenter;->mTouchListener:Lcom/living/emo/presenter/TouchPresenter$TouchListener;

    if-eqz p1, :cond_3

    .line 74
    invoke-interface {p1}, Lcom/living/emo/presenter/TouchPresenter$TouchListener;->onPlaySound()V

    .line 75
    iput-boolean v0, p0, Lcom/living/emo/presenter/TouchPresenter;->mAmount:Z

    :cond_3
    const-string p1, "\u64ad\u653e\u6bb5\u97f3\u6548"

    .line 77
    invoke-static {p2, p1}, Lcom/living/emo/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :cond_4
    iget p1, p0, Lcom/living/emo/presenter/TouchPresenter;->count:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/living/emo/presenter/TouchPresenter;->count:I

    goto :goto_0

    .line 83
    :cond_5
    iput v0, p0, Lcom/living/emo/presenter/TouchPresenter;->count:I

    .line 84
    iput-boolean v0, p0, Lcom/living/emo/presenter/TouchPresenter;->mMore:Z

    .line 85
    iput-boolean v0, p0, Lcom/living/emo/presenter/TouchPresenter;->mLess:Z

    .line 86
    iput-boolean v1, p0, Lcom/living/emo/presenter/TouchPresenter;->mAmount:Z

    .line 87
    iget-object p1, p0, Lcom/living/emo/presenter/TouchPresenter;->mTouchListener:Lcom/living/emo/presenter/TouchPresenter$TouchListener;

    if-eqz p1, :cond_6

    .line 88
    sget-object p1, Lcom/living/emo/presenter/TouchPresenter;->TAG:Ljava/lang/String;

    const-string p2, "--------onTouchUpAcion-----------"

    invoke-static {p1, p2}, Lcom/living/emo/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object p1, p0, Lcom/living/emo/presenter/TouchPresenter;->mTouchListener:Lcom/living/emo/presenter/TouchPresenter$TouchListener;

    invoke-interface {p1}, Lcom/living/emo/presenter/TouchPresenter$TouchListener;->onTouchUpAcion()V

    :cond_6
    :goto_0
    return-void
.end method

.method public onTouch(Landroid/widget/ImageView;Landroid/view/MotionEvent;)V
    .locals 6

    .line 29
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-nez v0, :cond_1

    .line 31
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/living/emo/presenter/TouchPresenter;->lastY:I

    .line 32
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/living/emo/presenter/TouchPresenter;->lastX:I

    .line 33
    invoke-virtual {p1}, Landroid/widget/ImageView;->getRotation()F

    move-result v1

    iput v1, p0, Lcom/living/emo/presenter/TouchPresenter;->oriRotation:F

    .line 34
    iget-object v1, p0, Lcom/living/emo/presenter/TouchPresenter;->mTouchListener:Lcom/living/emo/presenter/TouchPresenter$TouchListener;

    if-eqz v1, :cond_0

    .line 35
    sget-object v1, Lcom/living/emo/presenter/TouchPresenter;->TAG:Ljava/lang/String;

    const-string v2, "--------onTouchDownAcion-----------"

    invoke-static {v1, v2}, Lcom/living/emo/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    iget-object v1, p0, Lcom/living/emo/presenter/TouchPresenter;->mTouchListener:Lcom/living/emo/presenter/TouchPresenter$TouchListener;

    invoke-interface {v1}, Lcom/living/emo/presenter/TouchPresenter$TouchListener;->onTouchDownAcion()V

    .line 39
    :cond_0
    new-instance v1, Landroid/graphics/Point;

    iget v2, p0, Lcom/living/emo/presenter/TouchPresenter;->mCenX:I

    iget v3, p0, Lcom/living/emo/presenter/TouchPresenter;->mCenY:I

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 40
    new-instance v2, Landroid/graphics/Point;

    iget v3, p0, Lcom/living/emo/presenter/TouchPresenter;->lastX:I

    iget v4, p0, Lcom/living/emo/presenter/TouchPresenter;->lastY:I

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 41
    new-instance v3, Landroid/graphics/Point;

    iget v4, p0, Lcom/living/emo/presenter/TouchPresenter;->lastX:I

    iget v5, p0, Lcom/living/emo/presenter/TouchPresenter;->mCenY:I

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 42
    invoke-virtual {p0, v1, v2, v3}, Lcom/living/emo/presenter/TouchPresenter;->angle(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)F

    move-result v1

    iput v1, p0, Lcom/living/emo/presenter/TouchPresenter;->mAngle:F

    .line 43
    sget-object v1, Lcom/living/emo/presenter/TouchPresenter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "----------mAngle-------="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/living/emo/presenter/TouchPresenter;->mAngle:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/living/emo/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    :cond_1
    invoke-virtual {p0, p1, p2, v0}, Lcom/living/emo/presenter/TouchPresenter;->delDrag(Landroid/view/View;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method public setCenterPoint(II)V
    .locals 1

    .line 144
    iget v0, p0, Lcom/living/emo/presenter/TouchPresenter;->mCenX:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/living/emo/presenter/TouchPresenter;->mCenY:I

    if-nez v0, :cond_0

    .line 145
    iput p1, p0, Lcom/living/emo/presenter/TouchPresenter;->mCenX:I

    .line 146
    iput p2, p0, Lcom/living/emo/presenter/TouchPresenter;->mCenY:I

    :cond_0
    return-void
.end method

.method public setTouchListener(Lcom/living/emo/presenter/TouchPresenter$TouchListener;)V
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/living/emo/presenter/TouchPresenter;->mTouchListener:Lcom/living/emo/presenter/TouchPresenter$TouchListener;

    if-nez v0, :cond_0

    .line 139
    iput-object p1, p0, Lcom/living/emo/presenter/TouchPresenter;->mTouchListener:Lcom/living/emo/presenter/TouchPresenter$TouchListener;

    :cond_0
    return-void
.end method
