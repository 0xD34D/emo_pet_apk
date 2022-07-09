.class public Lcom/living/emo/blebean/response/LightResponse$DataBean$LightBean$StateBean;
.super Ljava/lang/Object;
.source "LightResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/living/emo/blebean/response/LightResponse$DataBean$LightBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StateBean"
.end annotation


# instance fields
.field private connected:I

.field private hsl:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private id:I

.field private name:Ljava/lang/String;

.field private on:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static objectFromData(Ljava/lang/String;)Lcom/living/emo/blebean/response/LightResponse$DataBean$LightBean$StateBean;
    .locals 2

    .line 115
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/living/emo/blebean/response/LightResponse$DataBean$LightBean$StateBean;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/living/emo/blebean/response/LightResponse$DataBean$LightBean$StateBean;

    return-object p0
.end method


# virtual methods
.method public getConnected()I
    .locals 1

    .line 127
    iget v0, p0, Lcom/living/emo/blebean/response/LightResponse$DataBean$LightBean$StateBean;->connected:I

    return v0
.end method

.method public getHsl()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lcom/living/emo/blebean/response/LightResponse$DataBean$LightBean$StateBean;->hsl:Ljava/util/List;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 119
    iget v0, p0, Lcom/living/emo/blebean/response/LightResponse$DataBean$LightBean$StateBean;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/living/emo/blebean/response/LightResponse$DataBean$LightBean$StateBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOn()I
    .locals 1

    .line 143
    iget v0, p0, Lcom/living/emo/blebean/response/LightResponse$DataBean$LightBean$StateBean;->on:I

    return v0
.end method

.method public setConnected(I)V
    .locals 0

    .line 131
    iput p1, p0, Lcom/living/emo/blebean/response/LightResponse$DataBean$LightBean$StateBean;->connected:I

    return-void
.end method

.method public setHsl(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 155
    iput-object p1, p0, Lcom/living/emo/blebean/response/LightResponse$DataBean$LightBean$StateBean;->hsl:Ljava/util/List;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 123
    iput p1, p0, Lcom/living/emo/blebean/response/LightResponse$DataBean$LightBean$StateBean;->id:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/living/emo/blebean/response/LightResponse$DataBean$LightBean$StateBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setOn(I)V
    .locals 0

    .line 147
    iput p1, p0, Lcom/living/emo/blebean/response/LightResponse$DataBean$LightBean$StateBean;->on:I

    return-void
.end method
