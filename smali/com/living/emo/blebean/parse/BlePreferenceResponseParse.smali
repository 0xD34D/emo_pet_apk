.class public Lcom/living/emo/blebean/parse/BlePreferenceResponseParse;
.super Ljava/lang/Object;
.source "BlePreferenceResponseParse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/living/emo/blebean/parse/BlePreferenceResponseParse$Callback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static preference(Ljava/lang/String;Lcom/living/emo/blebean/parse/BlePreferenceResponseParse$Callback;)V
    .locals 6

    .line 8
    invoke-static {p0}, Lcom/living/emo/blebean/config/PreferenceConfig;->objectFromData(Ljava/lang/String;)Lcom/living/emo/blebean/config/PreferenceConfig;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 9
    invoke-virtual {p0}, Lcom/living/emo/blebean/config/PreferenceConfig;->getData()Lcom/living/emo/blebean/config/PreferenceConfig$DataBean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/living/emo/blebean/config/PreferenceConfig;->getData()Lcom/living/emo/blebean/config/PreferenceConfig$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/living/emo/blebean/config/PreferenceConfig$DataBean;->getPreference()Lcom/living/emo/blebean/config/PreferenceConfig$DataBean$PreferenceBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {p0}, Lcom/living/emo/blebean/config/PreferenceConfig;->getData()Lcom/living/emo/blebean/config/PreferenceConfig$DataBean;

    move-result-object p0

    invoke-virtual {p0}, Lcom/living/emo/blebean/config/PreferenceConfig$DataBean;->getPreference()Lcom/living/emo/blebean/config/PreferenceConfig$DataBean$PreferenceBean;

    move-result-object p0

    .line 11
    invoke-virtual {p0}, Lcom/living/emo/blebean/config/PreferenceConfig$DataBean$PreferenceBean;->getVolume()I

    move-result v1

    .line 12
    invoke-virtual {p0}, Lcom/living/emo/blebean/config/PreferenceConfig$DataBean$PreferenceBean;->getTemperature()I

    move-result v2

    .line 13
    invoke-virtual {p0}, Lcom/living/emo/blebean/config/PreferenceConfig$DataBean$PreferenceBean;->getLength()I

    move-result v3

    .line 14
    invoke-virtual {p0}, Lcom/living/emo/blebean/config/PreferenceConfig$DataBean$PreferenceBean;->getAuto_update()I

    move-result v4

    .line 15
    invoke-virtual {p0}, Lcom/living/emo/blebean/config/PreferenceConfig$DataBean$PreferenceBean;->getSchedule_sound()I

    move-result v5

    move-object v0, p1

    .line 16
    invoke-interface/range {v0 .. v5}, Lcom/living/emo/blebean/parse/BlePreferenceResponseParse$Callback;->response(IIIII)V

    :cond_0
    return-void
.end method
