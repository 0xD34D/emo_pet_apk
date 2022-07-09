.class Lcom/living/emo/activity/WifiActivity$3;
.super Ljava/lang/Object;
.source "WifiActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/living/emo/activity/WifiActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/living/emo/activity/WifiActivity;


# direct methods
.method constructor <init>(Lcom/living/emo/activity/WifiActivity;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/living/emo/activity/WifiActivity$3;->this$0:Lcom/living/emo/activity/WifiActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 209
    invoke-static {}, Lcom/living/emo/view/WaitDialogView;->dismiss()V

    .line 210
    iget-object v0, p0, Lcom/living/emo/activity/WifiActivity$3;->this$0:Lcom/living/emo/activity/WifiActivity;

    invoke-static {v0}, Lcom/living/emo/activity/WifiActivity;->access$000(Lcom/living/emo/activity/WifiActivity;)Lcom/clj/fastble/data/BleDevice;

    move-result-object v1

    const-string v2, "stop"

    invoke-static {v2}, Lcom/living/emo/blebean/util/BleJsonUtil;->wifiRequest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/living/emo/util/ByteUtil;->strToByteArray(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/living/emo/activity/WifiActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    .line 211
    iget-object v0, p0, Lcom/living/emo/activity/WifiActivity$3;->this$0:Lcom/living/emo/activity/WifiActivity;

    const-string v1, "timeout"

    invoke-virtual {v0, v1}, Lcom/living/emo/activity/WifiActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method
