.class public Lcom/clj/fastble/scan/BleScanner;
.super Ljava/lang/Object;
.source "BleScanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/clj/fastble/scan/BleScanner$BleScannerHolder;
    }
.end annotation


# instance fields
.field private mBleScanPresenter:Lcom/clj/fastble/scan/BleScanPresenter;

.field private mBleScanState:Lcom/clj/fastble/data/BleScanState;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    sget-object v0, Lcom/clj/fastble/data/BleScanState;->STATE_IDLE:Lcom/clj/fastble/data/BleScanState;

    iput-object v0, p0, Lcom/clj/fastble/scan/BleScanner;->mBleScanState:Lcom/clj/fastble/data/BleScanState;

    .line 33
    new-instance v0, Lcom/clj/fastble/scan/BleScanner$1;

    invoke-direct {v0, p0}, Lcom/clj/fastble/scan/BleScanner$1;-><init>(Lcom/clj/fastble/scan/BleScanner;)V

    iput-object v0, p0, Lcom/clj/fastble/scan/BleScanner;->mBleScanPresenter:Lcom/clj/fastble/scan/BleScanPresenter;

    return-void
.end method

.method static synthetic access$100(Lcom/clj/fastble/scan/BleScanner;)Lcom/clj/fastble/scan/BleScanPresenter;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/clj/fastble/scan/BleScanner;->mBleScanPresenter:Lcom/clj/fastble/scan/BleScanPresenter;

    return-object p0
.end method

.method public static getInstance()Lcom/clj/fastble/scan/BleScanner;
    .locals 1

    .line 24
    invoke-static {}, Lcom/clj/fastble/scan/BleScanner$BleScannerHolder;->access$000()Lcom/clj/fastble/scan/BleScanner;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized startLeScan([Ljava/util/UUID;[Ljava/lang/String;Ljava/lang/String;ZZJLcom/clj/fastble/callback/BleScanPresenterImp;)V
    .locals 10

    move-object v1, p0

    move-object/from16 v0, p8

    monitor-enter p0

    .line 112
    :try_start_0
    iget-object v2, v1, Lcom/clj/fastble/scan/BleScanner;->mBleScanState:Lcom/clj/fastble/data/BleScanState;

    sget-object v3, Lcom/clj/fastble/data/BleScanState;->STATE_IDLE:Lcom/clj/fastble/data/BleScanState;

    if-eq v2, v3, :cond_1

    const-string v2, "scan action already exists, complete the previous scan action first"

    .line 113
    invoke-static {v2}, Lcom/clj/fastble/utils/BleLog;->w(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    .line 115
    invoke-interface {v0, v2}, Lcom/clj/fastble/callback/BleScanPresenterImp;->onScanStarted(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    :cond_0
    monitor-exit p0

    return-void

    .line 120
    :cond_1
    :try_start_1
    iget-object v2, v1, Lcom/clj/fastble/scan/BleScanner;->mBleScanPresenter:Lcom/clj/fastble/scan/BleScanPresenter;

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-wide/from16 v7, p6

    move-object/from16 v9, p8

    invoke-virtual/range {v2 .. v9}, Lcom/clj/fastble/scan/BleScanPresenter;->prepare([Ljava/lang/String;Ljava/lang/String;ZZJLcom/clj/fastble/callback/BleScanPresenterImp;)V

    .line 122
    invoke-static {}, Lcom/clj/fastble/BleManager;->getInstance()Lcom/clj/fastble/BleManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clj/fastble/BleManager;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iget-object v2, v1, Lcom/clj/fastble/scan/BleScanner;->mBleScanPresenter:Lcom/clj/fastble/scan/BleScanPresenter;

    move-object v3, p1

    .line 123
    invoke-virtual {v0, p1, v2}, Landroid/bluetooth/BluetoothAdapter;->startLeScan([Ljava/util/UUID;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 124
    sget-object v2, Lcom/clj/fastble/data/BleScanState;->STATE_SCANNING:Lcom/clj/fastble/data/BleScanState;

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/clj/fastble/data/BleScanState;->STATE_IDLE:Lcom/clj/fastble/data/BleScanState;

    :goto_0
    iput-object v2, v1, Lcom/clj/fastble/scan/BleScanner;->mBleScanState:Lcom/clj/fastble/data/BleScanState;

    .line 125
    iget-object v2, v1, Lcom/clj/fastble/scan/BleScanner;->mBleScanPresenter:Lcom/clj/fastble/scan/BleScanPresenter;

    invoke-virtual {v2, v0}, Lcom/clj/fastble/scan/BleScanPresenter;->notifyScanStarted(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public getScanState()Lcom/clj/fastble/data/BleScanState;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/clj/fastble/scan/BleScanner;->mBleScanState:Lcom/clj/fastble/data/BleScanState;

    return-object v0
.end method

.method public scan([Ljava/util/UUID;[Ljava/lang/String;Ljava/lang/String;ZJLcom/clj/fastble/callback/BleScanCallback;)V
    .locals 9

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-wide v6, p5

    move-object/from16 v8, p7

    .line 100
    invoke-direct/range {v0 .. v8}, Lcom/clj/fastble/scan/BleScanner;->startLeScan([Ljava/util/UUID;[Ljava/lang/String;Ljava/lang/String;ZZJLcom/clj/fastble/callback/BleScanPresenterImp;)V

    return-void
.end method

.method public scanAndConnect([Ljava/util/UUID;[Ljava/lang/String;Ljava/lang/String;ZJLcom/clj/fastble/callback/BleScanAndConnectCallback;)V
    .locals 9

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-wide v6, p5

    move-object/from16 v8, p7

    .line 106
    invoke-direct/range {v0 .. v8}, Lcom/clj/fastble/scan/BleScanner;->startLeScan([Ljava/util/UUID;[Ljava/lang/String;Ljava/lang/String;ZZJLcom/clj/fastble/callback/BleScanPresenterImp;)V

    return-void
.end method

.method public declared-synchronized stopLeScan()V
    .locals 2

    monitor-enter p0

    .line 129
    :try_start_0
    invoke-static {}, Lcom/clj/fastble/BleManager;->getInstance()Lcom/clj/fastble/BleManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clj/fastble/BleManager;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/clj/fastble/scan/BleScanner;->mBleScanPresenter:Lcom/clj/fastble/scan/BleScanPresenter;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    .line 130
    sget-object v0, Lcom/clj/fastble/data/BleScanState;->STATE_IDLE:Lcom/clj/fastble/data/BleScanState;

    iput-object v0, p0, Lcom/clj/fastble/scan/BleScanner;->mBleScanState:Lcom/clj/fastble/data/BleScanState;

    .line 131
    iget-object v0, p0, Lcom/clj/fastble/scan/BleScanner;->mBleScanPresenter:Lcom/clj/fastble/scan/BleScanPresenter;

    invoke-virtual {v0}, Lcom/clj/fastble/scan/BleScanPresenter;->notifyScanStopped()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
