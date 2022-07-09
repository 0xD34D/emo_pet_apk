.class public Lcom/living/emo/bean/SystemConfigBean;
.super Ljava/lang/Object;
.source "SystemConfigBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/living/emo/bean/SystemConfigBean$DataBean;
    }
.end annotation


# static fields
.field private static sSystemConfigBean:Lcom/living/emo/bean/SystemConfigBean;


# instance fields
.field private data:Lcom/living/emo/bean/SystemConfigBean$DataBean;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSystemConfigBean()Lcom/living/emo/bean/SystemConfigBean;
    .locals 1

    .line 20
    sget-object v0, Lcom/living/emo/bean/SystemConfigBean;->sSystemConfigBean:Lcom/living/emo/bean/SystemConfigBean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public static objectFromData(Ljava/lang/String;)V
    .locals 2

    .line 17
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/living/emo/bean/SystemConfigBean;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/living/emo/bean/SystemConfigBean;

    sput-object p0, Lcom/living/emo/bean/SystemConfigBean;->sSystemConfigBean:Lcom/living/emo/bean/SystemConfigBean;

    return-void
.end method


# virtual methods
.method public getData()Lcom/living/emo/bean/SystemConfigBean$DataBean;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/living/emo/bean/SystemConfigBean;->data:Lcom/living/emo/bean/SystemConfigBean$DataBean;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 27
    iget v0, p0, Lcom/living/emo/bean/SystemConfigBean;->type:I

    return v0
.end method

.method public setData(Lcom/living/emo/bean/SystemConfigBean$DataBean;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/living/emo/bean/SystemConfigBean;->data:Lcom/living/emo/bean/SystemConfigBean$DataBean;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 31
    iput p1, p0, Lcom/living/emo/bean/SystemConfigBean;->type:I

    return-void
.end method
