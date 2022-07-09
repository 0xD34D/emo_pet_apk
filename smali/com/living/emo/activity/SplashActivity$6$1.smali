.class Lcom/living/emo/activity/SplashActivity$6$1;
.super Ljava/lang/Object;
.source "SplashActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/living/emo/activity/SplashActivity$6;->onDisConnected(ZLcom/clj/fastble/data/BleDevice;Landroid/bluetooth/BluetoothGatt;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/living/emo/activity/SplashActivity$6;

.field final synthetic val$device:Lcom/clj/fastble/data/BleDevice;


# direct methods
.method constructor <init>(Lcom/living/emo/activity/SplashActivity$6;Lcom/clj/fastble/data/BleDevice;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/living/emo/activity/SplashActivity$6$1;->this$1:Lcom/living/emo/activity/SplashActivity$6;

    iput-object p2, p0, Lcom/living/emo/activity/SplashActivity$6$1;->val$device:Lcom/clj/fastble/data/BleDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 187
    iget-object v0, p0, Lcom/living/emo/activity/SplashActivity$6$1;->val$device:Lcom/clj/fastble/data/BleDevice;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/living/emo/activity/SplashActivity$6$1;->this$1:Lcom/living/emo/activity/SplashActivity$6;

    iget-object v0, v0, Lcom/living/emo/activity/SplashActivity$6;->this$0:Lcom/living/emo/activity/SplashActivity;

    iget-object v1, p0, Lcom/living/emo/activity/SplashActivity$6$1;->val$device:Lcom/clj/fastble/data/BleDevice;

    invoke-static {v0, v1}, Lcom/living/emo/activity/SplashActivity;->access$700(Lcom/living/emo/activity/SplashActivity;Lcom/clj/fastble/data/BleDevice;)V

    :cond_0
    return-void
.end method
