.class public final Lcom/opensource/svgaplayer/SVGAImageView$startAnimation$$inlined$let$lambda$2;
.super Ljava/lang/Object;
.source "SVGAImageView.kt"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/opensource/svgaplayer/SVGAImageView;->startAnimation(Lcom/opensource/svgaplayer/utils/SVGARange;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0008\u0004\n\u0002\u0008\u0004\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\u0006\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\u0007\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\u0008\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016\u00a8\u0006\t\u00b8\u0006\u0000"
    }
    d2 = {
        "com/opensource/svgaplayer/SVGAImageView$startAnimation$1$3",
        "Landroid/animation/Animator$AnimatorListener;",
        "onAnimationCancel",
        "",
        "animation",
        "Landroid/animation/Animator;",
        "onAnimationEnd",
        "onAnimationRepeat",
        "onAnimationStart",
        "library_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field final synthetic $drawable$inlined:Lcom/opensource/svgaplayer/SVGADrawable;

.field final synthetic $endFrame:I

.field final synthetic $range$inlined:Lcom/opensource/svgaplayer/utils/SVGARange;

.field final synthetic $reverse$inlined:Z

.field final synthetic $startFrame:I

.field final synthetic this$0:Lcom/opensource/svgaplayer/SVGAImageView;


# direct methods
.method constructor <init>(IILcom/opensource/svgaplayer/SVGAImageView;Lcom/opensource/svgaplayer/utils/SVGARange;Lcom/opensource/svgaplayer/SVGADrawable;Z)V
    .locals 0

    iput p1, p0, Lcom/opensource/svgaplayer/SVGAImageView$startAnimation$$inlined$let$lambda$2;->$startFrame:I

    iput p2, p0, Lcom/opensource/svgaplayer/SVGAImageView$startAnimation$$inlined$let$lambda$2;->$endFrame:I

    iput-object p3, p0, Lcom/opensource/svgaplayer/SVGAImageView$startAnimation$$inlined$let$lambda$2;->this$0:Lcom/opensource/svgaplayer/SVGAImageView;

    iput-object p4, p0, Lcom/opensource/svgaplayer/SVGAImageView$startAnimation$$inlined$let$lambda$2;->$range$inlined:Lcom/opensource/svgaplayer/utils/SVGARange;

    iput-object p5, p0, Lcom/opensource/svgaplayer/SVGAImageView$startAnimation$$inlined$let$lambda$2;->$drawable$inlined:Lcom/opensource/svgaplayer/SVGADrawable;

    iput-boolean p6, p0, Lcom/opensource/svgaplayer/SVGAImageView$startAnimation$$inlined$let$lambda$2;->$reverse$inlined:Z

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 183
    iget-object p1, p0, Lcom/opensource/svgaplayer/SVGAImageView$startAnimation$$inlined$let$lambda$2;->this$0:Lcom/opensource/svgaplayer/SVGAImageView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/opensource/svgaplayer/SVGAImageView;->access$setAnimating$p(Lcom/opensource/svgaplayer/SVGAImageView;Z)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 170
    iget-object p1, p0, Lcom/opensource/svgaplayer/SVGAImageView$startAnimation$$inlined$let$lambda$2;->this$0:Lcom/opensource/svgaplayer/SVGAImageView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/opensource/svgaplayer/SVGAImageView;->access$setAnimating$p(Lcom/opensource/svgaplayer/SVGAImageView;Z)V

    .line 171
    iget-object p1, p0, Lcom/opensource/svgaplayer/SVGAImageView$startAnimation$$inlined$let$lambda$2;->this$0:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {p1}, Lcom/opensource/svgaplayer/SVGAImageView;->stopAnimation()V

    .line 172
    iget-object p1, p0, Lcom/opensource/svgaplayer/SVGAImageView$startAnimation$$inlined$let$lambda$2;->this$0:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {p1}, Lcom/opensource/svgaplayer/SVGAImageView;->getClearsAfterStop()Z

    move-result p1

    if-nez p1, :cond_1

    .line 173
    iget-object p1, p0, Lcom/opensource/svgaplayer/SVGAImageView$startAnimation$$inlined$let$lambda$2;->this$0:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {p1}, Lcom/opensource/svgaplayer/SVGAImageView;->getFillMode()Lcom/opensource/svgaplayer/SVGAImageView$FillMode;

    move-result-object p1

    sget-object v0, Lcom/opensource/svgaplayer/SVGAImageView$FillMode;->Backward:Lcom/opensource/svgaplayer/SVGAImageView$FillMode;

    if-ne p1, v0, :cond_0

    .line 174
    iget-object p1, p0, Lcom/opensource/svgaplayer/SVGAImageView$startAnimation$$inlined$let$lambda$2;->$drawable$inlined:Lcom/opensource/svgaplayer/SVGADrawable;

    iget v0, p0, Lcom/opensource/svgaplayer/SVGAImageView$startAnimation$$inlined$let$lambda$2;->$startFrame:I

    invoke-virtual {p1, v0}, Lcom/opensource/svgaplayer/SVGADrawable;->setCurrentFrame$library_release(I)V

    goto :goto_0

    .line 176
    :cond_0
    iget-object p1, p0, Lcom/opensource/svgaplayer/SVGAImageView$startAnimation$$inlined$let$lambda$2;->this$0:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {p1}, Lcom/opensource/svgaplayer/SVGAImageView;->getFillMode()Lcom/opensource/svgaplayer/SVGAImageView$FillMode;

    move-result-object p1

    sget-object v0, Lcom/opensource/svgaplayer/SVGAImageView$FillMode;->Forward:Lcom/opensource/svgaplayer/SVGAImageView$FillMode;

    if-ne p1, v0, :cond_1

    .line 177
    iget-object p1, p0, Lcom/opensource/svgaplayer/SVGAImageView$startAnimation$$inlined$let$lambda$2;->$drawable$inlined:Lcom/opensource/svgaplayer/SVGADrawable;

    iget v0, p0, Lcom/opensource/svgaplayer/SVGAImageView$startAnimation$$inlined$let$lambda$2;->$endFrame:I

    invoke-virtual {p1, v0}, Lcom/opensource/svgaplayer/SVGADrawable;->setCurrentFrame$library_release(I)V

    .line 180
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/opensource/svgaplayer/SVGAImageView$startAnimation$$inlined$let$lambda$2;->this$0:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {p1}, Lcom/opensource/svgaplayer/SVGAImageView;->getCallback()Lcom/opensource/svgaplayer/SVGACallback;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/opensource/svgaplayer/SVGACallback;->onFinished()V

    :cond_2
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .line 167
    iget-object p1, p0, Lcom/opensource/svgaplayer/SVGAImageView$startAnimation$$inlined$let$lambda$2;->this$0:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {p1}, Lcom/opensource/svgaplayer/SVGAImageView;->getCallback()Lcom/opensource/svgaplayer/SVGACallback;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/opensource/svgaplayer/SVGACallback;->onRepeat()V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 186
    iget-object p1, p0, Lcom/opensource/svgaplayer/SVGAImageView$startAnimation$$inlined$let$lambda$2;->this$0:Lcom/opensource/svgaplayer/SVGAImageView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/opensource/svgaplayer/SVGAImageView;->access$setAnimating$p(Lcom/opensource/svgaplayer/SVGAImageView;Z)V

    return-void
.end method
