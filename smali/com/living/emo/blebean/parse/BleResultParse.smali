.class public Lcom/living/emo/blebean/parse/BleResultParse;
.super Ljava/lang/Object;
.source "BleResultParse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/living/emo/blebean/parse/BleResultParse$Callback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static alarm(Ljava/lang/String;Lcom/living/emo/blebean/parse/BleResultParse$Callback;)V
    .locals 1

    const-string v0, "alarm_rsp"

    .line 42
    invoke-static {p0, v0, p1}, Lcom/living/emo/blebean/parse/BleResultParse;->result(Ljava/lang/String;Ljava/lang/String;Lcom/living/emo/blebean/parse/BleResultParse$Callback;)V

    return-void
.end method

.method public static city(Ljava/lang/String;Lcom/living/emo/blebean/parse/BleResultParse$Callback;)V
    .locals 1

    const-string v0, "city_rsp"

    .line 30
    invoke-static {p0, v0, p1}, Lcom/living/emo/blebean/parse/BleResultParse;->result(Ljava/lang/String;Ljava/lang/String;Lcom/living/emo/blebean/parse/BleResultParse$Callback;)V

    return-void
.end method

.method public static light(Ljava/lang/String;Lcom/living/emo/blebean/parse/BleResultParse$Callback;)V
    .locals 1

    const-string v0, "light_rsp"

    .line 38
    invoke-static {p0, v0, p1}, Lcom/living/emo/blebean/parse/BleResultParse;->result(Ljava/lang/String;Ljava/lang/String;Lcom/living/emo/blebean/parse/BleResultParse$Callback;)V

    return-void
.end method

.method public static ota(Ljava/lang/String;Lcom/living/emo/blebean/parse/BleResultParse$Callback;)V
    .locals 1

    const-string v0, "ota_rsp"

    .line 26
    invoke-static {p0, v0, p1}, Lcom/living/emo/blebean/parse/BleResultParse;->result(Ljava/lang/String;Ljava/lang/String;Lcom/living/emo/blebean/parse/BleResultParse$Callback;)V

    return-void
.end method

.method public static powerOff(Ljava/lang/String;Lcom/living/emo/blebean/parse/BleResultParse$Callback;)V
    .locals 1

    const-string v0, "off_rsp"

    .line 45
    invoke-static {p0, v0, p1}, Lcom/living/emo/blebean/parse/BleResultParse;->result(Ljava/lang/String;Ljava/lang/String;Lcom/living/emo/blebean/parse/BleResultParse$Callback;)V

    return-void
.end method

.method private static result(Ljava/lang/String;Ljava/lang/String;Lcom/living/emo/blebean/parse/BleResultParse$Callback;)V
    .locals 1

    .line 9
    invoke-static {p0}, Lcom/living/emo/blebean/response/ResultResponse;->objectFromData(Ljava/lang/String;)Lcom/living/emo/blebean/response/ResultResponse;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 10
    invoke-virtual {p0}, Lcom/living/emo/blebean/response/ResultResponse;->getData()Lcom/living/emo/blebean/response/ResultResponse$DataBean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 11
    invoke-virtual {p0}, Lcom/living/emo/blebean/response/ResultResponse;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 12
    invoke-virtual {p0}, Lcom/living/emo/blebean/response/ResultResponse;->getData()Lcom/living/emo/blebean/response/ResultResponse$DataBean;

    move-result-object p0

    invoke-virtual {p0}, Lcom/living/emo/blebean/response/ResultResponse$DataBean;->getResult()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    .line 13
    invoke-interface {p2}, Lcom/living/emo/blebean/parse/BleResultParse$Callback;->success()V

    goto :goto_0

    .line 15
    :cond_0
    invoke-interface {p2}, Lcom/living/emo/blebean/parse/BleResultParse$Callback;->fail()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static timezone(Ljava/lang/String;Lcom/living/emo/blebean/parse/BleResultParse$Callback;)V
    .locals 1

    const-string v0, "timezone_rsp"

    .line 34
    invoke-static {p0, v0, p1}, Lcom/living/emo/blebean/parse/BleResultParse;->result(Ljava/lang/String;Ljava/lang/String;Lcom/living/emo/blebean/parse/BleResultParse$Callback;)V

    return-void
.end method

.method public static wifi(Ljava/lang/String;Lcom/living/emo/blebean/parse/BleResultParse$Callback;)V
    .locals 1

    const-string v0, "wifi_rsp"

    .line 22
    invoke-static {p0, v0, p1}, Lcom/living/emo/blebean/parse/BleResultParse;->result(Ljava/lang/String;Ljava/lang/String;Lcom/living/emo/blebean/parse/BleResultParse$Callback;)V

    return-void
.end method
