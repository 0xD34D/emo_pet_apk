.class public Lcom/living/emo/bean/WakeDemonBean;
.super Ljava/lang/Object;
.source "WakeDemonBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/living/emo/bean/WakeDemonBean$WakeDemonResponse;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ludoNotify([BLcom/living/emo/bean/WakeDemonBean$WakeDemonResponse;)V
    .locals 5

    const/4 v0, 0x3

    .line 11
    aget-byte v1, p0, v0

    sget-object v2, Lcom/living/emo/util/CommandUtil;->CMD_ORDER_DATA:[I

    aget v0, v2, v0

    if-ne v1, v0, :cond_4

    const/4 v0, 0x4

    .line 12
    aget-byte v1, p0, v0

    sget-object v2, Lcom/living/emo/util/CommandUtil;->CMD_ORDER_DATA:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    const/4 v3, 0x5

    const/4 v4, 0x1

    if-ne v1, v2, :cond_1

    .line 13
    aget-byte p0, p0, v3

    if-eq p0, v4, :cond_0

    .line 19
    invoke-interface {p1}, Lcom/living/emo/bean/WakeDemonBean$WakeDemonResponse;->error()V

    goto :goto_0

    .line 16
    :cond_0
    invoke-interface {p1}, Lcom/living/emo/bean/WakeDemonBean$WakeDemonResponse;->gameReady()V

    goto :goto_0

    .line 22
    :cond_1
    aget-byte v1, p0, v0

    sget-object v2, Lcom/living/emo/util/CommandUtil;->CMD_ORDER_DATA:[I

    aget v2, v2, v0

    if-ne v1, v2, :cond_3

    .line 24
    aget-byte p0, p0, v3

    if-eq p0, v4, :cond_2

    goto :goto_0

    .line 27
    :cond_2
    invoke-interface {p1}, Lcom/living/emo/bean/WakeDemonBean$WakeDemonResponse;->startGame()V

    goto :goto_0

    .line 31
    :cond_3
    aget-byte p0, p0, v0

    sget-object v0, Lcom/living/emo/util/CommandUtil;->CMD_ORDER_DATA:[I

    aget v0, v0, v4

    if-ne p0, v0, :cond_4

    .line 34
    invoke-interface {p1}, Lcom/living/emo/bean/WakeDemonBean$WakeDemonResponse;->gameOver()V

    :cond_4
    :goto_0
    return-void
.end method
