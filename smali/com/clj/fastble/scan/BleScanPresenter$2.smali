.class Lcom/clj/fastble/scan/BleScanPresenter$2;
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


# direct methods
.method constructor <init>(Lcom/clj/fastble/scan/BleScanPresenter;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/clj/fastble/scan/BleScanPresenter$2;->this$0:Lcom/clj/fastble/scan/BleScanPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 154
    invoke-static {}, Lcom/clj/fastble/scan/BleScanner;->getInstance()Lcom/clj/fastble/scan/BleScanner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clj/fastble/scan/BleScanner;->stopLeScan()V

    return-void
.end method
