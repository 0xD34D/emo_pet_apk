.class Lcom/living/emo/activity/SplashActivity$7;
.super Ljava/lang/Object;
.source "SplashActivity.java"

# interfaces
.implements Lcom/living/emo/adapter/DeviceAdapter$OnDeviceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/living/emo/activity/SplashActivity;->initView()V
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

    .line 232
    iput-object p1, p0, Lcom/living/emo/activity/SplashActivity$7;->this$0:Lcom/living/emo/activity/SplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public selectDevice(Lcom/clj/fastble/data/BleDevice;)V
    .locals 2

    .line 235
    iget-object v0, p0, Lcom/living/emo/activity/SplashActivity$7;->this$0:Lcom/living/emo/activity/SplashActivity;

    invoke-static {v0}, Lcom/living/emo/activity/SplashActivity;->access$900(Lcom/living/emo/activity/SplashActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/living/emo/activity/SplashActivity$7;->this$0:Lcom/living/emo/activity/SplashActivity;

    invoke-static {v0}, Lcom/living/emo/activity/SplashActivity;->access$900(Lcom/living/emo/activity/SplashActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 237
    iget-object v0, p0, Lcom/living/emo/activity/SplashActivity$7;->this$0:Lcom/living/emo/activity/SplashActivity;

    invoke-static {v0}, Lcom/living/emo/activity/SplashActivity;->access$1000(Lcom/living/emo/activity/SplashActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/living/emo/activity/SplashActivity$7;->this$0:Lcom/living/emo/activity/SplashActivity;

    invoke-static {v0}, Lcom/living/emo/activity/SplashActivity;->access$000(Lcom/living/emo/activity/SplashActivity;)Lcom/clj/fastble/BleManager;

    move-result-object v0

    iget-object v1, p0, Lcom/living/emo/activity/SplashActivity$7;->this$0:Lcom/living/emo/activity/SplashActivity;

    invoke-static {v1}, Lcom/living/emo/activity/SplashActivity;->access$600(Lcom/living/emo/activity/SplashActivity;)Lcom/clj/fastble/data/BleDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/clj/fastble/BleManager;->isConnected(Lcom/clj/fastble/data/BleDevice;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 241
    iget-object v0, p0, Lcom/living/emo/activity/SplashActivity$7;->this$0:Lcom/living/emo/activity/SplashActivity;

    invoke-static {v0}, Lcom/living/emo/activity/SplashActivity;->access$600(Lcom/living/emo/activity/SplashActivity;)Lcom/clj/fastble/data/BleDevice;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 242
    iget-object v0, p0, Lcom/living/emo/activity/SplashActivity$7;->this$0:Lcom/living/emo/activity/SplashActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/living/emo/activity/SplashActivity;->access$602(Lcom/living/emo/activity/SplashActivity;Lcom/clj/fastble/data/BleDevice;)Lcom/clj/fastble/data/BleDevice;

    .line 243
    iget-object v0, p0, Lcom/living/emo/activity/SplashActivity$7;->this$0:Lcom/living/emo/activity/SplashActivity;

    invoke-static {v0, p1}, Lcom/living/emo/activity/SplashActivity;->access$602(Lcom/living/emo/activity/SplashActivity;Lcom/clj/fastble/data/BleDevice;)Lcom/clj/fastble/data/BleDevice;

    goto :goto_0

    .line 245
    :cond_1
    iget-object v0, p0, Lcom/living/emo/activity/SplashActivity$7;->this$0:Lcom/living/emo/activity/SplashActivity;

    invoke-static {v0, p1}, Lcom/living/emo/activity/SplashActivity;->access$602(Lcom/living/emo/activity/SplashActivity;Lcom/clj/fastble/data/BleDevice;)Lcom/clj/fastble/data/BleDevice;

    .line 247
    :goto_0
    iget-object p1, p0, Lcom/living/emo/activity/SplashActivity$7;->this$0:Lcom/living/emo/activity/SplashActivity;

    invoke-static {p1}, Lcom/living/emo/activity/SplashActivity;->access$1100(Lcom/living/emo/activity/SplashActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/living/emo/activity/SplashActivity$7;->this$0:Lcom/living/emo/activity/SplashActivity;

    invoke-static {v0}, Lcom/living/emo/activity/SplashActivity;->access$600(Lcom/living/emo/activity/SplashActivity;)Lcom/clj/fastble/data/BleDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clj/fastble/data/BleDevice;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 249
    :cond_2
    iget-object p1, p0, Lcom/living/emo/activity/SplashActivity$7;->this$0:Lcom/living/emo/activity/SplashActivity;

    const-string v0, "EMO\u5df2\u8fde\u63a5"

    invoke-virtual {p1, v0}, Lcom/living/emo/activity/SplashActivity;->showToast(Ljava/lang/String;)V

    :goto_1
    return-void
.end method
