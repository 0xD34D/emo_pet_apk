.class public Lcom/living/emo/blebean/response/VersionResponse;
.super Ljava/lang/Object;
.source "VersionResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/living/emo/blebean/response/VersionResponse$DataBean;
    }
.end annotation


# instance fields
.field private data:Lcom/living/emo/blebean/response/VersionResponse$DataBean;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static objectFromData(Ljava/lang/String;)Lcom/living/emo/blebean/response/VersionResponse;
    .locals 2

    .line 22
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/living/emo/blebean/response/VersionResponse;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/living/emo/blebean/response/VersionResponse;

    return-object p0
.end method


# virtual methods
.method public getData()Lcom/living/emo/blebean/response/VersionResponse$DataBean;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/living/emo/blebean/response/VersionResponse;->data:Lcom/living/emo/blebean/response/VersionResponse$DataBean;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/living/emo/blebean/response/VersionResponse;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setData(Lcom/living/emo/blebean/response/VersionResponse$DataBean;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/living/emo/blebean/response/VersionResponse;->data:Lcom/living/emo/blebean/response/VersionResponse$DataBean;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/living/emo/blebean/response/VersionResponse;->type:Ljava/lang/String;

    return-void
.end method
