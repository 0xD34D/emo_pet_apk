.class public Lcom/living/emo/blebean/parse/BleAchievementsResponseParse;
.super Ljava/lang/Object;
.source "BleAchievementsResponseParse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/living/emo/blebean/parse/BleAchievementsResponseParse$Callback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static achievements(Ljava/lang/String;Lcom/living/emo/blebean/parse/BleAchievementsResponseParse$Callback;)V
    .locals 1

    .line 10
    invoke-static {p0}, Lcom/living/emo/blebean/response/AchievementsResponse;->objectFromData(Ljava/lang/String;)Lcom/living/emo/blebean/response/AchievementsResponse;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 11
    invoke-virtual {p0}, Lcom/living/emo/blebean/response/AchievementsResponse;->getData()Lcom/living/emo/blebean/response/AchievementsResponse$DataBean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/living/emo/blebean/response/AchievementsResponse;->getData()Lcom/living/emo/blebean/response/AchievementsResponse$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/living/emo/blebean/response/AchievementsResponse$DataBean;->getAchievements()Lcom/living/emo/blebean/response/AchievementsResponse$DataBean$AchievementsBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {p0}, Lcom/living/emo/blebean/response/AchievementsResponse;->getData()Lcom/living/emo/blebean/response/AchievementsResponse$DataBean;

    move-result-object p0

    invoke-virtual {p0}, Lcom/living/emo/blebean/response/AchievementsResponse$DataBean;->getAchievements()Lcom/living/emo/blebean/response/AchievementsResponse$DataBean$AchievementsBean;

    move-result-object p0

    .line 13
    invoke-virtual {p0}, Lcom/living/emo/blebean/response/AchievementsResponse$DataBean$AchievementsBean;->getUnlocked()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 14
    invoke-virtual {p0}, Lcom/living/emo/blebean/response/AchievementsResponse$DataBean$AchievementsBean;->getUnlocked()Ljava/util/List;

    move-result-object p0

    .line 15
    invoke-interface {p1, p0}, Lcom/living/emo/blebean/parse/BleAchievementsResponseParse$Callback;->response(Ljava/util/List;)V

    :cond_0
    return-void
.end method
