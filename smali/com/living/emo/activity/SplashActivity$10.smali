.class Lcom/living/emo/activity/SplashActivity$10;
.super Lcom/clj/fastble/callback/BleScanCallback;
.source "SplashActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/living/emo/activity/SplashActivity;->startScan()V
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

    .line 346
    iput-object p1, p0, Lcom/living/emo/activity/SplashActivity$10;->this$0:Lcom/living/emo/activity/SplashActivity;

    invoke-direct {p0}, Lcom/clj/fastble/callback/BleScanCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onLeScan(Lcom/clj/fastble/data/BleDevice;)V
    .locals 0

    .line 355
    invoke-super {p0, p1}, Lcom/clj/fastble/callback/BleScanCallback;->onLeScan(Lcom/clj/fastble/data/BleDevice;)V

    return-void
.end method

.method public onScanFinished(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/clj/fastble/data/BleDevice;",
            ">;)V"
        }
    .end annotation

    .line 366
    iget-object v0, p0, Lcom/living/emo/activity/SplashActivity$10;->this$0:Lcom/living/emo/activity/SplashActivity;

    invoke-static {v0}, Lcom/living/emo/activity/SplashActivity;->access$900(Lcom/living/emo/activity/SplashActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 367
    iget-object v0, p0, Lcom/living/emo/activity/SplashActivity$10;->this$0:Lcom/living/emo/activity/SplashActivity;

    invoke-static {v0}, Lcom/living/emo/activity/SplashActivity;->access$200(Lcom/living/emo/activity/SplashActivity;)Lcom/living/emo/animation/SearchAnimation;

    move-result-object v0

    iget-object v2, p0, Lcom/living/emo/activity/SplashActivity$10;->this$0:Lcom/living/emo/activity/SplashActivity;

    invoke-static {v2}, Lcom/living/emo/activity/SplashActivity;->access$100(Lcom/living/emo/activity/SplashActivity;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/living/emo/animation/SearchAnimation;->stop(Landroid/view/View;)V

    .line 368
    iget-object v0, p0, Lcom/living/emo/activity/SplashActivity$10;->this$0:Lcom/living/emo/activity/SplashActivity;

    invoke-static {v0}, Lcom/living/emo/activity/SplashActivity;->access$200(Lcom/living/emo/activity/SplashActivity;)Lcom/living/emo/animation/SearchAnimation;

    move-result-object v0

    iget-object v2, p0, Lcom/living/emo/activity/SplashActivity$10;->this$0:Lcom/living/emo/activity/SplashActivity;

    invoke-static {v2}, Lcom/living/emo/activity/SplashActivity;->access$1200(Lcom/living/emo/activity/SplashActivity;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/living/emo/animation/SearchAnimation;->stop(Landroid/view/View;)V

    const-string v0, "tag"

    if-eqz p1, :cond_0

    .line 369
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 370
    iget-object v2, p0, Lcom/living/emo/activity/SplashActivity$10;->this$0:Lcom/living/emo/activity/SplashActivity;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/living/emo/activity/SplashActivity;->access$602(Lcom/living/emo/activity/SplashActivity;Lcom/clj/fastble/data/BleDevice;)Lcom/clj/fastble/data/BleDevice;

    .line 371
    iget-object v2, p0, Lcom/living/emo/activity/SplashActivity$10;->this$0:Lcom/living/emo/activity/SplashActivity;

    const/4 v3, 0x0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/clj/fastble/data/BleDevice;

    invoke-static {v2, v4}, Lcom/living/emo/activity/SplashActivity;->access$602(Lcom/living/emo/activity/SplashActivity;Lcom/clj/fastble/data/BleDevice;)Lcom/clj/fastble/data/BleDevice;

    .line 372
    iget-object v2, p0, Lcom/living/emo/activity/SplashActivity$10;->this$0:Lcom/living/emo/activity/SplashActivity;

    invoke-static {v2}, Lcom/living/emo/activity/SplashActivity;->access$1100(Lcom/living/emo/activity/SplashActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v4, p0, Lcom/living/emo/activity/SplashActivity$10;->this$0:Lcom/living/emo/activity/SplashActivity;

    invoke-static {v4}, Lcom/living/emo/activity/SplashActivity;->access$600(Lcom/living/emo/activity/SplashActivity;)Lcom/clj/fastble/data/BleDevice;

    move-result-object v4

    invoke-virtual {v4}, Lcom/clj/fastble/data/BleDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 373
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/clj/fastble/data/BleDevice;

    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/living/emo/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    iget-object p1, p0, Lcom/living/emo/activity/SplashActivity$10;->this$0:Lcom/living/emo/activity/SplashActivity;

    invoke-static {p1}, Lcom/living/emo/activity/SplashActivity;->access$900(Lcom/living/emo/activity/SplashActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 375
    iget-object p1, p0, Lcom/living/emo/activity/SplashActivity$10;->this$0:Lcom/living/emo/activity/SplashActivity;

    invoke-static {p1}, Lcom/living/emo/activity/SplashActivity;->access$1300(Lcom/living/emo/activity/SplashActivity;)Landroid/widget/TextView;

    move-result-object p1

    const v0, 0x7f100069

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 376
    iget-object p1, p0, Lcom/living/emo/activity/SplashActivity$10;->this$0:Lcom/living/emo/activity/SplashActivity;

    invoke-static {p1}, Lcom/living/emo/activity/SplashActivity;->access$1000(Lcom/living/emo/activity/SplashActivity;)Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const-string p1, "-----onScanFinished----"

    .line 379
    invoke-static {v0, p1}, Lcom/living/emo/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onScanStarted(Z)V
    .locals 0

    .line 349
    iget-object p1, p0, Lcom/living/emo/activity/SplashActivity$10;->this$0:Lcom/living/emo/activity/SplashActivity;

    invoke-static {p1}, Lcom/living/emo/activity/SplashActivity;->access$300(Lcom/living/emo/activity/SplashActivity;)Lcom/living/emo/adapter/DeviceAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/living/emo/adapter/DeviceAdapter;->clearScanDevice()V

    .line 350
    iget-object p1, p0, Lcom/living/emo/activity/SplashActivity$10;->this$0:Lcom/living/emo/activity/SplashActivity;

    invoke-static {p1}, Lcom/living/emo/activity/SplashActivity;->access$300(Lcom/living/emo/activity/SplashActivity;)Lcom/living/emo/adapter/DeviceAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/living/emo/adapter/DeviceAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onScanning(Lcom/clj/fastble/data/BleDevice;)V
    .locals 1

    .line 360
    iget-object v0, p0, Lcom/living/emo/activity/SplashActivity$10;->this$0:Lcom/living/emo/activity/SplashActivity;

    invoke-static {v0}, Lcom/living/emo/activity/SplashActivity;->access$300(Lcom/living/emo/activity/SplashActivity;)Lcom/living/emo/adapter/DeviceAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/living/emo/adapter/DeviceAdapter;->addDevice(Lcom/clj/fastble/data/BleDevice;)V

    .line 361
    iget-object p1, p0, Lcom/living/emo/activity/SplashActivity$10;->this$0:Lcom/living/emo/activity/SplashActivity;

    invoke-static {p1}, Lcom/living/emo/activity/SplashActivity;->access$300(Lcom/living/emo/activity/SplashActivity;)Lcom/living/emo/adapter/DeviceAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/living/emo/adapter/DeviceAdapter;->notifyDataSetChanged()V

    return-void
.end method
