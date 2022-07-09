.class public Lcom/living/emo/model/LightConfig$DataBean;
.super Ljava/lang/Object;
.source "LightConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/living/emo/model/LightConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
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

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static objectFromData(Ljava/lang/String;)Lcom/living/emo/model/LightConfig$DataBean;
    .locals 2

    .line 55
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/living/emo/model/LightConfig$DataBean;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/living/emo/model/LightConfig$DataBean;

    return-object p0
.end method


# virtual methods
.method public getConnected()I
    .locals 1

    .line 67
    iget v0, p0, Lcom/living/emo/model/LightConfig$DataBean;->connected:I

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

    .line 91
    iget-object v0, p0, Lcom/living/emo/model/LightConfig$DataBean;->hsl:Ljava/util/List;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 59
    iget v0, p0, Lcom/living/emo/model/LightConfig$DataBean;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/living/emo/model/LightConfig$DataBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOn()I
    .locals 1

    .line 83
    iget v0, p0, Lcom/living/emo/model/LightConfig$DataBean;->on:I

    return v0
.end method

.method public setConnected(I)V
    .locals 0

    .line 71
    iput p1, p0, Lcom/living/emo/model/LightConfig$DataBean;->connected:I

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

    .line 95
    iput-object p1, p0, Lcom/living/emo/model/LightConfig$DataBean;->hsl:Ljava/util/List;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 63
    iput p1, p0, Lcom/living/emo/model/LightConfig$DataBean;->id:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/living/emo/model/LightConfig$DataBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setOn(I)V
    .locals 0

    .line 87
    iput p1, p0, Lcom/living/emo/model/LightConfig$DataBean;->on:I

    return-void
.end method
