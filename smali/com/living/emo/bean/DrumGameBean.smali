.class public Lcom/living/emo/bean/DrumGameBean;
.super Ljava/lang/Object;
.source "DrumGameBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/living/emo/bean/DrumGameBean$DrumGameResponse;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static drumNotify([BLcom/living/emo/bean/DrumGameBean$DrumGameResponse;)V
    .locals 7

    const/4 v0, 0x3

    .line 10
    aget-byte v1, p0, v0

    sget-object v2, Lcom/living/emo/util/CommandUtil;->CMD_ORDER_DATA:[I

    aget v2, v2, v0

    if-ne v1, v2, :cond_b

    const/4 v1, 0x4

    .line 11
    aget-byte v2, p0, v1

    sget-object v3, Lcom/living/emo/util/CommandUtil;->CMD_ORDER_DATA:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    const/4 v5, 0x1

    const/4 v6, 0x5

    if-ne v2, v3, :cond_1

    .line 12
    aget-byte p0, p0, v6

    if-eq p0, v5, :cond_0

    .line 18
    invoke-interface {p1}, Lcom/living/emo/bean/DrumGameBean$DrumGameResponse;->error()V

    goto :goto_0

    .line 15
    :cond_0
    invoke-interface {p1}, Lcom/living/emo/bean/DrumGameBean$DrumGameResponse;->gameReady()V

    goto :goto_0

    .line 21
    :cond_1
    aget-byte v2, p0, v1

    sget-object v3, Lcom/living/emo/util/CommandUtil;->CMD_ORDER_DATA:[I

    aget v3, v3, v0

    if-ne v2, v3, :cond_4

    .line 23
    aget-byte p0, p0, v6

    if-eqz p0, :cond_3

    if-eq p0, v5, :cond_2

    .line 33
    invoke-interface {p1}, Lcom/living/emo/bean/DrumGameBean$DrumGameResponse;->error()V

    goto :goto_0

    .line 26
    :cond_2
    invoke-interface {p1}, Lcom/living/emo/bean/DrumGameBean$DrumGameResponse;->animSuccess()V

    goto :goto_0

    .line 30
    :cond_3
    invoke-interface {p1}, Lcom/living/emo/bean/DrumGameBean$DrumGameResponse;->animError()V

    goto :goto_0

    .line 37
    :cond_4
    aget-byte v2, p0, v1

    sget-object v3, Lcom/living/emo/util/CommandUtil;->CMD_ORDER_DATA:[I

    aget v3, v3, v1

    if-ne v2, v3, :cond_6

    .line 39
    aget-byte p0, p0, v6

    if-eq p0, v5, :cond_5

    goto :goto_0

    .line 42
    :cond_5
    invoke-interface {p1}, Lcom/living/emo/bean/DrumGameBean$DrumGameResponse;->startGame()V

    goto :goto_0

    .line 46
    :cond_6
    aget-byte v2, p0, v1

    sget-object v3, Lcom/living/emo/util/CommandUtil;->CMD_ORDER_DATA:[I

    aget v3, v3, v5

    if-ne v2, v3, :cond_7

    .line 48
    invoke-interface {p1}, Lcom/living/emo/bean/DrumGameBean$DrumGameResponse;->gameOver()V

    goto :goto_0

    .line 49
    :cond_7
    aget-byte v2, p0, v1

    sget-object v3, Lcom/living/emo/util/CommandUtil;->CMD_ORDER_DATA:[I

    aget v3, v3, v6

    if-ne v2, v3, :cond_b

    .line 50
    aget-byte p0, p0, v6

    if-eq p0, v4, :cond_a

    if-eq p0, v0, :cond_9

    if-eq p0, v1, :cond_8

    goto :goto_0

    .line 61
    :cond_8
    invoke-interface {p1}, Lcom/living/emo/bean/DrumGameBean$DrumGameResponse;->legShaking()V

    goto :goto_0

    .line 57
    :cond_9
    invoke-interface {p1}, Lcom/living/emo/bean/DrumGameBean$DrumGameResponse;->dazzling()V

    goto :goto_0

    .line 53
    :cond_a
    invoke-interface {p1}, Lcom/living/emo/bean/DrumGameBean$DrumGameResponse;->dance()V

    :cond_b
    :goto_0
    return-void
.end method
