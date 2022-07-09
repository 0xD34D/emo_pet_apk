.class public Lcom/living/emo/bean/AmusementBean;
.super Ljava/lang/Object;
.source "AmusementBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/living/emo/bean/AmusementBean$AmusementResponse;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static AmusementNotify([BLcom/living/emo/bean/AmusementBean$AmusementResponse;)V
    .locals 7

    const/4 v0, 0x3

    .line 10
    aget-byte v1, p0, v0

    sget-object v2, Lcom/living/emo/util/CommandUtil;->CMD_ORDER_DATA:[I

    aget v2, v2, v0

    if-ne v1, v2, :cond_8

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
    invoke-interface {p1}, Lcom/living/emo/bean/AmusementBean$AmusementResponse;->error()V

    goto :goto_0

    .line 15
    :cond_0
    invoke-interface {p1}, Lcom/living/emo/bean/AmusementBean$AmusementResponse;->gameReady()V

    goto :goto_0

    .line 21
    :cond_1
    aget-byte v2, p0, v1

    sget-object v3, Lcom/living/emo/util/CommandUtil;->CMD_ORDER_DATA:[I

    aget v3, v3, v1

    if-ne v2, v3, :cond_3

    .line 23
    aget-byte p0, p0, v6

    if-eq p0, v4, :cond_2

    goto :goto_0

    .line 26
    :cond_2
    invoke-interface {p1}, Lcom/living/emo/bean/AmusementBean$AmusementResponse;->stay()V

    goto :goto_0

    .line 30
    :cond_3
    aget-byte v2, p0, v1

    sget-object v3, Lcom/living/emo/util/CommandUtil;->CMD_ORDER_DATA:[I

    aget v3, v3, v6

    if-ne v2, v3, :cond_7

    .line 31
    aget-byte p0, p0, v6

    if-eq p0, v4, :cond_6

    if-eq p0, v0, :cond_5

    if-eq p0, v1, :cond_4

    goto :goto_0

    .line 42
    :cond_4
    invoke-interface {p1}, Lcom/living/emo/bean/AmusementBean$AmusementResponse;->dazzling()V

    goto :goto_0

    .line 38
    :cond_5
    invoke-interface {p1}, Lcom/living/emo/bean/AmusementBean$AmusementResponse;->legShaking()V

    goto :goto_0

    .line 34
    :cond_6
    invoke-interface {p1}, Lcom/living/emo/bean/AmusementBean$AmusementResponse;->dance()V

    goto :goto_0

    .line 46
    :cond_7
    aget-byte p0, p0, v1

    sget-object v0, Lcom/living/emo/util/CommandUtil;->CMD_ORDER_DATA:[I

    aget v0, v0, v5

    if-ne p0, v0, :cond_8

    .line 47
    invoke-interface {p1}, Lcom/living/emo/bean/AmusementBean$AmusementResponse;->GameOver()V

    :cond_8
    :goto_0
    return-void
.end method
