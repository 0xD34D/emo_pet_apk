.class public Lcom/living/emo/bean/SystemConfigBean$DataBean$CityBean$CoordBean;
.super Ljava/lang/Object;
.source "SystemConfigBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/living/emo/bean/SystemConfigBean$DataBean$CityBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CoordBean"
.end annotation


# instance fields
.field private lat:D

.field private lon:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 442
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static objectFromData(Ljava/lang/String;)Lcom/living/emo/bean/SystemConfigBean$DataBean$CityBean$CoordBean;
    .locals 2

    .line 453
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/living/emo/bean/SystemConfigBean$DataBean$CityBean$CoordBean;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/living/emo/bean/SystemConfigBean$DataBean$CityBean$CoordBean;

    return-object p0
.end method


# virtual methods
.method public getLat()D
    .locals 2

    .line 465
    iget-wide v0, p0, Lcom/living/emo/bean/SystemConfigBean$DataBean$CityBean$CoordBean;->lat:D

    return-wide v0
.end method

.method public getLon()D
    .locals 2

    .line 457
    iget-wide v0, p0, Lcom/living/emo/bean/SystemConfigBean$DataBean$CityBean$CoordBean;->lon:D

    return-wide v0
.end method

.method public setLat(D)V
    .locals 0

    .line 469
    iput-wide p1, p0, Lcom/living/emo/bean/SystemConfigBean$DataBean$CityBean$CoordBean;->lat:D

    return-void
.end method

.method public setLon(D)V
    .locals 0

    .line 461
    iput-wide p1, p0, Lcom/living/emo/bean/SystemConfigBean$DataBean$CityBean$CoordBean;->lon:D

    return-void
.end method
