.class public Lcom/living/emo/blebean/response/VersionResponse$DataBean;
.super Ljava/lang/Object;
.source "VersionResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/living/emo/blebean/response/VersionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/living/emo/blebean/response/VersionResponse$DataBean$VersionBean;
    }
.end annotation


# instance fields
.field private version:Lcom/living/emo/blebean/response/VersionResponse$DataBean$VersionBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static objectFromData(Ljava/lang/String;)Lcom/living/emo/blebean/response/VersionResponse$DataBean;
    .locals 2

    .line 52
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/living/emo/blebean/response/VersionResponse$DataBean;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/living/emo/blebean/response/VersionResponse$DataBean;

    return-object p0
.end method


# virtual methods
.method public getVersion()Lcom/living/emo/blebean/response/VersionResponse$DataBean$VersionBean;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/living/emo/blebean/response/VersionResponse$DataBean;->version:Lcom/living/emo/blebean/response/VersionResponse$DataBean$VersionBean;

    return-object v0
.end method

.method public setVersion(Lcom/living/emo/blebean/response/VersionResponse$DataBean$VersionBean;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/living/emo/blebean/response/VersionResponse$DataBean;->version:Lcom/living/emo/blebean/response/VersionResponse$DataBean$VersionBean;

    return-void
.end method
