.class public Lcom/living/emo/blebean/config/CityConfig$DataBean;
.super Ljava/lang/Object;
.source "CityConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/living/emo/blebean/config/CityConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/living/emo/blebean/config/CityConfig$DataBean$CoordBean;
    }
.end annotation


# instance fields
.field private coord:Lcom/living/emo/blebean/config/CityConfig$DataBean$CoordBean;

.field private country:Ljava/lang/String;

.field private id:I

.field private name:Ljava/lang/String;

.field private state:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static objectFromData(Ljava/lang/String;)Lcom/living/emo/blebean/config/CityConfig$DataBean;
    .locals 2

    .line 73
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/living/emo/blebean/config/CityConfig$DataBean;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/living/emo/blebean/config/CityConfig$DataBean;

    return-object p0
.end method


# virtual methods
.method public getCoord()Lcom/living/emo/blebean/config/CityConfig$DataBean$CoordBean;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/living/emo/blebean/config/CityConfig$DataBean;->coord:Lcom/living/emo/blebean/config/CityConfig$DataBean$CoordBean;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/living/emo/blebean/config/CityConfig$DataBean;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 77
    iget v0, p0, Lcom/living/emo/blebean/config/CityConfig$DataBean;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/living/emo/blebean/config/CityConfig$DataBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/living/emo/blebean/config/CityConfig$DataBean;->state:Ljava/lang/String;

    return-object v0
.end method

.method public setCoord(Lcom/living/emo/blebean/config/CityConfig$DataBean$CoordBean;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/living/emo/blebean/config/CityConfig$DataBean;->coord:Lcom/living/emo/blebean/config/CityConfig$DataBean$CoordBean;

    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/living/emo/blebean/config/CityConfig$DataBean;->country:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 81
    iput p1, p0, Lcom/living/emo/blebean/config/CityConfig$DataBean;->id:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/living/emo/blebean/config/CityConfig$DataBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/living/emo/blebean/config/CityConfig$DataBean;->state:Ljava/lang/String;

    return-void
.end method
