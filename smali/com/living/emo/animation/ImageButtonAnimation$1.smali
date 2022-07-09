.class Lcom/living/emo/animation/ImageButtonAnimation$1;
.super Ljava/lang/Object;
.source "ImageButtonAnimation.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/living/emo/animation/ImageButtonAnimation;->onListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/living/emo/animation/ImageButtonAnimation;


# direct methods
.method constructor <init>(Lcom/living/emo/animation/ImageButtonAnimation;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/living/emo/animation/ImageButtonAnimation$1;->this$0:Lcom/living/emo/animation/ImageButtonAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 4

    .line 75
    iget-object p1, p0, Lcom/living/emo/animation/ImageButtonAnimation$1;->this$0:Lcom/living/emo/animation/ImageButtonAnimation;

    invoke-static {p1}, Lcom/living/emo/animation/ImageButtonAnimation;->access$000(Lcom/living/emo/animation/ImageButtonAnimation;)I

    move-result p1

    if-lez p1, :cond_0

    .line 76
    iget-object p1, p0, Lcom/living/emo/animation/ImageButtonAnimation$1;->this$0:Lcom/living/emo/animation/ImageButtonAnimation;

    invoke-static {p1}, Lcom/living/emo/animation/ImageButtonAnimation;->access$200(Lcom/living/emo/animation/ImageButtonAnimation;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/living/emo/animation/ImageButtonAnimation$1;->this$0:Lcom/living/emo/animation/ImageButtonAnimation;

    invoke-static {v2}, Lcom/living/emo/animation/ImageButtonAnimation;->access$000(Lcom/living/emo/animation/ImageButtonAnimation;)I

    move-result v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/living/emo/animation/ImageButtonAnimation$1;->this$0:Lcom/living/emo/animation/ImageButtonAnimation;

    invoke-static {v2}, Lcom/living/emo/animation/ImageButtonAnimation;->access$100(Lcom/living/emo/animation/ImageButtonAnimation;)F

    move-result v2

    iget-object v3, p0, Lcom/living/emo/animation/ImageButtonAnimation$1;->this$0:Lcom/living/emo/animation/ImageButtonAnimation;

    invoke-static {v3}, Lcom/living/emo/animation/ImageButtonAnimation;->access$000(Lcom/living/emo/animation/ImageButtonAnimation;)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    aput v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    const-string p1, "ImageButtonAnimation"

    const-string v0, "888888888"

    .line 77
    invoke-static {p1, v0}, Lcom/living/emo/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
