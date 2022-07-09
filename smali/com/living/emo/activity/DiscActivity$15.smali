.class Lcom/living/emo/activity/DiscActivity$15;
.super Ljava/lang/Object;
.source "DiscActivity.java"

# interfaces
.implements Lcom/jaygoo/widget/OnRangeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/living/emo/activity/DiscActivity;->initEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/living/emo/activity/DiscActivity;


# direct methods
.method constructor <init>(Lcom/living/emo/activity/DiscActivity;)V
    .locals 0

    .line 607
    iput-object p1, p0, Lcom/living/emo/activity/DiscActivity$15;->this$0:Lcom/living/emo/activity/DiscActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRangeChanged(Lcom/jaygoo/widget/RangeSeekBar;FFZ)V
    .locals 0

    if-eqz p4, :cond_0

    .line 611
    invoke-virtual {p1}, Lcom/jaygoo/widget/RangeSeekBar;->getLeftSeekBar()Lcom/jaygoo/widget/SeekBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jaygoo/widget/SeekBar;->getProgress()F

    move-result p1

    .line 612
    iget-object p2, p0, Lcom/living/emo/activity/DiscActivity$15;->this$0:Lcom/living/emo/activity/DiscActivity;

    invoke-static {p2}, Lcom/living/emo/activity/DiscActivity;->access$400(Lcom/living/emo/activity/DiscActivity;)Lcom/living/emo/presenter/DiscControlPresenter;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/living/emo/presenter/DiscControlPresenter;->speed(F)V

    .line 613
    iget-object p2, p0, Lcom/living/emo/activity/DiscActivity$15;->this$0:Lcom/living/emo/activity/DiscActivity;

    invoke-static {p2}, Lcom/living/emo/activity/DiscActivity;->access$4200(Lcom/living/emo/activity/DiscActivity;)Landroid/widget/TextView;

    move-result-object p3

    invoke-static {p2, p1, p3}, Lcom/living/emo/activity/DiscActivity;->access$4300(Lcom/living/emo/activity/DiscActivity;FLandroid/widget/TextView;)V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Lcom/jaygoo/widget/RangeSeekBar;Z)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Lcom/jaygoo/widget/RangeSeekBar;Z)V
    .locals 0

    return-void
.end method
