.class Lcom/clj/fastble/scan/BleScanPresenter$3;
.super Ljava/lang/Object;
.source "BleScanPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clj/fastble/scan/BleScanPresenter;->correctDeviceAndNextStep(Lcom/clj/fastble/data/BleDevice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/clj/fastble/scan/BleScanPresenter;

.field final synthetic val$bleDevice:Lcom/clj/fastble/data/BleDevice;


# direct methods
.method constructor <init>(Lcom/clj/fastble/scan/BleScanPresenter;Lcom/clj/fastble/data/BleDevice;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/clj/fastble/scan/BleScanPresenter$3;->this$0:Lcom/clj/fastble/scan/BleScanPresenter;

    iput-object p2, p0, Lcom/clj/fastble/scan/BleScanPresenter$3;->val$bleDevice:Lcom/clj/fastble/data/BleDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 176
    iget-object v0, p0, Lcom/clj/fastble/scan/BleScanPresenter$3;->this$0:Lcom/clj/fastble/scan/BleScanPresenter;

    iget-object v1, p0, Lcom/clj/fastble/scan/BleScanPresenter$3;->val$bleDevice:Lcom/clj/fastble/data/BleDevice;

    invoke-virtual {v0, v1}, Lcom/clj/fastble/scan/BleScanPresenter;->onScanning(Lcom/clj/fastble/data/BleDevice;)V

    return-void
.end method
