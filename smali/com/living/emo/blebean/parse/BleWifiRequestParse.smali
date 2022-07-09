.class public Lcom/living/emo/blebean/parse/BleWifiRequestParse;
.super Ljava/lang/Object;
.source "BleWifiRequestParse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/living/emo/blebean/parse/BleWifiRequestParse$Callback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static wifiReq(Ljava/lang/String;Lcom/living/emo/blebean/parse/BleWifiRequestParse$Callback;)V
    .locals 2

    .line 11
    invoke-static {p0}, Lcom/living/emo/blebean/response/WifiRequestResponse;->objectFromData(Ljava/lang/String;)Lcom/living/emo/blebean/response/WifiRequestResponse;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 12
    invoke-virtual {p0}, Lcom/living/emo/blebean/response/WifiRequestResponse;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "wifi_list"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13
    invoke-virtual {p0}, Lcom/living/emo/blebean/response/WifiRequestResponse;->getData()Lcom/living/emo/blebean/response/WifiRequestResponse$DataBean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 14
    invoke-virtual {p0}, Lcom/living/emo/blebean/response/WifiRequestResponse;->getData()Lcom/living/emo/blebean/response/WifiRequestResponse$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/living/emo/blebean/response/WifiRequestResponse$DataBean;->getResult()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 16
    invoke-virtual {p0}, Lcom/living/emo/blebean/response/WifiRequestResponse;->getData()Lcom/living/emo/blebean/response/WifiRequestResponse$DataBean;

    move-result-object p0

    invoke-virtual {p0}, Lcom/living/emo/blebean/response/WifiRequestResponse$DataBean;->getList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/living/emo/blebean/parse/BleWifiRequestParse$Callback;->success(Ljava/util/List;)V

    goto :goto_0

    .line 19
    :cond_0
    invoke-interface {p1}, Lcom/living/emo/blebean/parse/BleWifiRequestParse$Callback;->fail()V

    :cond_1
    :goto_0
    return-void
.end method
