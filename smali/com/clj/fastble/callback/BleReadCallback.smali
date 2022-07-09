.class public abstract Lcom/clj/fastble/callback/BleReadCallback;
.super Lcom/clj/fastble/callback/BleBaseCallback;
.source "BleReadCallback.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/clj/fastble/callback/BleBaseCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onReadFailure(Lcom/clj/fastble/exception/BleException;)V
.end method

.method public abstract onReadSuccess([B)V
.end method
