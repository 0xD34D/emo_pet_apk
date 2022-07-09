.class public Lcom/living/emo/bean/LightBean;
.super Ljava/lang/Object;
.source "LightBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/living/emo/bean/LightBean$LightResponse;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lightNotify([BLcom/living/emo/bean/LightBean$LightResponse;)V
    .locals 3

    const/4 v0, 0x3

    .line 6
    aget-byte v1, p0, v0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 8
    aget-byte v1, p0, v2

    if-ne v1, v0, :cond_0

    const/4 v0, 0x5

    aget-byte p0, p0, v0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 9
    invoke-interface {p1}, Lcom/living/emo/bean/LightBean$LightResponse;->lightSetSuccess()V

    goto :goto_0

    .line 11
    :cond_0
    invoke-interface {p1}, Lcom/living/emo/bean/LightBean$LightResponse;->lightSetFailure()V

    :cond_1
    :goto_0
    return-void
.end method
