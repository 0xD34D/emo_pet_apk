.class public Lcom/living/emo/model/SendConfig;
.super Ljava/lang/Object;
.source "SendConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/living/emo/model/SendConfig$DataBean;
    }
.end annotation


# instance fields
.field private data:Lcom/living/emo/model/SendConfig$DataBean;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static objectFromData(Ljava/lang/String;)Lcom/living/emo/model/SendConfig;
    .locals 2

    .line 20
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/living/emo/model/SendConfig;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/living/emo/model/SendConfig;

    return-object p0
.end method

.method public static stringFromData(Lcom/living/emo/model/SendConfig;)Ljava/lang/String;
    .locals 1

    .line 25
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getData()Lcom/living/emo/model/SendConfig$DataBean;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/living/emo/model/SendConfig;->data:Lcom/living/emo/model/SendConfig$DataBean;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/living/emo/model/SendConfig;->type:I

    return v0
.end method

.method public setData(Lcom/living/emo/model/SendConfig$DataBean;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/living/emo/model/SendConfig;->data:Lcom/living/emo/model/SendConfig$DataBean;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 33
    iput p1, p0, Lcom/living/emo/model/SendConfig;->type:I

    return-void
.end method
