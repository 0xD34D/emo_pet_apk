.class public Lcom/living/emo/util/ByteUtil;
.super Ljava/lang/Object;
.source "ByteUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.living.emo.util.ByteUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static HexString2Bytes(Ljava/lang/String;)[B
    .locals 4

    if-eqz p0, :cond_2

    .line 54
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 57
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 58
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    const/4 v1, 0x0

    .line 59
    :goto_0
    array-length v2, p0

    div-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_1

    mul-int/lit8 v2, v1, 0x2

    .line 60
    aget-byte v3, p0, v2

    add-int/lit8 v2, v2, 0x1

    aget-byte v2, p0, v2

    invoke-static {v3, v2}, Lcom/living/emo/util/ByteUtil;->uniteBytes(BB)B

    move-result v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static byteMerger([B[BI)[B
    .locals 3

    .line 25
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    sub-int/2addr v0, p2

    new-array v0, v0, [B

    .line 26
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 27
    array-length p0, p0

    array-length v1, p1

    sub-int/2addr v1, p2

    invoke-static {p1, p2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static byteTotal(BB)I
    .locals 0

    .line 7
    invoke-static {p0}, Lcom/living/emo/util/ByteUtil;->unsigned(B)I

    move-result p0

    .line 8
    invoke-static {p1}, Lcom/living/emo/util/ByteUtil;->unsigned(B)I

    move-result p1

    mul-int/lit16 p1, p1, 0x100

    add-int/2addr p0, p1

    return p0
.end method

.method public static strToByteArray(Ljava/lang/String;)[B
    .locals 7

    .line 32
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    .line 34
    div-int/lit16 v1, v0, 0x100

    .line 35
    rem-int/lit16 v2, v0, 0x100

    const/4 v3, 0x4

    new-array v3, v3, [B

    const/16 v4, -0x45

    const/4 v5, 0x0

    aput-byte v4, v3, v5

    const/4 v4, 0x1

    const/16 v6, -0x56

    aput-byte v6, v3, v4

    int-to-byte v4, v2

    const/4 v6, 0x2

    aput-byte v4, v3, v6

    int-to-byte v1, v1

    const/4 v4, 0x3

    aput-byte v1, v3, v4

    .line 41
    sget-object v1, Lcom/living/emo/util/ByteUtil;->TAG:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/living/emo/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/living/emo/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {v3, p0, v5}, Lcom/living/emo/util/ByteUtil;->byteMerger([B[BI)[B

    move-result-object p0

    return-object p0
.end method

.method public static uniteBytes(BB)B
    .locals 6

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x1

    new-array v4, v3, [B

    const/4 v5, 0x0

    aput-byte p0, v4, v5

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Byte;->decode(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object p0

    .line 74
    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    shl-int/lit8 p0, p0, 0x4

    int-to-byte p0, p0

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/String;

    new-array v2, v3, [B

    aput-byte p1, v2, v5

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Byte;->decode(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object p1

    .line 77
    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    xor-int/2addr p0, p1

    int-to-byte p0, p0

    return p0
.end method

.method public static unsigned(B)I
    .locals 0

    if-gez p0, :cond_0

    and-int/lit16 p0, p0, 0xff

    :cond_0
    return p0
.end method
