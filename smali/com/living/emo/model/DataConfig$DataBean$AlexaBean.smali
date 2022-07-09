.class public Lcom/living/emo/model/DataConfig$DataBean$AlexaBean;
.super Ljava/lang/Object;
.source "DataConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/living/emo/model/DataConfig$DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlexaBean"
.end annotation


# instance fields
.field private connected:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static objectFromData(Ljava/lang/String;)Lcom/living/emo/model/DataConfig$DataBean$AlexaBean;
    .locals 2

    .line 216
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/living/emo/model/DataConfig$DataBean$AlexaBean;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/living/emo/model/DataConfig$DataBean$AlexaBean;

    return-object p0
.end method


# virtual methods
.method public getConnected()I
    .locals 1

    .line 220
    iget v0, p0, Lcom/living/emo/model/DataConfig$DataBean$AlexaBean;->connected:I

    return v0
.end method

.method public setConnected(I)V
    .locals 0

    .line 224
    iput p1, p0, Lcom/living/emo/model/DataConfig$DataBean$AlexaBean;->connected:I

    return-void
.end method
