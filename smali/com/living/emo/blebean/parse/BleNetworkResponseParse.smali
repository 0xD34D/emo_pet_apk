.class public Lcom/living/emo/blebean/parse/BleNetworkResponseParse;
.super Ljava/lang/Object;
.source "BleNetworkResponseParse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/living/emo/blebean/parse/BleNetworkResponseParse$Callback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static network(Ljava/lang/String;Lcom/living/emo/blebean/parse/BleNetworkResponseParse$Callback;)V
    .locals 1

    .line 7
    invoke-static {p0}, Lcom/living/emo/blebean/response/NetworkResponse;->objectFromData(Ljava/lang/String;)Lcom/living/emo/blebean/response/NetworkResponse;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 8
    invoke-virtual {p0}, Lcom/living/emo/blebean/response/NetworkResponse;->getData()Lcom/living/emo/blebean/response/NetworkResponse$DataBean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/living/emo/blebean/response/NetworkResponse;->getData()Lcom/living/emo/blebean/response/NetworkResponse$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/living/emo/blebean/response/NetworkResponse$DataBean;->getNetwork()Lcom/living/emo/blebean/response/NetworkResponse$DataBean$NetworkBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {p0}, Lcom/living/emo/blebean/response/NetworkResponse;->getData()Lcom/living/emo/blebean/response/NetworkResponse$DataBean;

    move-result-object p0

    invoke-virtual {p0}, Lcom/living/emo/blebean/response/NetworkResponse$DataBean;->getNetwork()Lcom/living/emo/blebean/response/NetworkResponse$DataBean$NetworkBean;

    move-result-object p0

    .line 10
    invoke-interface {p1, p0}, Lcom/living/emo/blebean/parse/BleNetworkResponseParse$Callback;->response(Lcom/living/emo/blebean/response/NetworkResponse$DataBean$NetworkBean;)V

    :cond_0
    return-void
.end method
