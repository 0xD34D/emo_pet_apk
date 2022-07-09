.class public Lcom/living/emo/bean/LudoGameBean;
.super Ljava/lang/Object;
.source "LudoGameBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/living/emo/bean/LudoGameBean$LudoGameResponse;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ludoNotify([BLcom/living/emo/bean/LudoGameBean$LudoGameResponse;)V
    .locals 6

    const/4 v0, 0x3

    .line 12
    aget-byte v1, p0, v0

    sget-object v2, Lcom/living/emo/util/CommandUtil;->CMD_ORDER_DATA:[I

    aget v2, v2, v0

    if-ne v1, v2, :cond_7

    const/4 v1, 0x4

    .line 13
    aget-byte v2, p0, v1

    sget-object v3, Lcom/living/emo/util/CommandUtil;->CMD_ORDER_DATA:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    const/4 v4, 0x5

    const/4 v5, 0x1

    if-ne v2, v3, :cond_1

    .line 14
    aget-byte p0, p0, v4

    if-eq p0, v5, :cond_0

    .line 20
    invoke-interface {p1}, Lcom/living/emo/bean/LudoGameBean$LudoGameResponse;->error()V

    goto :goto_0

    .line 17
    :cond_0
    invoke-interface {p1}, Lcom/living/emo/bean/LudoGameBean$LudoGameResponse;->gameReady()V

    goto :goto_0

    .line 23
    :cond_1
    aget-byte v2, p0, v1

    sget-object v3, Lcom/living/emo/util/CommandUtil;->CMD_ORDER_DATA:[I

    aget v0, v3, v0

    if-ne v2, v0, :cond_4

    .line 25
    aget-byte p0, p0, v4

    if-eqz p0, :cond_3

    if-eq p0, v5, :cond_2

    .line 35
    invoke-interface {p1}, Lcom/living/emo/bean/LudoGameBean$LudoGameResponse;->error()V

    goto :goto_0

    .line 28
    :cond_2
    invoke-interface {p1}, Lcom/living/emo/bean/LudoGameBean$LudoGameResponse;->animSuccess()V

    goto :goto_0

    .line 32
    :cond_3
    invoke-interface {p1}, Lcom/living/emo/bean/LudoGameBean$LudoGameResponse;->animError()V

    goto :goto_0

    .line 39
    :cond_4
    aget-byte v0, p0, v1

    sget-object v2, Lcom/living/emo/util/CommandUtil;->CMD_ORDER_DATA:[I

    aget v2, v2, v1

    if-ne v0, v2, :cond_6

    .line 41
    aget-byte p0, p0, v4

    if-eq p0, v5, :cond_5

    goto :goto_0

    .line 44
    :cond_5
    invoke-interface {p1}, Lcom/living/emo/bean/LudoGameBean$LudoGameResponse;->startGame()V

    goto :goto_0

    .line 48
    :cond_6
    aget-byte p0, p0, v1

    sget-object v0, Lcom/living/emo/util/CommandUtil;->CMD_ORDER_DATA:[I

    aget v0, v0, v5

    if-ne p0, v0, :cond_7

    .line 50
    invoke-interface {p1}, Lcom/living/emo/bean/LudoGameBean$LudoGameResponse;->gameOver()V

    :cond_7
    :goto_0
    return-void
.end method
