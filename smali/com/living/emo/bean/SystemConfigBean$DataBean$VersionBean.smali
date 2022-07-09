.class public Lcom/living/emo/bean/SystemConfigBean$DataBean$VersionBean;
.super Ljava/lang/Object;
.source "SystemConfigBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/living/emo/bean/SystemConfigBean$DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VersionBean"
.end annotation


# instance fields
.field private name:Ljava/lang/String;

.field private number:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static objectFromData(Ljava/lang/String;)Lcom/living/emo/bean/SystemConfigBean$DataBean$VersionBean;
    .locals 2

    .line 267
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/living/emo/bean/SystemConfigBean$DataBean$VersionBean;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/living/emo/bean/SystemConfigBean$DataBean$VersionBean;

    return-object p0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/living/emo/bean/SystemConfigBean$DataBean$VersionBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()I
    .locals 1

    .line 271
    iget v0, p0, Lcom/living/emo/bean/SystemConfigBean$DataBean$VersionBean;->number:I

    return v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 283
    iput-object p1, p0, Lcom/living/emo/bean/SystemConfigBean$DataBean$VersionBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setNumber(I)V
    .locals 0

    .line 275
    iput p1, p0, Lcom/living/emo/bean/SystemConfigBean$DataBean$VersionBean;->number:I

    return-void
.end method
