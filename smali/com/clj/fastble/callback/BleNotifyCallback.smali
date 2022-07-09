.class public abstract Lcom/clj/fastble/callback/BleNotifyCallback;
.super Lcom/clj/fastble/callback/BleBaseCallback;
.source "BleNotifyCallback.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/clj/fastble/callback/BleBaseCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onCharacteristicChanged([B)V
.end method

.method public abstract onNotifyFailure(Lcom/clj/fastble/exception/BleException;)V
.end method

.method public abstract onNotifySuccess()V
.end method
