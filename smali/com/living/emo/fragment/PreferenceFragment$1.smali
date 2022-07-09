.class Lcom/living/emo/fragment/PreferenceFragment$1;
.super Ljava/lang/Object;
.source "PreferenceFragment.java"

# interfaces
.implements Lcom/jaygoo/widget/OnRangeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/living/emo/fragment/PreferenceFragment;->initEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/living/emo/fragment/PreferenceFragment;


# direct methods
.method constructor <init>(Lcom/living/emo/fragment/PreferenceFragment;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/living/emo/fragment/PreferenceFragment$1;->this$0:Lcom/living/emo/fragment/PreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRangeChanged(Lcom/jaygoo/widget/RangeSeekBar;FFZ)V
    .locals 1

    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    .line 211
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
    .locals 3

    .line 221
    iget-object p2, p0, Lcom/living/emo/fragment/PreferenceFragment$1;->this$0:Lcom/living/emo/fragment/PreferenceFragment;

    iget-object p2, p2, Lcom/living/emo/fragment/PreferenceFragment;->mSettingActivity:Lcom/living/emo/activity/SettingActivity;

    const-string v0, "Processing"

    invoke-static {p2, v0}, Lcom/living/emo/view/WaitDialogView;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 222
    invoke-virtual {p1}, Lcom/jaygoo/widget/RangeSeekBar;->getLeftSeekBar()Lcom/jaygoo/widget/SeekBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jaygoo/widget/SeekBar;->getProgress()F

    move-result p1

    float-to-int p1, p1

    .line 223
    iget-object p2, p0, Lcom/living/emo/fragment/PreferenceFragment$1;->this$0:Lcom/living/emo/fragment/PreferenceFragment;

    sget-object v0, Lcom/living/emo/fragment/PreferenceFragment$Options;->VOLUME:Lcom/living/emo/fragment/PreferenceFragment$Options;

    invoke-static {p2, v0}, Lcom/living/emo/fragment/PreferenceFragment;->access$002(Lcom/living/emo/fragment/PreferenceFragment;Lcom/living/emo/fragment/PreferenceFragment$Options;)Lcom/living/emo/fragment/PreferenceFragment$Options;

    .line 224
    iget-object p2, p0, Lcom/living/emo/fragment/PreferenceFragment$1;->this$0:Lcom/living/emo/fragment/PreferenceFragment;

    invoke-static {p2}, Lcom/living/emo/fragment/PreferenceFragment;->access$200(Lcom/living/emo/fragment/PreferenceFragment;)Landroid/os/Handler;

    move-result-object p2

    iget-object v0, p0, Lcom/living/emo/fragment/PreferenceFragment$1;->this$0:Lcom/living/emo/fragment/PreferenceFragment;

    invoke-static {v0}, Lcom/living/emo/fragment/PreferenceFragment;->access$100(Lcom/living/emo/fragment/PreferenceFragment;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v1, 0x2710

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 225
    iget-object p2, p0, Lcom/living/emo/fragment/PreferenceFragment$1;->this$0:Lcom/living/emo/fragment/PreferenceFragment;

    invoke-static {p2}, Lcom/living/emo/fragment/PreferenceFragment;->access$300(Lcom/living/emo/fragment/PreferenceFragment;)[Ljava/lang/String;

    move-result-object p2

    aget-object p1, p2, p1

    invoke-static {p1}, Lcom/living/emo/blebean/util/BleJsonUtil;->Setting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 226
    iget-object p2, p0, Lcom/living/emo/fragment/PreferenceFragment$1;->this$0:Lcom/living/emo/fragment/PreferenceFragment;

    iget-object p2, p2, Lcom/living/emo/fragment/PreferenceFragment;->mSettingActivity:Lcom/living/emo/activity/SettingActivity;

    iget-object v0, p0, Lcom/living/emo/fragment/PreferenceFragment$1;->this$0:Lcom/living/emo/fragment/PreferenceFragment;

    invoke-static {v0}, Lcom/living/emo/fragment/PreferenceFragment;->access$400(Lcom/living/emo/fragment/PreferenceFragment;)Lcom/clj/fastble/data/BleDevice;

    move-result-object v0

    invoke-static {p1}, Lcom/living/emo/util/ByteUtil;->strToByteArray(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/living/emo/activity/SettingActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    return-void
.end method
