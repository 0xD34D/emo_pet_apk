.class Lcom/living/emo/activity/ConnectActivity$4;
.super Lcom/clj/fastble/callback/BleGattCallback;
.source "ConnectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/living/emo/activity/ConnectActivity;->connect(Lcom/clj/fastble/data/BleDevice;)V
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

    .line 357
    iput-object p1, p0, Lcom/living/emo/activity/ConnectActivity$4;->this$0:Lcom/living/emo/activity/ConnectActivity;

    invoke-direct {p0}, Lcom/clj/fastble/callback/BleGattCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectFail(Lcom/clj/fastble/data/BleDevice;Lcom/clj/fastble/exception/BleException;)V
    .locals 2

    .line 365
    invoke-static {}, Lcom/living/emo/activity/ConnectActivity;->access$1300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onConnectFail: "

    invoke-static {v0, v1}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    invoke-static {}, Lcom/living/emo/activity/ConnectActivity;->access$1300()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/clj/fastble/exception/BleException;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    invoke-static {}, Lcom/living/emo/activity/ConnectActivity;->access$1300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/clj/fastble/exception/BleException;->getCode()I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    invoke-static {}, Lcom/clj/fastble/BleManager;->getInstance()Lcom/clj/fastble/BleManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/clj/fastble/BleManager;->destroy()V

    .line 369
    iget-object p2, p0, Lcom/living/emo/activity/ConnectActivity$4;->this$0:Lcom/living/emo/activity/ConnectActivity;

    invoke-static {p2, p1}, Lcom/living/emo/activity/ConnectActivity;->access$1700(Lcom/living/emo/activity/ConnectActivity;Lcom/clj/fastble/data/BleDevice;)V

    return-void
.end method

.method public onConnectSuccess(Lcom/clj/fastble/data/BleDevice;Landroid/bluetooth/BluetoothGatt;I)V
    .locals 0

    .line 374
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "ble_mac:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "ble_mac"

    invoke-static {p3, p2}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    iget-object p2, p0, Lcom/living/emo/activity/ConnectActivity$4;->this$0:Lcom/living/emo/activity/ConnectActivity;

    invoke-static {p2, p1}, Lcom/living/emo/activity/ConnectActivity;->access$002(Lcom/living/emo/activity/ConnectActivity;Lcom/clj/fastble/data/BleDevice;)Lcom/clj/fastble/data/BleDevice;

    .line 376
    invoke-static {}, Lcom/living/emo/bean/BleBean;->getInstance()Lcom/living/emo/bean/BleBean;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/living/emo/bean/BleBean;->setBleDevice(Lcom/clj/fastble/data/BleDevice;)V

    .line 377
    iget-object p1, p0, Lcom/living/emo/activity/ConnectActivity$4;->this$0:Lcom/living/emo/activity/ConnectActivity;

    invoke-static {p1}, Lcom/living/emo/activity/ConnectActivity;->access$1200(Lcom/living/emo/activity/ConnectActivity;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 378
    iget-object p1, p0, Lcom/living/emo/activity/ConnectActivity$4;->this$0:Lcom/living/emo/activity/ConnectActivity;

    invoke-static {p1}, Lcom/living/emo/activity/ConnectActivity;->access$1800(Lcom/living/emo/activity/ConnectActivity;)V

    goto :goto_0

    .line 380
    :cond_0
    iget-object p1, p0, Lcom/living/emo/activity/ConnectActivity$4;->this$0:Lcom/living/emo/activity/ConnectActivity;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/living/emo/activity/ConnectActivity$4;->this$0:Lcom/living/emo/activity/ConnectActivity;

    invoke-static {p3}, Lcom/living/emo/activity/ConnectActivity;->access$000(Lcom/living/emo/activity/ConnectActivity;)Lcom/clj/fastble/data/BleDevice;

    move-result-object p3

    invoke-virtual {p3}, Lcom/clj/fastble/data/BleDevice;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "Reconnection successful"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/living/emo/activity/ConnectActivity;->showToast(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onDisConnected(ZLcom/clj/fastble/data/BleDevice;Landroid/bluetooth/BluetoothGatt;I)V
    .locals 0

    const-string p1, "onDisConnected"

    const-string p2, "emo is DisConnected"

    .line 386
    invoke-static {p1, p2}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    iget-object p1, p0, Lcom/living/emo/activity/ConnectActivity$4;->this$0:Lcom/living/emo/activity/ConnectActivity;

    invoke-static {p1}, Lcom/living/emo/util/MusicPlayerUtil;->getInstance(Landroid/content/Context;)Lcom/living/emo/util/MusicPlayerUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/living/emo/util/MusicPlayerUtil;->end()V

    .line 388
    iget-object p1, p0, Lcom/living/emo/activity/ConnectActivity$4;->this$0:Lcom/living/emo/activity/ConnectActivity;

    invoke-virtual {p1}, Lcom/living/emo/activity/ConnectActivity;->dropOut()V

    .line 389
    iget-object p1, p0, Lcom/living/emo/activity/ConnectActivity$4;->this$0:Lcom/living/emo/activity/ConnectActivity;

    new-instance p2, Landroid/content/Intent;

    iget-object p3, p0, Lcom/living/emo/activity/ConnectActivity$4;->this$0:Lcom/living/emo/activity/ConnectActivity;

    const-class p4, Lcom/living/emo/activity/ConnectActivity;

    invoke-direct {p2, p3, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p2}, Lcom/living/emo/activity/ConnectActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onStartConnect()V
    .locals 2

    .line 360
    invoke-static {}, Lcom/living/emo/activity/ConnectActivity;->access$1300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onStartConnect: "

    invoke-static {v0, v1}, Lcom/living/emo/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
