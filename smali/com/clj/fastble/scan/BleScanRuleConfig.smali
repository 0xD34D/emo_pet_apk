.class public Lcom/clj/fastble/scan/BleScanRuleConfig;
.super Ljava/lang/Object;
.source "BleScanRuleConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/clj/fastble/scan/BleScanRuleConfig$Builder;
    }
.end annotation


# instance fields
.field private mAutoConnect:Z

.field private mDeviceMac:Ljava/lang/String;

.field private mDeviceNames:[Ljava/lang/String;

.field private mFuzzy:Z

.field private mScanTimeOut:J

.field private mServiceUuids:[Ljava/util/UUID;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/clj/fastble/scan/BleScanRuleConfig;->mServiceUuids:[Ljava/util/UUID;

    .line 11
    iput-object v0, p0, Lcom/clj/fastble/scan/BleScanRuleConfig;->mDeviceNames:[Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/clj/fastble/scan/BleScanRuleConfig;->mDeviceMac:Ljava/lang/String;

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/clj/fastble/scan/BleScanRuleConfig;->mAutoConnect:Z

    .line 14
    iput-boolean v0, p0, Lcom/clj/fastble/scan/BleScanRuleConfig;->mFuzzy:Z

    const-wide/16 v0, 0x2710

    .line 15
    iput-wide v0, p0, Lcom/clj/fastble/scan/BleScanRuleConfig;->mScanTimeOut:J

    return-void
.end method

.method static synthetic access$002(Lcom/clj/fastble/scan/BleScanRuleConfig;[Ljava/util/UUID;)[Ljava/util/UUID;
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/clj/fastble/scan/BleScanRuleConfig;->mServiceUuids:[Ljava/util/UUID;

    return-object p1
.end method

.method static synthetic access$102(Lcom/clj/fastble/scan/BleScanRuleConfig;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/clj/fastble/scan/BleScanRuleConfig;->mDeviceNames:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/clj/fastble/scan/BleScanRuleConfig;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/clj/fastble/scan/BleScanRuleConfig;->mDeviceMac:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/clj/fastble/scan/BleScanRuleConfig;Z)Z
    .locals 0

    .line 8
    iput-boolean p1, p0, Lcom/clj/fastble/scan/BleScanRuleConfig;->mAutoConnect:Z

    return p1
.end method

.method static synthetic access$402(Lcom/clj/fastble/scan/BleScanRuleConfig;Z)Z
    .locals 0

    .line 8
    iput-boolean p1, p0, Lcom/clj/fastble/scan/BleScanRuleConfig;->mFuzzy:Z

    return p1
.end method

.method static synthetic access$502(Lcom/clj/fastble/scan/BleScanRuleConfig;J)J
    .locals 0

    .line 8
    iput-wide p1, p0, Lcom/clj/fastble/scan/BleScanRuleConfig;->mScanTimeOut:J

    return-wide p1
.end method


# virtual methods
.method public getDeviceMac()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/clj/fastble/scan/BleScanRuleConfig;->mDeviceMac:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceNames()[Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/clj/fastble/scan/BleScanRuleConfig;->mDeviceNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getScanTimeOut()J
    .locals 2

    .line 38
    iget-wide v0, p0, Lcom/clj/fastble/scan/BleScanRuleConfig;->mScanTimeOut:J

    return-wide v0
.end method

.method public getServiceUuids()[Ljava/util/UUID;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/clj/fastble/scan/BleScanRuleConfig;->mServiceUuids:[Ljava/util/UUID;

    return-object v0
.end method

.method public isAutoConnect()Z
    .locals 1

    .line 30
    iget-boolean v0, p0, Lcom/clj/fastble/scan/BleScanRuleConfig;->mAutoConnect:Z

    return v0
.end method

.method public isFuzzy()Z
    .locals 1

    .line 34
    iget-boolean v0, p0, Lcom/clj/fastble/scan/BleScanRuleConfig;->mFuzzy:Z

    return v0
.end method
