.class Lcom/living/emo/activity/DiscActivity$14;
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

    .line 576
    iput-object p1, p0, Lcom/living/emo/activity/DiscActivity$14;->this$0:Lcom/living/emo/activity/DiscActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRangeChanged(Lcom/jaygoo/widget/RangeSeekBar;FFZ)V
    .locals 0

    if-eqz p4, :cond_3

    .line 580
    invoke-virtual {p1}, Lcom/jaygoo/widget/RangeSeekBar;->getLeftSeekBar()Lcom/jaygoo/widget/SeekBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jaygoo/widget/SeekBar;->getProgress()F

    move-result p1

    .line 581
    iget-object p2, p0, Lcom/living/emo/activity/DiscActivity$14;->this$0:Lcom/living/emo/activity/DiscActivity;

    invoke-static {p2}, Lcom/living/emo/activity/DiscActivity;->access$400(Lcom/living/emo/activity/DiscActivity;)Lcom/living/emo/presenter/DiscControlPresenter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/living/emo/presenter/DiscControlPresenter;->isPlaying()Z

    move-result p2

    const/high16 p3, 0x3f800000    # 1.0f

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/living/emo/activity/DiscActivity$14;->this$0:Lcom/living/emo/activity/DiscActivity;

    invoke-static {p2}, Lcom/living/emo/activity/DiscActivity;->access$1600(Lcom/living/emo/activity/DiscActivity;)Lcom/living/emo/presenter/DiscControlPresenter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/living/emo/presenter/DiscControlPresenter;->isPlaying()Z

    move-result p2

    if-eqz p2, :cond_1

    sub-float p2, p3, p1

    cmpl-float p4, p1, p2

    if-lez p4, :cond_0

    .line 583
    iget-object p2, p0, Lcom/living/emo/activity/DiscActivity$14;->this$0:Lcom/living/emo/activity/DiscActivity;

    invoke-static {p2}, Lcom/living/emo/activity/DiscActivity;->access$2700(Lcom/living/emo/activity/DiscActivity;)Lcom/living/emo/presenter/SoundsPresenter;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/living/emo/presenter/SoundsPresenter;->setVolume(F)V

    goto :goto_0

    .line 585
    :cond_0
    iget-object p4, p0, Lcom/living/emo/activity/DiscActivity$14;->this$0:Lcom/living/emo/activity/DiscActivity;

    invoke-static {p4}, Lcom/living/emo/activity/DiscActivity;->access$2700(Lcom/living/emo/activity/DiscActivity;)Lcom/living/emo/presenter/SoundsPresenter;

    move-result-object p4

    invoke-virtual {p4, p2}, Lcom/living/emo/presenter/SoundsPresenter;->setVolume(F)V

    goto :goto_0

    .line 587
    :cond_1
    iget-object p2, p0, Lcom/living/emo/activity/DiscActivity$14;->this$0:Lcom/living/emo/activity/DiscActivity;

    invoke-static {p2}, Lcom/living/emo/activity/DiscActivity;->access$400(Lcom/living/emo/activity/DiscActivity;)Lcom/living/emo/presenter/DiscControlPresenter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/living/emo/presenter/DiscControlPresenter;->isPlaying()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 588
    iget-object p2, p0, Lcom/living/emo/activity/DiscActivity$14;->this$0:Lcom/living/emo/activity/DiscActivity;

    invoke-static {p2}, Lcom/living/emo/activity/DiscActivity;->access$2700(Lcom/living/emo/activity/DiscActivity;)Lcom/living/emo/presenter/SoundsPresenter;

    move-result-object p2

    iget-object p4, p0, Lcom/living/emo/activity/DiscActivity$14;->this$0:Lcom/living/emo/activity/DiscActivity;

    invoke-static {p4}, Lcom/living/emo/activity/DiscActivity;->access$400(Lcom/living/emo/activity/DiscActivity;)Lcom/living/emo/presenter/DiscControlPresenter;

    move-result-object p4

    invoke-virtual {p4}, Lcom/living/emo/presenter/DiscControlPresenter;->getVolume()F

    move-result p4

    invoke-virtual {p2, p4}, Lcom/living/emo/presenter/SoundsPresenter;->setVolume(F)V

    goto :goto_0

    .line 590
    :cond_2
    iget-object p2, p0, Lcom/living/emo/activity/DiscActivity$14;->this$0:Lcom/living/emo/activity/DiscActivity;

    invoke-static {p2}, Lcom/living/emo/activity/DiscActivity;->access$2700(Lcom/living/emo/activity/DiscActivity;)Lcom/living/emo/presenter/SoundsPresenter;

    move-result-object p2

    iget-object p4, p0, Lcom/living/emo/activity/DiscActivity$14;->this$0:Lcom/living/emo/activity/DiscActivity;

    invoke-static {p4}, Lcom/living/emo/activity/DiscActivity;->access$1600(Lcom/living/emo/activity/DiscActivity;)Lcom/living/emo/presenter/DiscControlPresenter;

    move-result-object p4

    invoke-virtual {p4}, Lcom/living/emo/presenter/DiscControlPresenter;->getVolume()F

    move-result p4

    invoke-virtual {p2, p4}, Lcom/living/emo/presenter/SoundsPresenter;->setVolume(F)V

    .line 592
    :goto_0
    iget-object p2, p0, Lcom/living/emo/activity/DiscActivity$14;->this$0:Lcom/living/emo/activity/DiscActivity;

    invoke-static {p2}, Lcom/living/emo/activity/DiscActivity;->access$400(Lcom/living/emo/activity/DiscActivity;)Lcom/living/emo/presenter/DiscControlPresenter;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/living/emo/presenter/DiscControlPresenter;->setVolume(F)V

    .line 593
    iget-object p2, p0, Lcom/living/emo/activity/DiscActivity$14;->this$0:Lcom/living/emo/activity/DiscActivity;

    invoke-static {p2}, Lcom/living/emo/activity/DiscActivity;->access$1600(Lcom/living/emo/activity/DiscActivity;)Lcom/living/emo/presenter/DiscControlPresenter;

    move-result-object p2

    sub-float/2addr p3, p1

    invoke-virtual {p2, p3}, Lcom/living/emo/presenter/DiscControlPresenter;->setVolume(F)V

    :cond_3
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
