.class public Lcom/living/emo/bean/HuntBean;
.super Ljava/lang/Object;
.source "HuntBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/living/emo/bean/HuntBean$HuntResponse;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static HuntNotify([BLcom/living/emo/bean/HuntBean$HuntResponse;)V
    .locals 7

    const/4 v0, 0x3

    .line 8
    aget-byte v1, p0, v0

    sget-object v2, Lcom/living/emo/util/CommandUtil;->CMD_ORDER_DATA:[I

    aget v2, v2, v0

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x4

    const/4 v6, 0x5

    if-ne v1, v2, :cond_2

    .line 9
    aget-byte v1, p0, v5

    sget-object v2, Lcom/living/emo/util/CommandUtil;->CMD_ORDER_DATA:[I

    aget v2, v2, v4

    if-ne v1, v2, :cond_1

    .line 10
    aget-byte v1, p0, v6

    if-eq v1, v3, :cond_0

    .line 16
    invoke-interface {p1}, Lcom/living/emo/bean/HuntBean$HuntResponse;->error()V

    goto :goto_0

    .line 13
    :cond_0
    invoke-interface {p1}, Lcom/living/emo/bean/HuntBean$HuntResponse;->gameReady()V

    goto :goto_0

    .line 19
    :cond_1
    aget-byte v1, p0, v5

    sget-object v2, Lcom/living/emo/util/CommandUtil;->CMD_ORDER_DATA:[I

    aget v2, v2, v3

    if-ne v1, v2, :cond_2

    .line 20
    invoke-interface {p1}, Lcom/living/emo/bean/HuntBean$HuntResponse;->gameOver()V

    .line 24
    :cond_2
    :goto_0
    aget-byte v1, p0, v4

    if-nez v1, :cond_5

    aget-byte v1, p0, v0

    sget-object v2, Lcom/living/emo/util/CommandUtil;->CMD_ORDER_DATA:[I

    aget v2, v2, v0

    if-ne v1, v2, :cond_5

    aget-byte v1, p0, v5

    sget-object v2, Lcom/living/emo/util/CommandUtil;->CMD_ORDER_DATA:[I

    aget v2, v2, v6

    if-ne v1, v2, :cond_5

    .line 25
    aget-byte v1, p0, v6

    sget-object v2, Lcom/living/emo/util/CommandUtil;->CMD_ORDER_DATA:[I

    aget v2, v2, v3

    const/4 v3, 0x6

    if-ne v1, v2, :cond_3

    .line 26
    aget-byte v1, p0, v3

    invoke-interface {p1, v1}, Lcom/living/emo/bean/HuntBean$HuntResponse;->signalFeedback(I)V

    .line 28
    :cond_3
    aget-byte v1, p0, v6

    sget-object v2, Lcom/living/emo/util/CommandUtil;->CMD_ORDER_DATA:[I

    aget v2, v2, v4

    if-ne v1, v2, :cond_4

    .line 29
    aget-byte v1, p0, v3

    .line 30
    invoke-interface {p1, v1}, Lcom/living/emo/bean/HuntBean$HuntResponse;->findHunt(I)V

    .line 32
    :cond_4
    aget-byte v1, p0, v6

    sget-object v2, Lcom/living/emo/util/CommandUtil;->CMD_ORDER_DATA:[I

    aget v2, v2, v0

    if-ne v1, v2, :cond_5

    .line 33
    aget-byte v1, p0, v3

    const/4 v2, 0x7

    aget-byte v2, p0, v2

    const/16 v3, 0x8

    aget-byte v3, p0, v3

    invoke-interface {p1, v1, v2, v3}, Lcom/living/emo/bean/HuntBean$HuntResponse;->result(III)V

    .line 36
    :cond_5
    aget-byte v1, p0, v4

    if-nez v1, :cond_6

    aget-byte v1, p0, v0

    sget-object v2, Lcom/living/emo/util/CommandUtil;->CMD_ORDER_DATA:[I

    aget v0, v2, v0

    if-ne v1, v0, :cond_6

    aget-byte v0, p0, v5

    sget-object v1, Lcom/living/emo/util/CommandUtil;->CMD_ORDER_DATA:[I

    aget v1, v1, v5

    if-ne v0, v1, :cond_6

    .line 37
    aget-byte p0, p0, v6

    invoke-interface {p1, p0}, Lcom/living/emo/bean/HuntBean$HuntResponse;->eventReport(B)V

    :cond_6
    return-void
.end method
