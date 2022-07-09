.class public Lcom/clj/fastble/scan/BleScanRuleConfig$Builder;
.super Ljava/lang/Object;
.source "BleScanRuleConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clj/fastble/scan/BleScanRuleConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAutoConnect:Z

.field private mDeviceMac:Ljava/lang/String;

.field private mDeviceNames:[Ljava/lang/String;

.field private mFuzzy:Z

.field private mServiceUuids:[Ljava/util/UUID;

.field private mTimeOut:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/clj/fastble/scan/BleScanRuleConfig$Builder;->mServiceUuids:[Ljava/util/UUID;

    .line 44
    iput-object v0, p0, Lcom/clj/fastble/scan/BleScanRuleConfig$Builder;->mDeviceNames:[Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lcom/clj/fastble/scan/BleScanRuleConfig$Builder;->mDeviceMac:Ljava/lang/String;

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lcom/clj/fastble/scan/BleScanRuleConfig$Builder;->mAutoConnect:Z

    .line 47
    iput-boolean v0, p0, Lcom/clj/fastble/scan/BleScanRuleConfig$Builder;->mFuzzy:Z

    const-wide/16 v0, 0x2710

    .line 48
    iput-wide v0, p0, Lcom/clj/fastble/scan/BleScanRuleConfig$Builder;->mTimeOut:J

    return-void
.end method


# virtual methods
.method applyConfig(Lcom/clj/fastble/scan/BleScanRuleConfig;)V
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/clj/fastble/scan/BleScanRuleConfig$Builder;->mServiceUuids:[Ljava/util/UUID;

    invoke-static {p1, v0}, Lcom/clj/fastble/scan/BleScanRuleConfig;->access$002(Lcom/clj/fastble/scan/BleScanRuleConfig;[Ljava/util/UUID;)[Ljava/util/UUID;

    .line 78
    iget-object v0, p0, Lcom/clj/fastble/scan/BleScanRuleConfig$Builder;->mDeviceNames:[Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/clj/fastble/scan/BleScanRuleConfig;->access$102(Lcom/clj/fastble/scan/BleScanRuleConfig;[Ljava/lang/String;)[Ljava/lang/String;

    .line 79
    iget-object v0, p0, Lcom/clj/fastble/scan/BleScanRuleConfig$Builder;->mDeviceMac:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/clj/fastble/scan/BleScanRuleConfig;->access$202(Lcom/clj/fastble/scan/BleScanRuleConfig;Ljava/lang/String;)Ljava/lang/String;

    .line 80
    iget-boolean v0, p0, Lcom/clj/fastble/scan/BleScanRuleConfig$Builder;->mAutoConnect:Z

    invoke-static {p1, v0}, Lcom/clj/fastble/scan/BleScanRuleConfig;->access$302(Lcom/clj/fastble/scan/BleScanRuleConfig;Z)Z

    .line 81
    iget-boolean v0, p0, Lcom/clj/fastble/scan/BleScanRuleConfig$Builder;->mFuzzy:Z

    invoke-static {p1, v0}, Lcom/clj/fastble/scan/BleScanRuleConfig;->access$402(Lcom/clj/fastble/scan/BleScanRuleConfig;Z)Z

    .line 82
    iget-wide v0, p0, Lcom/clj/fastble/scan/BleScanRuleConfig$Builder;->mTimeOut:J

    invoke-static {p1, v0, v1}, Lcom/clj/fastble/scan/BleScanRuleConfig;->access$502(Lcom/clj/fastble/scan/BleScanRuleConfig;J)J

    return-void
.end method

.method public build()Lcom/clj/fastble/scan/BleScanRuleConfig;
    .locals 1

    .line 86
    new-instance v0, Lcom/clj/fastble/scan/BleScanRuleConfig;

    invoke-direct {v0}, Lcom/clj/fastble/scan/BleScanRuleConfig;-><init>()V

    .line 87
    invoke-virtual {p0, v0}, Lcom/clj/fastble/scan/BleScanRuleConfig$Builder;->applyConfig(Lcom/clj/fastble/scan/BleScanRuleConfig;)V

    return-object v0
.end method

.method public setAutoConnect(Z)Lcom/clj/fastble/scan/BleScanRuleConfig$Builder;
    .locals 0

    .line 67
    iput-boolean p1, p0, Lcom/clj/fastble/scan/BleScanRuleConfig$Builder;->mAutoConnect:Z

    return-object p0
.end method

.method public setDeviceMac(Ljava/lang/String;)Lcom/clj/fastble/scan/BleScanRuleConfig$Builder;
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/clj/fastble/scan/BleScanRuleConfig$Builder;->mDeviceMac:Ljava/lang/String;

    return-object p0
.end method

.method public varargs setDeviceName(Z[Ljava/lang/String;)Lcom/clj/fastble/scan/BleScanRuleConfig$Builder;
    .locals 0

    .line 56
    iput-boolean p1, p0, Lcom/clj/fastble/scan/BleScanRuleConfig$Builder;->mFuzzy:Z

    .line 57
    iput-object p2, p0, Lcom/clj/fastble/scan/BleScanRuleConfig$Builder;->mDeviceNames:[Ljava/lang/String;

    return-object p0
.end method

.method public setScanTimeOut(J)Lcom/clj/fastble/scan/BleScanRuleConfig$Builder;
    .locals 0

    .line 72
    iput-wide p1, p0, Lcom/clj/fastble/scan/BleScanRuleConfig$Builder;->mTimeOut:J

    return-object p0
.end method

.method public setServiceUuids([Ljava/util/UUID;)Lcom/clj/fastble/scan/BleScanRuleConfig$Builder;
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/clj/fastble/scan/BleScanRuleConfig$Builder;->mServiceUuids:[Ljava/util/UUID;

    return-object p0
.end method
