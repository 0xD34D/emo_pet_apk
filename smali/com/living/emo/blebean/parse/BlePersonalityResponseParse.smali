.class public Lcom/living/emo/blebean/parse/BlePersonalityResponseParse;
.super Ljava/lang/Object;
.source "BlePersonalityResponseParse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/living/emo/blebean/parse/BlePersonalityResponseParse$Callback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static personality(Ljava/lang/String;Lcom/living/emo/blebean/parse/BlePersonalityResponseParse$Callback;)V
    .locals 1

    .line 7
    invoke-static {p0}, Lcom/living/emo/blebean/config/PersonalityConfig;->objectFromData(Ljava/lang/String;)Lcom/living/emo/blebean/config/PersonalityConfig;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 8
    invoke-virtual {p0}, Lcom/living/emo/blebean/config/PersonalityConfig;->getData()Lcom/living/emo/blebean/config/PersonalityConfig$DataBean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/living/emo/blebean/config/PersonalityConfig;->getData()Lcom/living/emo/blebean/config/PersonalityConfig$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/living/emo/blebean/config/PersonalityConfig$DataBean;->getPersonality()Lcom/living/emo/blebean/config/PersonalityConfig$DataBean$PersonalityBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {p0}, Lcom/living/emo/blebean/config/PersonalityConfig;->getData()Lcom/living/emo/blebean/config/PersonalityConfig$DataBean;

    move-result-object p0

    invoke-virtual {p0}, Lcom/living/emo/blebean/config/PersonalityConfig$DataBean;->getPersonality()Lcom/living/emo/blebean/config/PersonalityConfig$DataBean$PersonalityBean;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/living/emo/blebean/parse/BlePersonalityResponseParse$Callback;->response(Lcom/living/emo/blebean/config/PersonalityConfig$DataBean$PersonalityBean;)V

    :cond_0
    return-void
.end method
