.class public Lcom/living/emo/bean/LightEmoEvent;
.super Ljava/lang/Object;
.source "LightEmoEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/living/emo/bean/LightEmoEvent$OnLightEmoNotifyResponse;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lightEmoNotify(Lcom/living/emo/event/EmoEvent;Lcom/living/emo/bean/LightEmoEvent$OnLightEmoNotifyResponse;)V
    .locals 2

    .line 9
    invoke-virtual {p0}, Lcom/living/emo/event/EmoEvent;->getFour()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 12
    invoke-virtual {p0}, Lcom/living/emo/event/EmoEvent;->getEventNumbering()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 13
    invoke-virtual {p0}, Lcom/living/emo/event/EmoEvent;->getSeven()I

    move-result v0

    .line 14
    invoke-virtual {p0}, Lcom/living/emo/event/EmoEvent;->getEight()I

    move-result p0

    .line 15
    invoke-interface {p1, v0, p0}, Lcom/living/emo/bean/LightEmoEvent$OnLightEmoNotifyResponse;->lightOnOff(II)V

    :cond_0
    return-void
.end method
