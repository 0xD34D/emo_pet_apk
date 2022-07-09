.class public Lcom/living/emo/bean/UtilitiesBean;
.super Ljava/lang/Object;
.source "UtilitiesBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/living/emo/bean/UtilitiesBean$UtilitiesResponse;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static utilitiesNotify([BLcom/living/emo/bean/UtilitiesBean$UtilitiesResponse;)V
    .locals 2

    const/4 v0, 0x3

    .line 7
    aget-byte v0, p0, v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 9
    aget-byte v0, p0, v1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x5

    aget-byte p0, p0, v0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 10
    invoke-interface {p1}, Lcom/living/emo/bean/UtilitiesBean$UtilitiesResponse;->startSet()V

    :cond_0
    return-void
.end method
