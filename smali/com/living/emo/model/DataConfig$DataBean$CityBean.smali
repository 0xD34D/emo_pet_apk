.class public Lcom/living/emo/model/DataConfig$DataBean$CityBean;
.super Ljava/lang/Object;
.source "DataConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/living/emo/model/DataConfig$DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CityBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/living/emo/model/DataConfig$DataBean$CityBean$CoordBean;
    }
.end annotation


# instance fields
.field private coord:Lcom/living/emo/model/DataConfig$DataBean$CityBean$CoordBean;

.field private country:Ljava/lang/String;

.field private id:I

.field private name:Ljava/lang/String;

.field private state:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static objectFromData(Ljava/lang/String;)Lcom/living/emo/model/DataConfig$DataBean$CityBean;
    .locals 2

    .line 245
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/living/emo/model/DataConfig$DataBean$CityBean;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/living/emo/model/DataConfig$DataBean$CityBean;

    return-object p0
.end method


# virtual methods
.method public getCoord()Lcom/living/emo/model/DataConfig$DataBean$CityBean$CoordBean;
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/living/emo/model/DataConfig$DataBean$CityBean;->coord:Lcom/living/emo/model/DataConfig$DataBean$CityBean$CoordBean;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/living/emo/model/DataConfig$DataBean$CityBean;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 265
    iget v0, p0, Lcom/living/emo/model/DataConfig$DataBean$CityBean;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/living/emo/model/DataConfig$DataBean$CityBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/living/emo/model/DataConfig$DataBean$CityBean;->state:Ljava/lang/String;

    return-object v0
.end method

.method public setCoord(Lcom/living/emo/model/DataConfig$DataBean$CityBean$CoordBean;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lcom/living/emo/model/DataConfig$DataBean$CityBean;->coord:Lcom/living/emo/model/DataConfig$DataBean$CityBean$CoordBean;

    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0

    .line 261
    iput-object p1, p0, Lcom/living/emo/model/DataConfig$DataBean$CityBean;->country:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 269
    iput p1, p0, Lcom/living/emo/model/DataConfig$DataBean$CityBean;->id:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 277
    iput-object p1, p0, Lcom/living/emo/model/DataConfig$DataBean$CityBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 0

    .line 285
    iput-object p1, p0, Lcom/living/emo/model/DataConfig$DataBean$CityBean;->state:Ljava/lang/String;

    return-void
.end method
