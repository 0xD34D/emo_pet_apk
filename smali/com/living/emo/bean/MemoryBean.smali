.class public Lcom/living/emo/bean/MemoryBean;
.super Ljava/lang/Object;
.source "MemoryBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/living/emo/bean/MemoryBean$MemoryResponse;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static MemoryNotify([BLcom/living/emo/bean/MemoryBean$MemoryResponse;)V
    .locals 5

    const/4 v0, 0x3

    .line 7
    aget-byte v1, p0, v0

    sget-object v2, Lcom/living/emo/util/CommandUtil;->CMD_ORDER_DATA:[I

    aget v0, v2, v0

    if-ne v1, v0, :cond_7

    const/4 v0, 0x4

    .line 8
    aget-byte v1, p0, v0

    sget-object v2, Lcom/living/emo/util/CommandUtil;->CMD_ORDER_DATA:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x5

    if-ne v1, v2, :cond_1

    .line 9
    aget-byte p0, p0, v4

    if-eq p0, v3, :cond_0

    .line 15
    invoke-interface {p1}, Lcom/living/emo/bean/MemoryBean$MemoryResponse;->error()V

    goto :goto_0

    .line 12
    :cond_0
    invoke-interface {p1}, Lcom/living/emo/bean/MemoryBean$MemoryResponse;->gameReady()V

    goto :goto_0

    .line 18
    :cond_1
    aget-byte v1, p0, v0

    sget-object v2, Lcom/living/emo/util/CommandUtil;->CMD_ORDER_DATA:[I

    aget v2, v2, v4

    if-ne v1, v2, :cond_4

    .line 20
    aget-byte p0, p0, v4

    if-eqz p0, :cond_3

    if-eq p0, v3, :cond_2

    .line 30
    invoke-interface {p1}, Lcom/living/emo/bean/MemoryBean$MemoryResponse;->error()V

    goto :goto_0

    .line 23
    :cond_2
    invoke-interface {p1}, Lcom/living/emo/bean/MemoryBean$MemoryResponse;->dance()V

    goto :goto_0

    .line 27
    :cond_3
    invoke-interface {p1}, Lcom/living/emo/bean/MemoryBean$MemoryResponse;->danceError()V

    goto :goto_0

    .line 34
    :cond_4
    aget-byte v1, p0, v0

    sget-object v2, Lcom/living/emo/util/CommandUtil;->CMD_ORDER_DATA:[I

    aget v2, v2, v0

    if-ne v1, v2, :cond_6

    .line 36
    aget-byte p0, p0, v4

    if-eq p0, v3, :cond_5

    goto :goto_0

    .line 39
    :cond_5
    invoke-interface {p1}, Lcom/living/emo/bean/MemoryBean$MemoryResponse;->startGame()V

    goto :goto_0

    .line 43
    :cond_6
    aget-byte p0, p0, v0

    sget-object v0, Lcom/living/emo/util/CommandUtil;->CMD_ORDER_DATA:[I

    aget v0, v0, v3

    if-ne p0, v0, :cond_7

    .line 44
    invoke-interface {p1}, Lcom/living/emo/bean/MemoryBean$MemoryResponse;->gameOver()V

    :cond_7
    :goto_0
    return-void
.end method
