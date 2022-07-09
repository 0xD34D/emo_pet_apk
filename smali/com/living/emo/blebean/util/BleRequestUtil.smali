.class public Lcom/living/emo/blebean/util/BleRequestUtil;
.super Ljava/lang/Object;
.source "BleRequestUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static alarm()[B
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x6

    aput v2, v0, v1

    .line 65
    invoke-static {v0}, Lcom/living/emo/blebean/util/BleRequestUtil;->request([I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/living/emo/util/ByteUtil;->strToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static alexa()[B
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x4

    aput v2, v0, v1

    .line 57
    invoke-static {v0}, Lcom/living/emo/blebean/util/BleRequestUtil;->request([I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/living/emo/util/ByteUtil;->strToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static city()[B
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x7

    aput v2, v0, v1

    .line 69
    invoke-static {v0}, Lcom/living/emo/blebean/util/BleRequestUtil;->request([I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/living/emo/util/ByteUtil;->strToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static danceList()[B
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xa

    aput v2, v0, v1

    .line 89
    invoke-static {v0}, Lcom/living/emo/blebean/util/BleRequestUtil;->request([I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/living/emo/util/ByteUtil;->strToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static deviceid()[B
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    .line 38
    invoke-static {v0}, Lcom/living/emo/blebean/util/BleRequestUtil;->request([I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/living/emo/util/ByteUtil;->strToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static light()[B
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x5

    aput v2, v0, v1

    .line 61
    invoke-static {v0}, Lcom/living/emo/blebean/util/BleRequestUtil;->request([I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/living/emo/util/ByteUtil;->strToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static network()[B
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x2

    aput v2, v0, v1

    .line 47
    invoke-static {v0}, Lcom/living/emo/blebean/util/BleRequestUtil;->request([I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/living/emo/util/ByteUtil;->strToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static objectToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 93
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static personality()[B
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xb

    aput v2, v0, v1

    .line 85
    invoke-static {v0}, Lcom/living/emo/blebean/util/BleRequestUtil;->request([I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/living/emo/util/ByteUtil;->strToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static preference()[B
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xc

    aput v2, v0, v1

    .line 77
    invoke-static {v0}, Lcom/living/emo/blebean/util/BleRequestUtil;->request([I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/living/emo/util/ByteUtil;->strToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static varargs request([I)Ljava/lang/String;
    .locals 5

    .line 22
    new-instance v0, Lcom/living/emo/blebean/config/RequestConfig;

    invoke-direct {v0}, Lcom/living/emo/blebean/config/RequestConfig;-><init>()V

    const-string v1, "sta_req"

    .line 23
    invoke-virtual {v0, v1}, Lcom/living/emo/blebean/config/RequestConfig;->setType(Ljava/lang/String;)V

    .line 24
    new-instance v1, Lcom/living/emo/blebean/config/RequestConfig$DataBean;

    invoke-direct {v1}, Lcom/living/emo/blebean/config/RequestConfig$DataBean;-><init>()V

    .line 25
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 26
    invoke-interface {v2}, Ljava/util/List;->clear()V

    const/4 v3, 0x0

    .line 27
    :goto_0
    array-length v4, p0

    if-ge v3, v4, :cond_0

    .line 28
    aget v4, p0, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {v1, v2}, Lcom/living/emo/blebean/config/RequestConfig$DataBean;->setRequest(Ljava/util/List;)V

    .line 31
    invoke-virtual {v0, v1}, Lcom/living/emo/blebean/config/RequestConfig;->setData(Lcom/living/emo/blebean/config/RequestConfig$DataBean;)V

    .line 33
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "app->emo ble data:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/living/emo/blebean/util/BleRequestUtil;->objectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "request json"

    invoke-static {v1, p0}, Lcom/living/emo/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-static {v0}, Lcom/living/emo/blebean/util/BleRequestUtil;->objectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static timezone()[B
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x8

    aput v2, v0, v1

    .line 73
    invoke-static {v0}, Lcom/living/emo/blebean/util/BleRequestUtil;->request([I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/living/emo/util/ByteUtil;->strToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static version()[B
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    .line 42
    invoke-static {v1}, Lcom/living/emo/blebean/util/BleRequestUtil;->request([I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/living/emo/util/ByteUtil;->strToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static versionAndPersonality()[B
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 81
    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/living/emo/blebean/util/BleRequestUtil;->request([I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/living/emo/util/ByteUtil;->strToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 4
        0xb
        0x1
    .end array-data
.end method

.method public static xiaoai()[B
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x3

    aput v2, v0, v1

    .line 52
    invoke-static {v0}, Lcom/living/emo/blebean/util/BleRequestUtil;->request([I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/living/emo/util/ByteUtil;->strToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method
