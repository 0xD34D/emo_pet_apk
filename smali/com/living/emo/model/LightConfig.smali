.class public Lcom/living/emo/model/LightConfig;
.super Ljava/lang/Object;
.source "LightConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/living/emo/model/LightConfig$DataBean;
    }
.end annotation


# instance fields
.field private data:Lcom/living/emo/model/LightConfig$DataBean;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static objectFromData(Ljava/lang/String;)Lcom/living/emo/model/LightConfig;
    .locals 2

    .line 19
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/living/emo/model/LightConfig;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/living/emo/model/LightConfig;

    return-object p0
.end method


# virtual methods
.method public getData()Lcom/living/emo/model/LightConfig$DataBean;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/living/emo/model/LightConfig;->data:Lcom/living/emo/model/LightConfig$DataBean;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 23
    iget v0, p0, Lcom/living/emo/model/LightConfig;->type:I

    return v0
.end method

.method public setData(Lcom/living/emo/model/LightConfig$DataBean;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/living/emo/model/LightConfig;->data:Lcom/living/emo/model/LightConfig$DataBean;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 27
    iput p1, p0, Lcom/living/emo/model/LightConfig;->type:I

    return-void
.end method
