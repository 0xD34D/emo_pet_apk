.class public Lcom/living/emo/animation/ImageButtonAnimation;
.super Ljava/lang/Object;
.source "ImageButtonAnimation.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ImageButtonAnimation"


# instance fields
.field private mRepeatCount:I

.field private mRos:I

.field private mRotation:Landroid/animation/ObjectAnimator;

.field private maxDegree:F

.field private minDegree:F

.field private v:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/living/emo/animation/ImageButtonAnimation;->v:Landroid/view/View;

    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lcom/living/emo/animation/ImageButtonAnimation;->mRos:I

    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lcom/living/emo/animation/ImageButtonAnimation;->minDegree:F

    const/high16 v0, 0x43b40000    # 360.0f

    .line 20
    iput v0, p0, Lcom/living/emo/animation/ImageButtonAnimation;->maxDegree:F

    const/4 v0, -0x1

    .line 21
    iput v0, p0, Lcom/living/emo/animation/ImageButtonAnimation;->mRepeatCount:I

    return-void
.end method

.method static synthetic access$000(Lcom/living/emo/animation/ImageButtonAnimation;)I
    .locals 0

    .line 14
    iget p0, p0, Lcom/living/emo/animation/ImageButtonAnimation;->mRos:I

    return p0
.end method

.method static synthetic access$100(Lcom/living/emo/animation/ImageButtonAnimation;)F
    .locals 0

    .line 14
    iget p0, p0, Lcom/living/emo/animation/ImageButtonAnimation;->maxDegree:F

    return p0
.end method

.method static synthetic access$200(Lcom/living/emo/animation/ImageButtonAnimation;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/living/emo/animation/ImageButtonAnimation;->mRotation:Landroid/animation/ObjectAnimator;

    return-object p0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/living/emo/animation/ImageButtonAnimation;->mRotation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/living/emo/animation/ImageButtonAnimation;->mRotation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method public end()V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/living/emo/animation/ImageButtonAnimation;->mRotation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    return-void
.end method

.method public init()V
    .locals 4

    .line 45
    iget-object v0, p0, Lcom/living/emo/animation/ImageButtonAnimation;->v:Landroid/view/View;

    const/4 v1, 0x2

    new-array v1, v1, [F

    iget v2, p0, Lcom/living/emo/animation/ImageButtonAnimation;->minDegree:F

    const/4 v3, 0x0

    aput v2, v1, v3

    iget v2, p0, Lcom/living/emo/animation/ImageButtonAnimation;->maxDegree:F

    const/4 v3, 0x1

    aput v2, v1, v3

    const-string v2, "rotation"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/living/emo/animation/ImageButtonAnimation;->mRotation:Landroid/animation/ObjectAnimator;

    .line 46
    iget v1, p0, Lcom/living/emo/animation/ImageButtonAnimation;->mRepeatCount:I

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 47
    iget-object v0, p0, Lcom/living/emo/animation/ImageButtonAnimation;->mRotation:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 48
    iget-object v0, p0, Lcom/living/emo/animation/ImageButtonAnimation;->mRotation:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 49
    invoke-virtual {p0}, Lcom/living/emo/animation/ImageButtonAnimation;->onListener()V

    return-void
.end method

.method public onListener()V
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/living/emo/animation/ImageButtonAnimation;->mRotation:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/living/emo/animation/ImageButtonAnimation$1;

    invoke-direct {v1, p0}, Lcom/living/emo/animation/ImageButtonAnimation$1;-><init>(Lcom/living/emo/animation/ImageButtonAnimation;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public setMaxDegree(F)Lcom/living/emo/animation/ImageButtonAnimation;
    .locals 0

    .line 28
    iput p1, p0, Lcom/living/emo/animation/ImageButtonAnimation;->maxDegree:F

    return-object p0
.end method

.method public setMinDegree(F)Lcom/living/emo/animation/ImageButtonAnimation;
    .locals 0

    .line 23
    iput p1, p0, Lcom/living/emo/animation/ImageButtonAnimation;->minDegree:F

    return-object p0
.end method

.method public setRepeatCount(I)Lcom/living/emo/animation/ImageButtonAnimation;
    .locals 0

    .line 52
    iput p1, p0, Lcom/living/emo/animation/ImageButtonAnimation;->mRepeatCount:I

    return-object p0
.end method

.method public setRos(I)Lcom/living/emo/animation/ImageButtonAnimation;
    .locals 4

    .line 39
    iput p1, p0, Lcom/living/emo/animation/ImageButtonAnimation;->mRos:I

    .line 40
    iget-object v0, p0, Lcom/living/emo/animation/ImageButtonAnimation;->mRotation:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    int-to-float v2, p1

    const/4 v3, 0x0

    aput v2, v1, v3

    iget v2, p0, Lcom/living/emo/animation/ImageButtonAnimation;->maxDegree:F

    int-to-float p1, p1

    add-float/2addr v2, p1

    const/4 p1, 0x1

    aput v2, v1, p1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    return-object p0
.end method

.method public setValues()V
    .locals 4

    .line 68
    iget-object v0, p0, Lcom/living/emo/animation/ImageButtonAnimation;->mRotation:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    iget v2, p0, Lcom/living/emo/animation/ImageButtonAnimation;->minDegree:F

    const/4 v3, 0x0

    aput v2, v1, v3

    iget v2, p0, Lcom/living/emo/animation/ImageButtonAnimation;->maxDegree:F

    const/4 v3, 0x1

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    return-void
.end method

.method public setView(Landroid/view/View;)Lcom/living/emo/animation/ImageButtonAnimation;
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/living/emo/animation/ImageButtonAnimation;->v:Landroid/view/View;

    return-object p0
.end method

.method public start()V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/living/emo/animation/ImageButtonAnimation;->mRotation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/living/emo/animation/ImageButtonAnimation;->mRotation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_0
    return-void
.end method
