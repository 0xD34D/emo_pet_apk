.class Lcom/clj/fastble/scan/BleScanner$1;
.super Lcom/clj/fastble/scan/BleScanPresenter;
.source "BleScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clj/fastble/scan/BleScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/clj/fastble/scan/BleScanner;


# direct methods
.method constructor <init>(Lcom/clj/fastble/scan/BleScanner;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/clj/fastble/scan/BleScanner$1;->this$0:Lcom/clj/fastble/scan/BleScanner;

    invoke-direct {p0}, Lcom/clj/fastble/scan/BleScanPresenter;-><init>()V

    return-void
.end method


# virtual methods
.method public onLeScan(Lcom/clj/fastble/data/BleDevice;)V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/clj/fastble/scan/BleScanner$1;->this$0:Lcom/clj/fastble/scan/BleScanner;

    invoke-static {v0}, Lcom/clj/fastble/scan/BleScanner;->access$100(Lcom/clj/fastble/scan/BleScanner;)Lcom/clj/fastble/scan/BleScanPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clj/fastble/scan/BleScanPresenter;->ismNeedConnect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/clj/fastble/scan/BleScanner$1;->this$0:Lcom/clj/fastble/scan/BleScanner;

    .line 47
    invoke-static {v0}, Lcom/clj/fastble/scan/BleScanner;->access$100(Lcom/clj/fastble/scan/BleScanner;)Lcom/clj/fastble/scan/BleScanPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clj/fastble/scan/BleScanPresenter;->getBleScanPresenterImp()Lcom/clj/fastble/callback/BleScanPresenterImp;

    move-result-object v0

    check-cast v0, Lcom/clj/fastble/callback/BleScanAndConnectCallback;

    if-eqz v0, :cond_1

    .line 49
    invoke-virtual {v0, p1}, Lcom/clj/fastble/callback/BleScanAndConnectCallback;->onLeScan(Lcom/clj/fastble/data/BleDevice;)V

    goto :goto_0

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/clj/fastble/scan/BleScanner$1;->this$0:Lcom/clj/fastble/scan/BleScanner;

    invoke-static {v0}, Lcom/clj/fastble/scan/BleScanner;->access$100(Lcom/clj/fastble/scan/BleScanner;)Lcom/clj/fastble/scan/BleScanPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clj/fastble/scan/BleScanPresenter;->getBleScanPresenterImp()Lcom/clj/fastble/callback/BleScanPresenterImp;

    move-result-object v0

    check-cast v0, Lcom/clj/fastble/callback/BleScanCallback;

    if-eqz v0, :cond_1

    .line 54
    invoke-virtual {v0, p1}, Lcom/clj/fastble/callback/BleScanCallback;->onLeScan(Lcom/clj/fastble/data/BleDevice;)V

    :cond_1
    :goto_0
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

    .line 69
    iget-object v0, p0, Lcom/clj/fastble/scan/BleScanner$1;->this$0:Lcom/clj/fastble/scan/BleScanner;

    invoke-static {v0}, Lcom/clj/fastble/scan/BleScanner;->access$100(Lcom/clj/fastble/scan/BleScanner;)Lcom/clj/fastble/scan/BleScanPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clj/fastble/scan/BleScanPresenter;->ismNeedConnect()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 70
    iget-object v0, p0, Lcom/clj/fastble/scan/BleScanner$1;->this$0:Lcom/clj/fastble/scan/BleScanner;

    .line 71
    invoke-static {v0}, Lcom/clj/fastble/scan/BleScanner;->access$100(Lcom/clj/fastble/scan/BleScanner;)Lcom/clj/fastble/scan/BleScanPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clj/fastble/scan/BleScanPresenter;->getBleScanPresenterImp()Lcom/clj/fastble/callback/BleScanPresenterImp;

    move-result-object v0

    check-cast v0, Lcom/clj/fastble/callback/BleScanAndConnectCallback;

    if-eqz p1, :cond_2

    .line 72
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 78
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/clj/fastble/data/BleDevice;

    invoke-virtual {v0, v1}, Lcom/clj/fastble/callback/BleScanAndConnectCallback;->onScanFinished(Lcom/clj/fastble/data/BleDevice;)V

    .line 81
    :cond_1
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/clj/fastble/scan/BleScanner$1$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/clj/fastble/scan/BleScanner$1$1;-><init>(Lcom/clj/fastble/scan/BleScanner$1;Ljava/util/List;Lcom/clj/fastble/callback/BleScanAndConnectCallback;)V

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_2
    :goto_0
    if-eqz v0, :cond_4

    const/4 p1, 0x0

    .line 74
    invoke-virtual {v0, p1}, Lcom/clj/fastble/callback/BleScanAndConnectCallback;->onScanFinished(Lcom/clj/fastble/data/BleDevice;)V

    goto :goto_1

    .line 89
    :cond_3
    iget-object v0, p0, Lcom/clj/fastble/scan/BleScanner$1;->this$0:Lcom/clj/fastble/scan/BleScanner;

    invoke-static {v0}, Lcom/clj/fastble/scan/BleScanner;->access$100(Lcom/clj/fastble/scan/BleScanner;)Lcom/clj/fastble/scan/BleScanPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clj/fastble/scan/BleScanPresenter;->getBleScanPresenterImp()Lcom/clj/fastble/callback/BleScanPresenterImp;

    move-result-object v0

    check-cast v0, Lcom/clj/fastble/callback/BleScanCallback;

    if-eqz v0, :cond_4

    .line 91
    invoke-virtual {v0, p1}, Lcom/clj/fastble/callback/BleScanCallback;->onScanFinished(Ljava/util/List;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public onScanStarted(Z)V
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/clj/fastble/scan/BleScanner$1;->this$0:Lcom/clj/fastble/scan/BleScanner;

    invoke-static {v0}, Lcom/clj/fastble/scan/BleScanner;->access$100(Lcom/clj/fastble/scan/BleScanner;)Lcom/clj/fastble/scan/BleScanPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clj/fastble/scan/BleScanPresenter;->getBleScanPresenterImp()Lcom/clj/fastble/callback/BleScanPresenterImp;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 39
    invoke-interface {v0, p1}, Lcom/clj/fastble/callback/BleScanPresenterImp;->onScanStarted(Z)V

    :cond_0
    return-void
.end method

.method public onScanning(Lcom/clj/fastble/data/BleDevice;)V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/clj/fastble/scan/BleScanner$1;->this$0:Lcom/clj/fastble/scan/BleScanner;

    invoke-static {v0}, Lcom/clj/fastble/scan/BleScanner;->access$100(Lcom/clj/fastble/scan/BleScanner;)Lcom/clj/fastble/scan/BleScanPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clj/fastble/scan/BleScanPresenter;->getBleScanPresenterImp()Lcom/clj/fastble/callback/BleScanPresenterImp;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 63
    invoke-interface {v0, p1}, Lcom/clj/fastble/callback/BleScanPresenterImp;->onScanning(Lcom/clj/fastble/data/BleDevice;)V

    :cond_0
    return-void
.end method
