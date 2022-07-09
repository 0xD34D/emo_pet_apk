.class Lcom/living/emo/fragment/WifiSettingFragment$5;
.super Ljava/lang/Object;
.source "WifiSettingFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/living/emo/fragment/WifiSettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/living/emo/fragment/WifiSettingFragment;


# direct methods
.method constructor <init>(Lcom/living/emo/fragment/WifiSettingFragment;)V
    .locals 0

    .line 285
    iput-object p1, p0, Lcom/living/emo/fragment/WifiSettingFragment$5;->this$0:Lcom/living/emo/fragment/WifiSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 288
    invoke-static {}, Lcom/living/emo/view/WaitDialogView;->dismiss()V

    .line 289
    iget-object v0, p0, Lcom/living/emo/fragment/WifiSettingFragment$5;->this$0:Lcom/living/emo/fragment/WifiSettingFragment;

    invoke-static {v0}, Lcom/living/emo/fragment/WifiSettingFragment;->access$600(Lcom/living/emo/fragment/WifiSettingFragment;)Lcom/living/emo/activity/SettingActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/living/emo/fragment/WifiSettingFragment$5;->this$0:Lcom/living/emo/fragment/WifiSettingFragment;

    invoke-static {v1}, Lcom/living/emo/fragment/WifiSettingFragment;->access$1100(Lcom/living/emo/fragment/WifiSettingFragment;)Lcom/clj/fastble/data/BleDevice;

    move-result-object v1

    const-string v2, "stop"

    invoke-static {v2}, Lcom/living/emo/blebean/util/BleJsonUtil;->wifiRequest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/living/emo/util/ByteUtil;->strToByteArray(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/living/emo/activity/SettingActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    .line 290
    iget-object v0, p0, Lcom/living/emo/fragment/WifiSettingFragment$5;->this$0:Lcom/living/emo/fragment/WifiSettingFragment;

    invoke-static {v0}, Lcom/living/emo/fragment/WifiSettingFragment;->access$600(Lcom/living/emo/fragment/WifiSettingFragment;)Lcom/living/emo/activity/SettingActivity;

    move-result-object v0

    const-string v1, "timeout"

    invoke-virtual {v0, v1}, Lcom/living/emo/activity/SettingActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method
