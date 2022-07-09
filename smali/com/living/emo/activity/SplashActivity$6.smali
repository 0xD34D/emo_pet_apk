.class Lcom/living/emo/activity/SplashActivity$6;
.super Lcom/clj/fastble/callback/BleGattCallback;
.source "SplashActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/living/emo/activity/SplashActivity;->connect(Lcom/clj/fastble/data/BleDevice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/living/emo/activity/SplashActivity;


# direct methods
.method constructor <init>(Lcom/living/emo/activity/SplashActivity;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/living/emo/activity/SplashActivity$6;->this$0:Lcom/living/emo/activity/SplashActivity;

    invoke-direct {p0}, Lcom/clj/fastble/callback/BleGattCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectFail(Lcom/clj/fastble/data/BleDevice;Lcom/clj/fastble/exception/BleException;)V
    .locals 1

    .line 158
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onConnectFail"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/clj/fastble/exception/BleException;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "zxl::SplashActivity"

    invoke-static {v0, p1}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iget-object p1, p0, Lcom/living/emo/activity/SplashActivity$6;->this$0:Lcom/living/emo/activity/SplashActivity;

    invoke-virtual {p2}, Lcom/clj/fastble/exception/BleException;->getDescription()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/living/emo/activity/SplashActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method public onConnectSuccess(Lcom/clj/fastble/data/BleDevice;Landroid/bluetooth/BluetoothGatt;I)V
    .locals 1

    .line 166
    iget-object p2, p0, Lcom/living/emo/activity/SplashActivity$6;->this$0:Lcom/living/emo/activity/SplashActivity;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u8fde\u63a5\u6210\u529f"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/living/emo/activity/SplashActivity;->showToast(Ljava/lang/String;)V

    .line 167
    new-instance p2, Landroid/content/Intent;

    iget-object p3, p0, Lcom/living/emo/activity/SplashActivity$6;->this$0:Lcom/living/emo/activity/SplashActivity;

    const-class v0, Lcom/living/emo/MainActivity;

    invoke-direct {p2, p3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 168
    invoke-static {}, Lcom/living/emo/bean/BleBean;->getInstance()Lcom/living/emo/bean/BleBean;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/living/emo/bean/BleBean;->setBleDevice(Lcom/clj/fastble/data/BleDevice;)V

    .line 169
    iget-object p1, p0, Lcom/living/emo/activity/SplashActivity$6;->this$0:Lcom/living/emo/activity/SplashActivity;

    invoke-virtual {p1, p2}, Lcom/living/emo/activity/SplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 170
    iget-object p1, p0, Lcom/living/emo/activity/SplashActivity$6;->this$0:Lcom/living/emo/activity/SplashActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/living/emo/activity/SplashActivity;->access$802(Lcom/living/emo/activity/SplashActivity;Z)Z

    return-void
.end method

.method public onDisConnected(ZLcom/clj/fastble/data/BleDevice;Landroid/bluetooth/BluetoothGatt;I)V
    .locals 2

    if-eqz p1, :cond_0

    .line 181
    iget-object p1, p0, Lcom/living/emo/activity/SplashActivity$6;->this$0:Lcom/living/emo/activity/SplashActivity;

    const-string p2, "\u65ad\u5f00\u4e86"

    invoke-virtual {p1, p2}, Lcom/living/emo/activity/SplashActivity;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 183
    :cond_0
    iget-object p1, p0, Lcom/living/emo/activity/SplashActivity$6;->this$0:Lcom/living/emo/activity/SplashActivity;

    const-string p3, "\u8fde\u63a5\u65ad\u5f00\u4e86"

    invoke-virtual {p1, p3}, Lcom/living/emo/activity/SplashActivity;->showToast(Ljava/lang/String;)V

    .line 184
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p3, Lcom/living/emo/activity/SplashActivity$6$1;

    invoke-direct {p3, p0, p2}, Lcom/living/emo/activity/SplashActivity$6$1;-><init>(Lcom/living/emo/activity/SplashActivity$6;Lcom/clj/fastble/data/BleDevice;)V

    const-wide/16 v0, 0xbb8

    invoke-virtual {p1, p3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method public onStartConnect()V
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/living/emo/activity/SplashActivity$6;->this$0:Lcom/living/emo/activity/SplashActivity;

    const-string v1, "\u5f00\u59cb\u8fde\u63a5..."

    invoke-virtual {v0, v1}, Lcom/living/emo/activity/SplashActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method
