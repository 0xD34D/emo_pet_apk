.class public Lcom/living/emo/blebean/parse/BleResultNumParse;
.super Ljava/lang/Object;
.source "BleResultNumParse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/living/emo/blebean/parse/BleResultNumParse$Callback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static animRequest(Ljava/lang/String;Lcom/living/emo/blebean/parse/BleResultNumParse$Callback;)V
    .locals 1

    const-string v0, "anim_rsp"

    .line 18
    invoke-static {p0, v0, p1}, Lcom/living/emo/blebean/parse/BleResultNumParse;->result(Ljava/lang/String;Ljava/lang/String;Lcom/living/emo/blebean/parse/BleResultNumParse$Callback;)V

    return-void
.end method

.method private static result(Ljava/lang/String;Ljava/lang/String;Lcom/living/emo/blebean/parse/BleResultNumParse$Callback;)V
    .locals 1

    .line 9
    invoke-static {p0}, Lcom/living/emo/blebean/response/ResultResponse;->objectFromData(Ljava/lang/String;)Lcom/living/emo/blebean/response/ResultResponse;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 10
    invoke-virtual {p0}, Lcom/living/emo/blebean/response/ResultResponse;->getData()Lcom/living/emo/blebean/response/ResultResponse$DataBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {p0}, Lcom/living/emo/blebean/response/ResultResponse;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 12
    invoke-virtual {p0}, Lcom/living/emo/blebean/response/ResultResponse;->getData()Lcom/living/emo/blebean/response/ResultResponse$DataBean;

    move-result-object p0

    invoke-virtual {p0}, Lcom/living/emo/blebean/response/ResultResponse$DataBean;->getResult()I

    move-result p0

    invoke-interface {p2, p0}, Lcom/living/emo/blebean/parse/BleResultNumParse$Callback;->result(I)V

    :cond_0
    return-void
.end method
