.class Lcom/living/emo/activity/AmusementActivity$21;
.super Ljava/lang/Object;
.source "AmusementActivity.java"

# interfaces
.implements Lcom/jaygoo/widget/OnRangeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/living/emo/activity/AmusementActivity;->initEvents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/living/emo/activity/AmusementActivity;


# direct methods
.method constructor <init>(Lcom/living/emo/activity/AmusementActivity;)V
    .locals 0

    .line 949
    iput-object p1, p0, Lcom/living/emo/activity/AmusementActivity$21;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRangeChanged(Lcom/jaygoo/widget/RangeSeekBar;FFZ)V
    .locals 0

    if-eqz p4, :cond_2

    .line 953
    invoke-virtual {p1}, Lcom/jaygoo/widget/RangeSeekBar;->getLeftSeekBar()Lcom/jaygoo/widget/SeekBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jaygoo/widget/SeekBar;->getProgress()F

    move-result p1

    float-to-int p1, p1

    const/16 p2, 0x32

    if-ge p1, p2, :cond_0

    .line 956
    iget-object p2, p0, Lcom/living/emo/activity/AmusementActivity$21;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {p2, p1}, Lcom/living/emo/activity/AmusementActivity;->access$5800(Lcom/living/emo/activity/AmusementActivity;I)V

    goto :goto_0

    :cond_0
    if-ne p1, p2, :cond_1

    .line 958
    iget-object p2, p0, Lcom/living/emo/activity/AmusementActivity$21;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {p2, p1}, Lcom/living/emo/activity/AmusementActivity;->access$5900(Lcom/living/emo/activity/AmusementActivity;I)V

    goto :goto_0

    .line 961
    :cond_1
    iget-object p2, p0, Lcom/living/emo/activity/AmusementActivity$21;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {p2, p1}, Lcom/living/emo/activity/AmusementActivity;->access$6000(Lcom/living/emo/activity/AmusementActivity;I)V

    :cond_2
    :goto_0
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
