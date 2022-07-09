.class public Lcom/living/emo/bean/SystemConfigBean$DataBean$XiaoaiBean;
.super Ljava/lang/Object;
.source "SystemConfigBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/living/emo/bean/SystemConfigBean$DataBean;
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

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static objectFromData(Ljava/lang/String;)Lcom/living/emo/bean/SystemConfigBean$DataBean$XiaoaiBean;
    .locals 2

    .line 228
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/living/emo/bean/SystemConfigBean$DataBean$XiaoaiBean;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/living/emo/bean/SystemConfigBean$DataBean$XiaoaiBean;

    return-object p0
.end method


# virtual methods
.method public getConnected()I
    .locals 1

    .line 232
    iget v0, p0, Lcom/living/emo/bean/SystemConfigBean$DataBean$XiaoaiBean;->connected:I

    return v0
.end method

.method public getRefresh_token()Ljava/lang/String;
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/living/emo/bean/SystemConfigBean$DataBean$XiaoaiBean;->refresh_token:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/living/emo/bean/SystemConfigBean$DataBean$XiaoaiBean;->token:Ljava/lang/String;

    return-object v0
.end method

.method public setConnected(I)V
    .locals 0

    .line 236
    iput p1, p0, Lcom/living/emo/bean/SystemConfigBean$DataBean$XiaoaiBean;->connected:I

    return-void
.end method

.method public setRefresh_token(Ljava/lang/String;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lcom/living/emo/bean/SystemConfigBean$DataBean$XiaoaiBean;->refresh_token:Ljava/lang/String;

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .line 244
    iput-object p1, p0, Lcom/living/emo/bean/SystemConfigBean$DataBean$XiaoaiBean;->token:Ljava/lang/String;

    return-void
.end method
