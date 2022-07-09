.class Lcom/living/emo/fragment/VolumeFragment$1;
.super Ljava/lang/Object;
.source "VolumeFragment.java"

# interfaces
.implements Lcom/jaygoo/widget/OnRangeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/living/emo/fragment/VolumeFragment;->initEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/living/emo/fragment/VolumeFragment;


# direct methods
.method constructor <init>(Lcom/living/emo/fragment/VolumeFragment;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/living/emo/fragment/VolumeFragment$1;->this$0:Lcom/living/emo/fragment/VolumeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRangeChanged(Lcom/jaygoo/widget/RangeSeekBar;FFZ)V
    .locals 1

    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    .line 29
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    const/4 v0, 0x0

    aput-object p4, p1, v0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const/4 p4, 0x1

    aput-object p2, p1, p4

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const/4 p3, 0x2

    aput-object p2, p1, p3

    const-string p2, "onRangeChanged: isFromUser: %b ,leftValue : %f ,rightValue: %f"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "TAG"

    invoke-static {p2, p1}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStartTrackingTouch(Lcom/jaygoo/widget/RangeSeekBar;Z)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Lcom/jaygoo/widget/RangeSeekBar;Z)V
    .locals 2

    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-object v0, p0, Lcom/living/emo/fragment/VolumeFragment$1;->this$0:Lcom/living/emo/fragment/VolumeFragment;

    iget-wide v0, v0, Lcom/living/emo/fragment/VolumeFragment;->currtime:J

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x7d0

    cmp-long p1, p1, v0

    if-lez p1, :cond_0

    .line 40
    iget-object p1, p0, Lcom/living/emo/fragment/VolumeFragment$1;->this$0:Lcom/living/emo/fragment/VolumeFragment;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/living/emo/fragment/VolumeFragment;->currtime:J

    .line 41
    iget-object p1, p0, Lcom/living/emo/fragment/VolumeFragment$1;->this$0:Lcom/living/emo/fragment/VolumeFragment;

    iget-object p2, p1, Lcom/living/emo/fragment/VolumeFragment;->mVolume:Lcom/jaygoo/widget/RangeSeekBar;

    invoke-virtual {p2}, Lcom/jaygoo/widget/RangeSeekBar;->getLeftSeekBar()Lcom/jaygoo/widget/SeekBar;

    move-result-object p2

    invoke-virtual {p2}, Lcom/jaygoo/widget/SeekBar;->getProgress()F

    move-result p2

    iput p2, p1, Lcom/living/emo/fragment/VolumeFragment;->currgress:F

    goto :goto_0

    .line 44
    :cond_0
    iget-object p1, p0, Lcom/living/emo/fragment/VolumeFragment$1;->this$0:Lcom/living/emo/fragment/VolumeFragment;

    iget-object p1, p1, Lcom/living/emo/fragment/VolumeFragment;->mVolume:Lcom/jaygoo/widget/RangeSeekBar;

    iget-object p2, p0, Lcom/living/emo/fragment/VolumeFragment$1;->this$0:Lcom/living/emo/fragment/VolumeFragment;

    iget p2, p2, Lcom/living/emo/fragment/VolumeFragment;->currgress:F

    invoke-virtual {p1, p2}, Lcom/jaygoo/widget/RangeSeekBar;->setProgress(F)V

    .line 46
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "initEvent: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/living/emo/fragment/VolumeFragment$1;->this$0:Lcom/living/emo/fragment/VolumeFragment;

    iget-object p2, p2, Lcom/living/emo/fragment/VolumeFragment;->mVolume:Lcom/jaygoo/widget/RangeSeekBar;

    invoke-virtual {p2}, Lcom/jaygoo/widget/RangeSeekBar;->getLeftSeekBar()Lcom/jaygoo/widget/SeekBar;

    move-result-object p2

    invoke-virtual {p2}, Lcom/jaygoo/widget/SeekBar;->getProgress()F

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TAG"

    invoke-static {p2, p1}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
