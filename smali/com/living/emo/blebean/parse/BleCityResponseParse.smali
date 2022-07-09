.class public Lcom/living/emo/blebean/parse/BleCityResponseParse;
.super Ljava/lang/Object;
.source "BleCityResponseParse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/living/emo/blebean/parse/BleCityResponseParse$Callback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static city(Ljava/lang/String;Lcom/living/emo/blebean/parse/BleCityResponseParse$Callback;)V
    .locals 1

    .line 8
    invoke-static {p0}, Lcom/living/emo/blebean/response/CityResponse;->objectFromData(Ljava/lang/String;)Lcom/living/emo/blebean/response/CityResponse;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 9
    invoke-virtual {p0}, Lcom/living/emo/blebean/response/CityResponse;->getData()Lcom/living/emo/blebean/response/CityResponse$DataBean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/living/emo/blebean/response/CityResponse;->getData()Lcom/living/emo/blebean/response/CityResponse$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/living/emo/blebean/response/CityResponse$DataBean;->getCity()Lcom/living/emo/blebean/response/CityResponse$DataBean$CityBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {p0}, Lcom/living/emo/blebean/response/CityResponse;->getData()Lcom/living/emo/blebean/response/CityResponse$DataBean;

    move-result-object p0

    invoke-virtual {p0}, Lcom/living/emo/blebean/response/CityResponse$DataBean;->getCity()Lcom/living/emo/blebean/response/CityResponse$DataBean$CityBean;

    move-result-object p0

    .line 11
    invoke-interface {p1, p0}, Lcom/living/emo/blebean/parse/BleCityResponseParse$Callback;->response(Lcom/living/emo/blebean/response/CityResponse$DataBean$CityBean;)V

    :cond_0
    return-void
.end method
