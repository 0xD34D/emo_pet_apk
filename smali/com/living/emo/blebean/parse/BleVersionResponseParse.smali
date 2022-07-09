.class public Lcom/living/emo/blebean/parse/BleVersionResponseParse;
.super Ljava/lang/Object;
.source "BleVersionResponseParse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/living/emo/blebean/parse/BleVersionResponseParse$Callback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static version(Ljava/lang/String;Lcom/living/emo/blebean/parse/BleVersionResponseParse$Callback;)V
    .locals 1

    .line 7
    invoke-static {p0}, Lcom/living/emo/blebean/response/VersionResponse;->objectFromData(Ljava/lang/String;)Lcom/living/emo/blebean/response/VersionResponse;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 8
    invoke-virtual {p0}, Lcom/living/emo/blebean/response/VersionResponse;->getData()Lcom/living/emo/blebean/response/VersionResponse$DataBean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/living/emo/blebean/response/VersionResponse;->getData()Lcom/living/emo/blebean/response/VersionResponse$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/living/emo/blebean/response/VersionResponse$DataBean;->getVersion()Lcom/living/emo/blebean/response/VersionResponse$DataBean$VersionBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {p0}, Lcom/living/emo/blebean/response/VersionResponse;->getData()Lcom/living/emo/blebean/response/VersionResponse$DataBean;

    move-result-object p0

    invoke-virtual {p0}, Lcom/living/emo/blebean/response/VersionResponse$DataBean;->getVersion()Lcom/living/emo/blebean/response/VersionResponse$DataBean$VersionBean;

    move-result-object p0

    .line 10
    invoke-interface {p1, p0}, Lcom/living/emo/blebean/parse/BleVersionResponseParse$Callback;->response(Lcom/living/emo/blebean/response/VersionResponse$DataBean$VersionBean;)V

    :cond_0
    return-void
.end method
