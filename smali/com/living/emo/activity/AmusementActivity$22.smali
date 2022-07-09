.class Lcom/living/emo/activity/AmusementActivity$22;
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

    .line 977
    iput-object p1, p0, Lcom/living/emo/activity/AmusementActivity$22;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRangeChanged(Lcom/jaygoo/widget/RangeSeekBar;FFZ)V
    .locals 0

    if-eqz p4, :cond_0

    .line 981
    invoke-virtual {p1}, Lcom/jaygoo/widget/RangeSeekBar;->getLeftSeekBar()Lcom/jaygoo/widget/SeekBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jaygoo/widget/SeekBar;->getProgress()F

    move-result p1

    .line 982
    invoke-static {}, Lcom/living/emo/activity/AmusementActivity;->access$100()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "onRangeChanged: decimal===>"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 983
    iget-object p2, p0, Lcom/living/emo/activity/AmusementActivity$22;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {p2}, Lcom/living/emo/activity/AmusementActivity;->access$200(Lcom/living/emo/activity/AmusementActivity;)Lcom/living/emo/interfaces/IPlayerControlPresenter;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 984
    iget-object p2, p0, Lcom/living/emo/activity/AmusementActivity$22;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {p2}, Lcom/living/emo/activity/AmusementActivity;->access$200(Lcom/living/emo/activity/AmusementActivity;)Lcom/living/emo/interfaces/IPlayerControlPresenter;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/living/emo/interfaces/IPlayerControlPresenter;->speed(F)V

    .line 985
    iget-object p2, p0, Lcom/living/emo/activity/AmusementActivity$22;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {p2}, Lcom/living/emo/activity/AmusementActivity;->access$1600(Lcom/living/emo/activity/AmusementActivity;)Landroid/widget/TextView;

    move-result-object p3

    iget-object p4, p0, Lcom/living/emo/activity/AmusementActivity$22;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {p4}, Lcom/living/emo/activity/AmusementActivity;->access$1700(Lcom/living/emo/activity/AmusementActivity;)Landroid/widget/TextView;

    move-result-object p4

    invoke-static {p2, p1, p3, p4}, Lcom/living/emo/activity/AmusementActivity;->access$1800(Lcom/living/emo/activity/AmusementActivity;FLandroid/widget/TextView;Landroid/widget/TextView;)V

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
