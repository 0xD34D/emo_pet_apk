.class public Lcom/living/emo/bean/BleBean;
.super Ljava/lang/Object;
.source "BleBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/living/emo/bean/BleBean$SingletonClassInstance;
    }
.end annotation


# instance fields
.field private bleDevice:Lcom/clj/fastble/data/BleDevice;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/living/emo/bean/BleBean;
    .locals 1

    .line 19
    invoke-static {}, Lcom/living/emo/bean/BleBean$SingletonClassInstance;->access$000()Lcom/living/emo/bean/BleBean;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getBleDevice()Lcom/clj/fastble/data/BleDevice;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/living/emo/bean/BleBean;->bleDevice:Lcom/clj/fastble/data/BleDevice;

    return-object v0
.end method

.method public setBleDevice(Lcom/clj/fastble/data/BleDevice;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/living/emo/bean/BleBean;->bleDevice:Lcom/clj/fastble/data/BleDevice;

    return-void
.end method
