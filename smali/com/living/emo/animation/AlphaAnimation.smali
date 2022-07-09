.class public Lcom/living/emo/animation/AlphaAnimation;
.super Ljava/lang/Object;
.source "AlphaAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/living/emo/animation/AlphaAnimation$AddUpdateListener;
    }
.end annotation


# instance fields
.field private final mAlpha:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(FFILcom/living/emo/animation/AlphaAnimation$AddUpdateListener;)V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    .line 10
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/living/emo/animation/AlphaAnimation;->mAlpha:Landroid/animation/ValueAnimator;

    int-to-long p2, p3

    .line 11
    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 12
    new-instance p2, Lcom/living/emo/animation/AlphaAnimation$1;

    invoke-direct {p2, p0, p4}, Lcom/living/emo/animation/AlphaAnimation$1;-><init>(Lcom/living/emo/animation/AlphaAnimation;Lcom/living/emo/animation/AlphaAnimation$AddUpdateListener;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method


# virtual methods
.method public start()V
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/living/emo/animation/AlphaAnimation;->mAlpha:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
