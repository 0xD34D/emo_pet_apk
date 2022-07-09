.class public Lcom/living/emo/util/CommandUtil;
.super Ljava/lang/Object;
.source "CommandUtil.java"


# static fields
.field public static final CMD_CATEGORY:[I

.field public static final CMD_GAME_NUMBER:[I

.field public static final CMD_ORDER:[I

.field public static final CMD_ORDER_DATA:[I

.field private static final MAX_BYTE_NUMBER:I = 0xff

.field private static final TAG:Ljava/lang/String;

.field private static sort:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x6

    new-array v0, v0, [I

    .line 12
    fill-array-data v0, :array_0

    sput-object v0, Lcom/living/emo/util/CommandUtil;->CMD_CATEGORY:[I

    const/16 v0, 0x11

    new-array v1, v0, [I

    .line 15
    fill-array-data v1, :array_1

    sput-object v1, Lcom/living/emo/util/CommandUtil;->CMD_ORDER:[I

    new-array v0, v0, [I

    .line 19
    fill-array-data v0, :array_2

    sput-object v0, Lcom/living/emo/util/CommandUtil;->CMD_ORDER_DATA:[I

    const/4 v0, 0x7

    new-array v0, v0, [I

    .line 33
    fill-array-data v0, :array_3

    sput-object v0, Lcom/living/emo/util/CommandUtil;->CMD_GAME_NUMBER:[I

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "zxl::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/living/emo/util/CommandUtil;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/living/emo/util/CommandUtil;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    .line 38
    sput v0, Lcom/living/emo/util/CommandUtil;->sort:I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
    .end array-data

    :array_3
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static achiev(I)[B
    .locals 6

    const/4 v0, 0x5

    new-array v1, v0, [I

    .line 144
    sget-object v2, Lcom/living/emo/util/CommandUtil;->CMD_CATEGORY:[I

    const/4 v3, 0x3

    aget v2, v2, v3

    const/4 v4, 0x0

    aput v2, v1, v4

    sget-object v2, Lcom/living/emo/util/CommandUtil;->CMD_ORDER:[I

    aget v0, v2, v0

    const/4 v2, 0x1

    aput v0, v1, v2

    sget-object v0, Lcom/living/emo/util/CommandUtil;->CMD_ORDER_DATA:[I

    const/4 v4, 0x6

    aget v4, v0, v4

    const/4 v5, 0x2

    aput v4, v1, v5

    aget v0, v0, v2

    aput v0, v1, v3

    const/4 v0, 0x4

    aput p0, v1, v0

    invoke-static {v1}, Lcom/living/emo/util/CommandUtil;->cmd([I)[B

    move-result-object p0

    return-object p0
.end method

.method public static back()[B
    .locals 4

    const/4 v0, 0x3

    new-array v1, v0, [I

    .line 212
    sget-object v2, Lcom/living/emo/util/CommandUtil;->CMD_CATEGORY:[I

    aget v0, v2, v0

    const/4 v2, 0x0

    aput v0, v1, v2

    sget-object v0, Lcom/living/emo/util/CommandUtil;->CMD_ORDER_DATA:[I

    const/4 v2, 0x4

    aget v2, v0, v2

    const/4 v3, 0x1

    aput v2, v1, v3

    const/4 v2, 0x6

    aget v0, v0, v2

    const/4 v2, 0x2

    aput v0, v1, v2

    invoke-static {v1}, Lcom/living/emo/util/CommandUtil;->noReply([I)[B

    move-result-object v0

    return-object v0
.end method

.method public static bytesToHexString([B)Ljava/lang/String;
    .locals 6

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p0, :cond_3

    .line 60
    array-length v1, p0

    if-gtz v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    .line 63
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_2

    .line 64
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    .line 65
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 66
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_1

    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 71
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static varargs cmd([I)[B
    .locals 6

    .line 43
    sget v0, Lcom/living/emo/util/CommandUtil;->sort:I

    const/4 v1, 0x1

    const/16 v2, 0xff

    if-lt v0, v2, :cond_0

    .line 44
    sput v1, Lcom/living/emo/util/CommandUtil;->sort:I

    :cond_0
    const/16 v0, 0x14

    new-array v0, v0, [B

    const/16 v2, -0x23

    const/4 v3, 0x0

    aput-byte v2, v0, v3

    const/16 v2, -0x34

    aput-byte v2, v0, v1

    const/4 v2, 0x2

    .line 49
    sget v4, Lcom/living/emo/util/CommandUtil;->sort:I

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    .line 50
    array-length v2, p0

    :goto_0
    if-ge v3, v2, :cond_1

    add-int/lit8 v4, v3, 0x3

    .line 52
    aget v5, p0, v3

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 54
    :cond_1
    sget p0, Lcom/living/emo/util/CommandUtil;->sort:I

    add-int/2addr p0, v1

    sput p0, Lcom/living/emo/util/CommandUtil;->sort:I

    .line 55
    sget-object p0, Lcom/living/emo/util/CommandUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "app: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/living/emo/util/CommandUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static varargs cmd0([I)[B
    .locals 6

    .line 74
    sget v0, Lcom/living/emo/util/CommandUtil;->sort:I

    const/4 v1, 0x0

    const/16 v2, 0xff

    if-lt v0, v2, :cond_0

    .line 75
    sput v1, Lcom/living/emo/util/CommandUtil;->sort:I

    :cond_0
    const/16 v0, 0x14

    new-array v0, v0, [B

    const/16 v2, -0x23

    aput-byte v2, v0, v1

    const/16 v2, -0x34

    const/4 v3, 0x1

    aput-byte v2, v0, v3

    const/4 v2, 0x2

    .line 80
    sget v4, Lcom/living/emo/util/CommandUtil;->sort:I

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    .line 81
    array-length v2, p0

    :goto_0
    if-ge v1, v2, :cond_1

    add-int/lit8 v4, v1, 0x3

    .line 83
    aget v5, p0, v1

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 85
    :cond_1
    sget p0, Lcom/living/emo/util/CommandUtil;->sort:I

    add-int/2addr p0, v3

    sput p0, Lcom/living/emo/util/CommandUtil;->sort:I

    .line 86
    sget-object p0, Lcom/living/emo/util/CommandUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cmd0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/living/emo/util/CommandUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static varargs dance([I)[B
    .locals 6

    const/4 v0, 0x5

    new-array v1, v0, [I

    .line 140
    sget-object v2, Lcom/living/emo/util/CommandUtil;->CMD_CATEGORY:[I

    const/4 v3, 0x3

    aget v2, v2, v3

    const/4 v4, 0x0

    aput v2, v1, v4

    sget-object v2, Lcom/living/emo/util/CommandUtil;->CMD_ORDER:[I

    aget v0, v2, v0

    const/4 v2, 0x1

    aput v0, v1, v2

    sget-object v0, Lcom/living/emo/util/CommandUtil;->CMD_ORDER_DATA:[I

    const/4 v5, 0x2

    aget v0, v0, v5

    aput v0, v1, v5

    aget v0, p0, v4

    aput v0, v1, v3

    aget p0, p0, v2

    const/4 v0, 0x4

    aput p0, v1, v0

    invoke-static {v1}, Lcom/living/emo/util/CommandUtil;->cmd([I)[B

    move-result-object p0

    return-object p0
.end method

.method public static varargs dazzling([I)[B
    .locals 6

    const/4 v0, 0x5

    new-array v1, v0, [I

    .line 130
    sget-object v2, Lcom/living/emo/util/CommandUtil;->CMD_CATEGORY:[I

    const/4 v3, 0x3

    aget v2, v2, v3

    const/4 v4, 0x0

    aput v2, v1, v4

    sget-object v2, Lcom/living/emo/util/CommandUtil;->CMD_ORDER:[I

    aget v0, v2, v0

    const/4 v2, 0x1

    aput v0, v1, v2

    sget-object v0, Lcom/living/emo/util/CommandUtil;->CMD_ORDER_DATA:[I

    aget v0, v0, v3

    const/4 v5, 0x2

    aput v0, v1, v5

    aget v0, p0, v4

    aput v0, v1, v3

    aget p0, p0, v2

    const/4 v0, 0x4

    aput p0, v1, v0

    invoke-static {v1}, Lcom/living/emo/util/CommandUtil;->cmd([I)[B

    move-result-object p0

    return-object p0
.end method

.method public static enterApp(I)[B
    .locals 4

    const/4 v0, 0x3

    new-array v1, v0, [I

    .line 96
    sget-object v2, Lcom/living/emo/util/CommandUtil;->CMD_CATEGORY:[I

    aget v0, v2, v0

    const/4 v2, 0x0

    aput v0, v1, v2

    sget-object v0, Lcom/living/emo/util/CommandUtil;->CMD_ORDER:[I

    const/4 v2, 0x2

    aget v0, v0, v2

    const/4 v3, 0x1

    aput v0, v1, v3

    sget-object v0, Lcom/living/emo/util/CommandUtil;->CMD_ORDER_DATA:[I

    aget p0, v0, p0

    aput p0, v1, v2

    invoke-static {v1}, Lcom/living/emo/util/CommandUtil;->cmd([I)[B

    move-result-object p0

    return-object p0
.end method

.method public static enterSet()[B
    .locals 4

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 163
    sget-object v2, Lcom/living/emo/util/CommandUtil;->CMD_CATEGORY:[I

    const/4 v3, 0x4

    aget v2, v2, v3

    const/4 v3, 0x0

    aput v2, v1, v3

    sget-object v2, Lcom/living/emo/util/CommandUtil;->CMD_ORDER_DATA:[I

    aget v0, v2, v0

    const/4 v2, 0x1

    aput v0, v1, v2

    invoke-static {v1}, Lcom/living/emo/util/CommandUtil;->cmd([I)[B

    move-result-object v0

    return-object v0
.end method

.method public static go()[B
    .locals 4

    const/4 v0, 0x3

    new-array v1, v0, [I

    .line 203
    sget-object v2, Lcom/living/emo/util/CommandUtil;->CMD_CATEGORY:[I

    aget v0, v2, v0

    const/4 v2, 0x0

    aput v0, v1, v2

    sget-object v0, Lcom/living/emo/util/CommandUtil;->CMD_ORDER_DATA:[I

    const/4 v2, 0x4

    aget v2, v0, v2

    const/4 v3, 0x1

    aput v2, v1, v3

    const/4 v2, 0x5

    aget v0, v0, v2

    const/4 v2, 0x2

    aput v0, v1, v2

    invoke-static {v1}, Lcom/living/emo/util/CommandUtil;->noReply([I)[B

    move-result-object v0

    return-object v0
.end method

.method public static left()[B
    .locals 4

    const/4 v0, 0x3

    new-array v1, v0, [I

    .line 221
    sget-object v2, Lcom/living/emo/util/CommandUtil;->CMD_CATEGORY:[I

    aget v0, v2, v0

    const/4 v2, 0x0

    aput v0, v1, v2

    sget-object v0, Lcom/living/emo/util/CommandUtil;->CMD_ORDER_DATA:[I

    const/4 v2, 0x4

    aget v2, v0, v2

    const/4 v3, 0x1

    aput v2, v1, v3

    const/4 v2, 0x7

    aget v0, v0, v2

    const/4 v2, 0x2

    aput v0, v1, v2

    invoke-static {v1}, Lcom/living/emo/util/CommandUtil;->noReply([I)[B

    move-result-object v0

    return-object v0
.end method

.method public static varargs legShaking([I)[B
    .locals 7

    const/4 v0, 0x5

    new-array v1, v0, [I

    .line 135
    sget-object v2, Lcom/living/emo/util/CommandUtil;->CMD_CATEGORY:[I

    const/4 v3, 0x3

    aget v2, v2, v3

    const/4 v4, 0x0

    aput v2, v1, v4

    sget-object v2, Lcom/living/emo/util/CommandUtil;->CMD_ORDER:[I

    aget v0, v2, v0

    const/4 v2, 0x1

    aput v0, v1, v2

    sget-object v0, Lcom/living/emo/util/CommandUtil;->CMD_ORDER_DATA:[I

    const/4 v5, 0x4

    aget v0, v0, v5

    const/4 v6, 0x2

    aput v0, v1, v6

    aget v0, p0, v4

    aput v0, v1, v3

    aget p0, p0, v2

    aput p0, v1, v5

    invoke-static {v1}, Lcom/living/emo/util/CommandUtil;->cmd([I)[B

    move-result-object p0

    return-object p0
.end method

.method public static varargs lightOnOrOff([I)[B
    .locals 7

    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 176
    sget-object v1, Lcom/living/emo/util/CommandUtil;->CMD_CATEGORY:[I

    const/4 v2, 0x4

    aget v1, v1, v2

    const/4 v3, 0x0

    aput v1, v0, v3

    sget-object v1, Lcom/living/emo/util/CommandUtil;->CMD_ORDER_DATA:[I

    const/4 v4, 0x3

    aget v5, v1, v4

    const/4 v6, 0x1

    aput v5, v0, v6

    const/4 v5, 0x2

    aget v1, v1, v5

    aput v1, v0, v5

    aget v1, p0, v3

    aput v1, v0, v4

    aget p0, p0, v6

    aput p0, v0, v2

    invoke-static {v0}, Lcom/living/emo/util/CommandUtil;->cmd([I)[B

    move-result-object p0

    return-object p0
.end method

.method public static memoryDance([I)[B
    .locals 4

    const/4 v0, 0x3

    new-array v1, v0, [I

    .line 153
    sget-object v2, Lcom/living/emo/util/CommandUtil;->CMD_CATEGORY:[I

    aget v0, v2, v0

    const/4 v2, 0x0

    aput v0, v1, v2

    sget-object v0, Lcom/living/emo/util/CommandUtil;->CMD_ORDER:[I

    const/4 v3, 0x5

    aget v0, v0, v3

    const/4 v3, 0x1

    aput v0, v1, v3

    sget-object v0, Lcom/living/emo/util/CommandUtil;->CMD_ORDER_DATA:[I

    aget v0, v0, v3

    const/4 v3, 0x2

    aput v0, v1, v3

    invoke-static {v1}, Lcom/living/emo/util/CommandUtil;->cmd([I)[B

    move-result-object v0

    .line 154
    array-length v1, p0

    int-to-byte v1, v1

    const/4 v3, 0x6

    aput-byte v1, v0, v3

    .line 155
    :goto_0
    array-length v1, p0

    if-ge v2, v1, :cond_0

    add-int/lit8 v1, v2, 0x7

    .line 156
    aget v3, p0, v2

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 158
    :cond_0
    sget-object p0, Lcom/living/emo/util/CommandUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "app:=>memoryDance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/living/emo/util/CommandUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static varargs noReply([I)[B
    .locals 5

    const/16 v0, 0x14

    new-array v0, v0, [B

    const/16 v1, -0x23

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    const/16 v1, -0x34

    const/4 v3, 0x1

    aput-byte v1, v0, v3

    const/4 v1, 0x2

    aput-byte v2, v0, v1

    .line 189
    array-length v1, p0

    :goto_0
    if-ge v2, v1, :cond_0

    add-int/lit8 v3, v2, 0x3

    .line 191
    aget v4, p0, v2

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 193
    :cond_0
    sget-object p0, Lcom/living/emo/util/CommandUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "app: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/living/emo/util/CommandUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static outApp()[B
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 101
    sget-object v1, Lcom/living/emo/util/CommandUtil;->CMD_CATEGORY:[I

    const/4 v2, 0x3

    aget v1, v1, v2

    const/4 v2, 0x0

    aput v1, v0, v2

    sget-object v1, Lcom/living/emo/util/CommandUtil;->CMD_ORDER:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    aput v1, v0, v2

    invoke-static {v0}, Lcom/living/emo/util/CommandUtil;->cmd0([I)[B

    move-result-object v0

    return-object v0
.end method

.method public static outSet()[B
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 167
    sget-object v1, Lcom/living/emo/util/CommandUtil;->CMD_CATEGORY:[I

    const/4 v2, 0x4

    aget v1, v1, v2

    const/4 v2, 0x0

    aput v1, v0, v2

    sget-object v1, Lcom/living/emo/util/CommandUtil;->CMD_ORDER_DATA:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    aput v1, v0, v2

    invoke-static {v0}, Lcom/living/emo/util/CommandUtil;->cmd([I)[B

    move-result-object v0

    return-object v0
.end method

.method public static varargs playAnim([I)[B
    .locals 5

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 106
    sget-object v1, Lcom/living/emo/util/CommandUtil;->CMD_CATEGORY:[I

    const/4 v2, 0x3

    aget v1, v1, v2

    const/4 v3, 0x0

    aput v1, v0, v3

    sget-object v1, Lcom/living/emo/util/CommandUtil;->CMD_ORDER:[I

    aget v1, v1, v2

    const/4 v4, 0x1

    aput v1, v0, v4

    aget v1, p0, v3

    const/4 v3, 0x2

    aput v1, v0, v3

    aget p0, p0, v4

    aput p0, v0, v2

    invoke-static {v0}, Lcom/living/emo/util/CommandUtil;->cmd([I)[B

    move-result-object p0

    return-object p0
.end method

.method public static varargs playAnimNoReply([I)[B
    .locals 5

    const/16 v0, 0x14

    new-array v0, v0, [B

    const/16 v1, -0x23

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    const/16 v1, -0x34

    const/4 v3, 0x1

    aput-byte v1, v0, v3

    const/4 v1, 0x2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    aput-byte v1, v0, v1

    const/4 v3, 0x4

    aput-byte v1, v0, v3

    .line 118
    array-length v1, p0

    :goto_0
    if-ge v2, v1, :cond_0

    add-int/lit8 v3, v2, 0x5

    .line 121
    aget v4, p0, v2

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 124
    :cond_0
    sget-object p0, Lcom/living/emo/util/CommandUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playAnimNoReply: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/living/emo/util/CommandUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static resetting()[B
    .locals 4

    const/4 v0, 0x3

    new-array v1, v0, [I

    .line 264
    sget-object v2, Lcom/living/emo/util/CommandUtil;->CMD_CATEGORY:[I

    aget v0, v2, v0

    const/4 v2, 0x0

    aput v0, v1, v2

    sget-object v0, Lcom/living/emo/util/CommandUtil;->CMD_ORDER_DATA:[I

    const/4 v2, 0x5

    aget v2, v0, v2

    const/4 v3, 0x1

    aput v2, v1, v3

    const/4 v2, 0x7

    aget v0, v0, v2

    const/4 v2, 0x2

    aput v0, v1, v2

    invoke-static {v1}, Lcom/living/emo/util/CommandUtil;->noReply([I)[B

    move-result-object v0

    return-object v0
.end method

.method public static right()[B
    .locals 4

    const/4 v0, 0x3

    new-array v1, v0, [I

    .line 230
    sget-object v2, Lcom/living/emo/util/CommandUtil;->CMD_CATEGORY:[I

    aget v0, v2, v0

    const/4 v2, 0x0

    aput v0, v1, v2

    sget-object v0, Lcom/living/emo/util/CommandUtil;->CMD_ORDER_DATA:[I

    const/4 v2, 0x4

    aget v2, v0, v2

    const/4 v3, 0x1

    aput v2, v1, v3

    const/16 v2, 0x8

    aget v0, v0, v2

    const/4 v2, 0x2

    aput v0, v1, v2

    invoke-static {v1}, Lcom/living/emo/util/CommandUtil;->noReply([I)[B

    move-result-object v0

    return-object v0
.end method

.method public static startGame()[B
    .locals 3

    const/4 v0, 0x3

    new-array v1, v0, [I

    .line 91
    sget-object v2, Lcom/living/emo/util/CommandUtil;->CMD_CATEGORY:[I

    aget v0, v2, v0

    const/4 v2, 0x0

    aput v0, v1, v2

    sget-object v0, Lcom/living/emo/util/CommandUtil;->CMD_ORDER:[I

    const/4 v2, 0x4

    aget v0, v0, v2

    const/4 v2, 0x1

    aput v0, v1, v2

    sget-object v0, Lcom/living/emo/util/CommandUtil;->CMD_ORDER_DATA:[I

    aget v0, v0, v2

    const/4 v2, 0x2

    aput v0, v1, v2

    invoke-static {v1}, Lcom/living/emo/util/CommandUtil;->cmd([I)[B

    move-result-object v0

    return-object v0
.end method

.method public static statusOnOff(I)[B
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 248
    sget-object v1, Lcom/living/emo/util/CommandUtil;->CMD_CATEGORY:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    aput v1, v0, v2

    sget-object v1, Lcom/living/emo/util/CommandUtil;->CMD_ORDER_DATA:[I

    aget v1, v1, v2

    const/4 v2, 0x1

    aput v1, v0, v2

    const/4 v1, 0x2

    aput p0, v0, v1

    invoke-static {v0}, Lcom/living/emo/util/CommandUtil;->cmd([I)[B

    move-result-object p0

    return-object p0
.end method

.method public static stay()[B
    .locals 3

    const/4 v0, 0x3

    new-array v1, v0, [I

    .line 148
    sget-object v2, Lcom/living/emo/util/CommandUtil;->CMD_CATEGORY:[I

    aget v0, v2, v0

    const/4 v2, 0x0

    aput v0, v1, v2

    sget-object v0, Lcom/living/emo/util/CommandUtil;->CMD_ORDER:[I

    const/4 v2, 0x4

    aget v0, v0, v2

    const/4 v2, 0x1

    aput v0, v1, v2

    sget-object v0, Lcom/living/emo/util/CommandUtil;->CMD_ORDER_DATA:[I

    const/4 v2, 0x2

    aget v0, v0, v2

    aput v0, v1, v2

    invoke-static {v1}, Lcom/living/emo/util/CommandUtil;->cmd([I)[B

    move-result-object v0

    return-object v0
.end method

.method public static stop()[B
    .locals 4

    const/4 v0, 0x3

    new-array v1, v0, [I

    .line 238
    sget-object v2, Lcom/living/emo/util/CommandUtil;->CMD_CATEGORY:[I

    aget v0, v2, v0

    const/4 v2, 0x0

    aput v0, v1, v2

    sget-object v0, Lcom/living/emo/util/CommandUtil;->CMD_ORDER_DATA:[I

    const/4 v2, 0x4

    aget v2, v0, v2

    const/4 v3, 0x1

    aput v2, v1, v3

    const/16 v2, 0x9

    aget v0, v0, v2

    const/4 v2, 0x2

    aput v0, v1, v2

    invoke-static {v1}, Lcom/living/emo/util/CommandUtil;->noReply([I)[B

    move-result-object v0

    return-object v0
.end method

.method public static syncAOnOff(I)[B
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 256
    sget-object v1, Lcom/living/emo/util/CommandUtil;->CMD_CATEGORY:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    const/4 v3, 0x0

    aput v1, v0, v3

    sget-object v1, Lcom/living/emo/util/CommandUtil;->CMD_ORDER_DATA:[I

    aget v1, v1, v3

    const/4 v3, 0x1

    aput v1, v0, v3

    aput p0, v0, v2

    invoke-static {v0}, Lcom/living/emo/util/CommandUtil;->cmd([I)[B

    move-result-object p0

    return-object p0
.end method

.method public static timeout()[B
    .locals 4

    const/4 v0, 0x3

    new-array v1, v0, [I

    .line 271
    sget-object v2, Lcom/living/emo/util/CommandUtil;->CMD_CATEGORY:[I

    aget v0, v2, v0

    const/4 v2, 0x0

    aput v0, v1, v2

    sget-object v0, Lcom/living/emo/util/CommandUtil;->CMD_ORDER_DATA:[I

    const/4 v2, 0x5

    aget v2, v0, v2

    const/4 v3, 0x1

    aput v2, v1, v3

    const/16 v2, 0x8

    aget v0, v0, v2

    const/4 v2, 0x2

    aput v0, v1, v2

    invoke-static {v1}, Lcom/living/emo/util/CommandUtil;->noReply([I)[B

    move-result-object v0

    return-object v0
.end method
