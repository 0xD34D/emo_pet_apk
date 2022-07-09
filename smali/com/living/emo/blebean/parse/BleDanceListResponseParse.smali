.class public Lcom/living/emo/blebean/parse/BleDanceListResponseParse;
.super Ljava/lang/Object;
.source "BleDanceListResponseParse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/living/emo/blebean/parse/BleDanceListResponseParse$Callback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static danceLists(Ljava/lang/String;Lcom/living/emo/blebean/parse/BleDanceListResponseParse$Callback;)V
    .locals 1

    .line 11
    invoke-static {p0}, Lcom/living/emo/blebean/response/DanceListResponse;->objectFromData(Ljava/lang/String;)Lcom/living/emo/blebean/response/DanceListResponse;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 12
    invoke-virtual {p0}, Lcom/living/emo/blebean/response/DanceListResponse;->getData()Lcom/living/emo/blebean/response/DanceListResponse$DataBean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/living/emo/blebean/response/DanceListResponse;->getData()Lcom/living/emo/blebean/response/DanceListResponse$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/living/emo/blebean/response/DanceListResponse$DataBean;->getDances()Lcom/living/emo/blebean/response/DanceListResponse$DataBean$DancesBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 13
    invoke-virtual {p0}, Lcom/living/emo/blebean/response/DanceListResponse;->getData()Lcom/living/emo/blebean/response/DanceListResponse$DataBean;

    move-result-object p0

    invoke-virtual {p0}, Lcom/living/emo/blebean/response/DanceListResponse$DataBean;->getDances()Lcom/living/emo/blebean/response/DanceListResponse$DataBean$DancesBean;

    move-result-object p0

    invoke-virtual {p0}, Lcom/living/emo/blebean/response/DanceListResponse$DataBean$DancesBean;->getJoris_unlocked()Ljava/util/List;

    move-result-object p0

    .line 14
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-interface {p1, p0}, Lcom/living/emo/blebean/parse/BleDanceListResponseParse$Callback;->response(I)V

    :cond_0
    return-void
.end method
