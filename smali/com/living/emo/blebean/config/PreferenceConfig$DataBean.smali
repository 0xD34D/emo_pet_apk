.class public Lcom/living/emo/blebean/config/PreferenceConfig$DataBean;
.super Ljava/lang/Object;
.source "PreferenceConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/living/emo/blebean/config/PreferenceConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/living/emo/blebean/config/PreferenceConfig$DataBean$PreferenceBean;
    }
.end annotation


# instance fields
.field private preference:Lcom/living/emo/blebean/config/PreferenceConfig$DataBean$PreferenceBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static objectFromData(Ljava/lang/String;)Lcom/living/emo/blebean/config/PreferenceConfig$DataBean;
    .locals 2

    .line 46
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/living/emo/blebean/config/PreferenceConfig$DataBean;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/living/emo/blebean/config/PreferenceConfig$DataBean;

    return-object p0
.end method


# virtual methods
.method public getPreference()Lcom/living/emo/blebean/config/PreferenceConfig$DataBean$PreferenceBean;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/living/emo/blebean/config/PreferenceConfig$DataBean;->preference:Lcom/living/emo/blebean/config/PreferenceConfig$DataBean$PreferenceBean;

    return-object v0
.end method

.method public setPreference(Lcom/living/emo/blebean/config/PreferenceConfig$DataBean$PreferenceBean;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/living/emo/blebean/config/PreferenceConfig$DataBean;->preference:Lcom/living/emo/blebean/config/PreferenceConfig$DataBean$PreferenceBean;

    return-void
.end method
