.class Lcom/living/emo/activity/ConnectActivity$3;
.super Lcom/clj/fastble/callback/BleScanCallback;
.source "ConnectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/living/emo/activity/ConnectActivity;->startScan()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/living/emo/activity/ConnectActivity;


# direct methods
.method constructor <init>(Lcom/living/emo/activity/ConnectActivity;)V
    .locals 0

    .line 319
    iput-object p1, p0, Lcom/living/emo/activity/ConnectActivity$3;->this$0:Lcom/living/emo/activity/ConnectActivity;

    invoke-direct {p0}, Lcom/clj/fastble/callback/BleScanCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onScanFinished(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/clj/fastble/data/BleDevice;",
            ">;)V"
        }
    .end annotation

    .line 322
    invoke-static {}, Lcom/living/emo/activity/ConnectActivity;->access$1300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onScanFinished: "

    invoke-static {v0, v1}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    iget-object p1, p0, Lcom/living/emo/activity/ConnectActivity$3;->this$0:Lcom/living/emo/activity/ConnectActivity;

    invoke-static {p1}, Lcom/living/emo/activity/ConnectActivity;->access$1100(Lcom/living/emo/activity/ConnectActivity;)V

    goto :goto_0

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/living/emo/activity/ConnectActivity$3;->this$0:Lcom/living/emo/activity/ConnectActivity;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/clj/fastble/data/BleDevice;

    invoke-static {v0, v1}, Lcom/living/emo/activity/ConnectActivity;->access$002(Lcom/living/emo/activity/ConnectActivity;Lcom/clj/fastble/data/BleDevice;)Lcom/clj/fastble/data/BleDevice;

    .line 327
    iget-object v0, p0, Lcom/living/emo/activity/ConnectActivity$3;->this$0:Lcom/living/emo/activity/ConnectActivity;

    invoke-static {v0}, Lcom/living/emo/activity/ConnectActivity;->access$1400(Lcom/living/emo/activity/ConnectActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 328
    iget-object v0, p0, Lcom/living/emo/activity/ConnectActivity$3;->this$0:Lcom/living/emo/activity/ConnectActivity;

    invoke-static {v0}, Lcom/living/emo/activity/ConnectActivity;->access$1400(Lcom/living/emo/activity/ConnectActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 329
    iget-object p1, p0, Lcom/living/emo/activity/ConnectActivity$3;->this$0:Lcom/living/emo/activity/ConnectActivity;

    invoke-static {p1}, Lcom/living/emo/activity/ConnectActivity;->access$200(Lcom/living/emo/activity/ConnectActivity;)Lcom/living/emo/view/BleDeviceWindow;

    move-result-object p1

    iget-object v0, p0, Lcom/living/emo/activity/ConnectActivity$3;->this$0:Lcom/living/emo/activity/ConnectActivity;

    invoke-static {v0}, Lcom/living/emo/activity/ConnectActivity;->access$1400(Lcom/living/emo/activity/ConnectActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/living/emo/view/BleDeviceWindow;->setData(Ljava/util/ArrayList;)V

    .line 330
    iget-object p1, p0, Lcom/living/emo/activity/ConnectActivity$3;->this$0:Lcom/living/emo/activity/ConnectActivity;

    invoke-static {p1}, Lcom/living/emo/activity/ConnectActivity;->access$1500(Lcom/living/emo/activity/ConnectActivity;)V

    :goto_0
    return-void
.end method

.method public onScanStarted(Z)V
    .locals 0

    return-void
.end method

.method public onScanning(Lcom/clj/fastble/data/BleDevice;)V
    .locals 4

    .line 341
    invoke-static {}, Lcom/living/emo/activity/ConnectActivity;->access$1300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScanning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "mac"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    iget-object v0, p0, Lcom/living/emo/activity/ConnectActivity$3;->this$0:Lcom/living/emo/activity/ConnectActivity;

    invoke-static {v0}, Lcom/living/emo/activity/ConnectActivity;->access$1600(Lcom/living/emo/activity/ConnectActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "ble_name"

    const-string v3, ""

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 343
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 344
    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/living/emo/activity/ConnectActivity$3;->this$0:Lcom/living/emo/activity/ConnectActivity;

    invoke-static {v0, p1}, Lcom/living/emo/activity/ConnectActivity;->access$002(Lcom/living/emo/activity/ConnectActivity;Lcom/clj/fastble/data/BleDevice;)Lcom/clj/fastble/data/BleDevice;

    .line 346
    iget-object p1, p0, Lcom/living/emo/activity/ConnectActivity$3;->this$0:Lcom/living/emo/activity/ConnectActivity;

    invoke-static {p1}, Lcom/living/emo/activity/ConnectActivity;->access$1500(Lcom/living/emo/activity/ConnectActivity;)V

    .line 347
    iget-object p1, p0, Lcom/living/emo/activity/ConnectActivity$3;->this$0:Lcom/living/emo/activity/ConnectActivity;

    invoke-static {p1}, Lcom/living/emo/activity/ConnectActivity;->access$400(Lcom/living/emo/activity/ConnectActivity;)Lcom/clj/fastble/BleManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/clj/fastble/BleManager;->cancelScan()V

    .line 348
    invoke-static {}, Lcom/living/emo/activity/ConnectActivity;->access$1300()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
