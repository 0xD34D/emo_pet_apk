.class public Lcom/living/emo/animation/SearchAnimation;
.super Ljava/lang/Object;
.source "SearchAnimation.java"


# instance fields
.field private animation:Landroid/view/animation/RotateAnimation;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public searchAnim(Landroid/view/View;)V
    .locals 8

    .line 14
    new-instance v7, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, -0x3c4c0000    # -360.0f

    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v7, p0, Lcom/living/emo/animation/SearchAnimation;->animation:Landroid/view/animation/RotateAnimation;

    const-wide/16 v0, 0x7d0

    .line 15
    invoke-virtual {v7, v0, v1}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 16
    iget-object v0, p0, Lcom/living/emo/animation/SearchAnimation;->animation:Landroid/view/animation/RotateAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 17
    iget-object v0, p0, Lcom/living/emo/animation/SearchAnimation;->animation:Landroid/view/animation/RotateAnimation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    .line 18
    iget-object v0, p0, Lcom/living/emo/animation/SearchAnimation;->animation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public stop(Landroid/view/View;)V
    .locals 0

    .line 22
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    return-void
.end method
