.class public Lcom/living/emo/util/WifiCmd;
.super Ljava/lang/Object;
.source "WifiCmd.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "zxl::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/living/emo/util/WifiCmd;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/living/emo/util/WifiCmd;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs requestCmd(I[I)[B
    .locals 5

    .line 22
    new-instance v0, Lcom/living/emo/model/SendConfig;

    invoke-direct {v0}, Lcom/living/emo/model/SendConfig;-><init>()V

    .line 23
    new-instance v1, Lcom/living/emo/model/SendConfig$DataBean;

    invoke-direct {v1}, Lcom/living/emo/model/SendConfig$DataBean;-><init>()V

    .line 24
    invoke-virtual {v0, p0}, Lcom/living/emo/model/SendConfig;->setType(I)V

    .line 25
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 26
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 28
    aget v4, p1, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {v1, p0}, Lcom/living/emo/model/SendConfig$DataBean;->setRequest(Ljava/util/List;)V

    .line 31
    invoke-virtual {v0, v1}, Lcom/living/emo/model/SendConfig;->setData(Lcom/living/emo/model/SendConfig$DataBean;)V

    .line 32
    new-instance p0, Lcom/google/gson/Gson;

    invoke-direct {p0}, Lcom/google/gson/Gson;-><init>()V

    .line 33
    invoke-virtual {p0, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 34
    sget-object p1, Lcom/living/emo/util/WifiCmd;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestCmd: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-static {p0}, Lcom/living/emo/util/ByteUtil;->strToByteArray(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static sendWifiSetCmd(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 2

    .line 39
    new-instance v0, Lcom/living/emo/model/SetWifiConfig;

    invoke-direct {v0}, Lcom/living/emo/model/SetWifiConfig;-><init>()V

    .line 40
    new-instance v1, Lcom/living/emo/model/SetWifiConfig$DataBean;

    invoke-direct {v1}, Lcom/living/emo/model/SetWifiConfig$DataBean;-><init>()V

    .line 42
    invoke-virtual {v1, p0}, Lcom/living/emo/model/SetWifiConfig$DataBean;->setSsid(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v1, p1}, Lcom/living/emo/model/SetWifiConfig$DataBean;->setPassword(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v0, v1}, Lcom/living/emo/model/SetWifiConfig;->setData(Lcom/living/emo/model/SetWifiConfig$DataBean;)V

    .line 45
    new-instance p0, Lcom/google/gson/Gson;

    invoke-direct {p0}, Lcom/google/gson/Gson;-><init>()V

    .line 46
    invoke-virtual {p0, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 47
    sget-object p1, Lcom/living/emo/util/WifiCmd;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "objectToByte: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-static {p0}, Lcom/living/emo/util/ByteUtil;->strToByteArray(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method
