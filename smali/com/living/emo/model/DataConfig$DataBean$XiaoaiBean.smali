.class public Lcom/living/emo/model/DataConfig$DataBean$XiaoaiBean;
.super Ljava/lang/Object;
.source "DataConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/living/emo/model/DataConfig$DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "XiaoaiBean"
.end annotation


# instance fields
.field private connected:I

.field private refresh_token:Ljava/lang/String;

.field private token:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 522
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static objectFromData(Ljava/lang/String;)Lcom/living/emo/model/DataConfig$DataBean$XiaoaiBean;
    .locals 2

    .line 535
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/living/emo/model/DataConfig$DataBean$XiaoaiBean;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/living/emo/model/DataConfig$DataBean$XiaoaiBean;

    return-object p0
.end method


# virtual methods
.method public getConnected()I
    .locals 1

    .line 539
    iget v0, p0, Lcom/living/emo/model/DataConfig$DataBean$XiaoaiBean;->connected:I

    return v0
.end method

.method public getRefresh_token()Ljava/lang/String;
    .locals 1

    .line 547
    iget-object v0, p0, Lcom/living/emo/model/DataConfig$DataBean$XiaoaiBean;->refresh_token:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 555
    iget-object v0, p0, Lcom/living/emo/model/DataConfig$DataBean$XiaoaiBean;->token:Ljava/lang/String;

    return-object v0
.end method

.method public setConnected(I)V
    .locals 0

    .line 543
    iput p1, p0, Lcom/living/emo/model/DataConfig$DataBean$XiaoaiBean;->connected:I

    return-void
.end method

.method public setRefresh_token(Ljava/lang/String;)V
    .locals 0

    .line 551
    iput-object p1, p0, Lcom/living/emo/model/DataConfig$DataBean$XiaoaiBean;->refresh_token:Ljava/lang/String;

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .line 559
    iput-object p1, p0, Lcom/living/emo/model/DataConfig$DataBean$XiaoaiBean;->token:Ljava/lang/String;

    return-void
.end method
