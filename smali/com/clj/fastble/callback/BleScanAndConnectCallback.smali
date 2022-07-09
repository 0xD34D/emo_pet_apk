.class public abstract Lcom/clj/fastble/callback/BleScanAndConnectCallback;
.super Lcom/clj/fastble/callback/BleGattCallback;
.source "BleScanAndConnectCallback.java"

# interfaces
.implements Lcom/clj/fastble/callback/BleScanPresenterImp;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/clj/fastble/callback/BleGattCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onLeScan(Lcom/clj/fastble/data/BleDevice;)V
    .locals 0

    return-void
.end method

.method public abstract onScanFinished(Lcom/clj/fastble/data/BleDevice;)V
.end method
