.class Lcom/living/emo/animation/AlphaAnimation$1;
.super Ljava/lang/Object;
.source "AlphaAnimation.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/living/emo/animation/AlphaAnimation;-><init>(FFILcom/living/emo/animation/AlphaAnimation$AddUpdateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/living/emo/animation/AlphaAnimation;

.field final synthetic val$addUpdateListener:Lcom/living/emo/animation/AlphaAnimation$AddUpdateListener;


# direct methods
.method constructor <init>(Lcom/living/emo/animation/AlphaAnimation;Lcom/living/emo/animation/AlphaAnimation$AddUpdateListener;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/living/emo/animation/AlphaAnimation$1;->this$0:Lcom/living/emo/animation/AlphaAnimation;

    iput-object p2, p0, Lcom/living/emo/animation/AlphaAnimation$1;->val$addUpdateListener:Lcom/living/emo/animation/AlphaAnimation$AddUpdateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 15
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 16
    iget-object v0, p0, Lcom/living/emo/animation/AlphaAnimation$1;->val$addUpdateListener:Lcom/living/emo/animation/AlphaAnimation$AddUpdateListener;

    invoke-interface {v0, p1}, Lcom/living/emo/animation/AlphaAnimation$AddUpdateListener;->onAddUpdateListener(F)V

    return-void
.end method
