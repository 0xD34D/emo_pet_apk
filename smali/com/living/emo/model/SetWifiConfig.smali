.class public Lcom/living/emo/model/SetWifiConfig;
.super Ljava/lang/Object;
.source "SetWifiConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/living/emo/model/SetWifiConfig$DataBean;
    }
.end annotation


# instance fields
.field private data:Lcom/living/emo/model/SetWifiConfig$DataBean;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static objectFromData(Ljava/lang/String;)Lcom/living/emo/model/SetWifiConfig;
    .locals 2

    .line 18
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/living/emo/model/SetWifiConfig;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/living/emo/model/SetWifiConfig;

    return-object p0
.end method


# virtual methods
.method public getData()Lcom/living/emo/model/SetWifiConfig$DataBean;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/living/emo/model/SetWifiConfig;->data:Lcom/living/emo/model/SetWifiConfig$DataBean;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/living/emo/model/SetWifiConfig;->type:I

    return v0
.end method

.method public setData(Lcom/living/emo/model/SetWifiConfig$DataBean;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/living/emo/model/SetWifiConfig;->data:Lcom/living/emo/model/SetWifiConfig$DataBean;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 26
    iput p1, p0, Lcom/living/emo/model/SetWifiConfig;->type:I

    return-void
.end method
