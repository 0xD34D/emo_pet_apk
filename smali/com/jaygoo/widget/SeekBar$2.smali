.class Lcom/jaygoo/widget/SeekBar$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SeekBar.java"


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

    .line 404
    iput-object p1, p0, Lcom/jaygoo/widget/SeekBar$2;->this$0:Lcom/jaygoo/widget/SeekBar;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 407
    iget-object p1, p0, Lcom/jaygoo/widget/SeekBar$2;->this$0:Lcom/jaygoo/widget/SeekBar;

    const/4 v0, 0x0

    iput v0, p1, Lcom/jaygoo/widget/SeekBar;->material:F

    .line 408
    iget-object p1, p0, Lcom/jaygoo/widget/SeekBar$2;->this$0:Lcom/jaygoo/widget/SeekBar;

    iget-object p1, p1, Lcom/jaygoo/widget/SeekBar;->rangeSeekBar:Lcom/jaygoo/widget/RangeSeekBar;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/jaygoo/widget/SeekBar$2;->this$0:Lcom/jaygoo/widget/SeekBar;

    iget-object p1, p1, Lcom/jaygoo/widget/SeekBar;->rangeSeekBar:Lcom/jaygoo/widget/RangeSeekBar;

    invoke-virtual {p1}, Lcom/jaygoo/widget/RangeSeekBar;->invalidate()V

    :cond_0
    return-void
.end method
