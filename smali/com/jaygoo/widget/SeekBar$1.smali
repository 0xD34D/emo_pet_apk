.class Lcom/jaygoo/widget/SeekBar$1;
.super Ljava/lang/Object;
.source "SeekBar.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaygoo/widget/SeekBar;->materialRestore()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaygoo/widget/SeekBar;


# direct methods
.method constructor <init>(Lcom/jaygoo/widget/SeekBar;)V
    .locals 0

    .line 397
    iput-object p1, p0, Lcom/jaygoo/widget/SeekBar$1;->this$0:Lcom/jaygoo/widget/SeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 400
    iget-object v0, p0, Lcom/jaygoo/widget/SeekBar$1;->this$0:Lcom/jaygoo/widget/SeekBar;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, v0, Lcom/jaygoo/widget/SeekBar;->material:F

    .line 401
    iget-object p1, p0, Lcom/jaygoo/widget/SeekBar$1;->this$0:Lcom/jaygoo/widget/SeekBar;

    iget-object p1, p1, Lcom/jaygoo/widget/SeekBar;->rangeSeekBar:Lcom/jaygoo/widget/RangeSeekBar;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/jaygoo/widget/SeekBar$1;->this$0:Lcom/jaygoo/widget/SeekBar;

    iget-object p1, p1, Lcom/jaygoo/widget/SeekBar;->rangeSeekBar:Lcom/jaygoo/widget/RangeSeekBar;

    invoke-virtual {p1}, Lcom/jaygoo/widget/RangeSeekBar;->invalidate()V

    :cond_0
    return-void
.end method
