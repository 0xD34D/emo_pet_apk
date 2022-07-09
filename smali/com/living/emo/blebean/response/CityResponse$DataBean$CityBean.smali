.class public Lcom/living/emo/blebean/response/CityResponse$DataBean$CityBean;
.super Ljava/lang/Object;
.source "CityResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/living/emo/blebean/response/CityResponse$DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CityBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/living/emo/blebean/response/CityResponse$DataBean$CityBean$CoordBean;
    }
.end annotation


# instance fields
.field private coord:Lcom/living/emo/blebean/response/CityResponse$DataBean$CityBean$CoordBean;

.field private country:Ljava/lang/String;

.field private id:I

.field private name:Ljava/lang/String;

.field private state:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static objectFromData(Ljava/lang/String;)Lcom/living/emo/blebean/response/CityResponse$DataBean$CityBean;
    .locals 2

    .line 104
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/living/emo/blebean/response/CityResponse$DataBean$CityBean;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/living/emo/blebean/response/CityResponse$DataBean$CityBean;

    return-object p0
.end method


# virtual methods
.method public getCoord()Lcom/living/emo/blebean/response/CityResponse$DataBean$CityBean$CoordBean;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/living/emo/blebean/response/CityResponse$DataBean$CityBean;->coord:Lcom/living/emo/blebean/response/CityResponse$DataBean$CityBean$CoordBean;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/living/emo/blebean/response/CityResponse$DataBean$CityBean;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 108
    iget v0, p0, Lcom/living/emo/blebean/response/CityResponse$DataBean$CityBean;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/living/emo/blebean/response/CityResponse$DataBean$CityBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/living/emo/blebean/response/CityResponse$DataBean$CityBean;->state:Ljava/lang/String;

    return-object v0
.end method

.method public setCoord(Lcom/living/emo/blebean/response/CityResponse$DataBean$CityBean$CoordBean;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/living/emo/blebean/response/CityResponse$DataBean$CityBean;->coord:Lcom/living/emo/blebean/response/CityResponse$DataBean$CityBean$CoordBean;

    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/living/emo/blebean/response/CityResponse$DataBean$CityBean;->country:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 112
    iput p1, p0, Lcom/living/emo/blebean/response/CityResponse$DataBean$CityBean;->id:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/living/emo/blebean/response/CityResponse$DataBean$CityBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/living/emo/blebean/response/CityResponse$DataBean$CityBean;->state:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CityBean{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/living/emo/blebean/response/CityResponse$DataBean$CityBean;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/living/emo/blebean/response/CityResponse$DataBean$CityBean;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", state=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/living/emo/blebean/response/CityResponse$DataBean$CityBean;->state:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", country=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/living/emo/blebean/response/CityResponse$DataBean$CityBean;->country:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", coord="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/living/emo/blebean/response/CityResponse$DataBean$CityBean;->coord:Lcom/living/emo/blebean/response/CityResponse$DataBean$CityBean$CoordBean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
