.class public Lcom/living/emo/event/EmoEvent;
.super Ljava/lang/Object;
.source "EmoEvent.java"


# instance fields
.field private data:[B

.field private eight:I

.field private eventNumbering:I

.field private four:I

.field private seven:I


# direct methods
.method public constructor <init>([B)V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/living/emo/event/EmoEvent;->data:[B

    const/4 v0, 0x4

    .line 31
    aget-byte v0, p1, v0

    invoke-static {v0}, Lcom/living/emo/util/ByteUtil;->unsigned(B)I

    move-result v0

    iput v0, p0, Lcom/living/emo/event/EmoEvent;->four:I

    const/4 v0, 0x6

    .line 33
    aget-byte v1, p1, v0

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 36
    :cond_0
    aget-byte v0, p1, v0

    invoke-static {v0}, Lcom/living/emo/util/ByteUtil;->unsigned(B)I

    move-result v0

    mul-int/lit16 v0, v0, 0x100

    :goto_0
    const/4 v1, 0x5

    .line 38
    aget-byte v1, p1, v1

    invoke-static {v1}, Lcom/living/emo/util/ByteUtil;->unsigned(B)I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lcom/living/emo/event/EmoEvent;->eventNumbering:I

    const/4 v0, 0x7

    .line 39
    aget-byte v0, p1, v0

    iput v0, p0, Lcom/living/emo/event/EmoEvent;->seven:I

    const/16 v0, 0x8

    .line 40
    aget-byte p1, p1, v0

    iput p1, p0, Lcom/living/emo/event/EmoEvent;->eight:I

    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/living/emo/event/EmoEvent;->data:[B

    return-object v0
.end method

.method public getEight()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/living/emo/event/EmoEvent;->eight:I

    return v0
.end method

.method public getEventNumbering()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/living/emo/event/EmoEvent;->eventNumbering:I

    return v0
.end method

.method public getFour()I
    .locals 1

    .line 44
    iget v0, p0, Lcom/living/emo/event/EmoEvent;->four:I

    return v0
.end method

.method public getSeven()I
    .locals 1

    .line 18
    iget v0, p0, Lcom/living/emo/event/EmoEvent;->seven:I

    return v0
.end method

.method public setEight(I)V
    .locals 0

    .line 14
    iput p1, p0, Lcom/living/emo/event/EmoEvent;->eight:I

    return-void
.end method

.method public setSeven(I)V
    .locals 0

    .line 10
    iput p1, p0, Lcom/living/emo/event/EmoEvent;->seven:I

    return-void
.end method
