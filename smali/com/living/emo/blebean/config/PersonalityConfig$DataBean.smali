.class public Lcom/living/emo/blebean/config/PersonalityConfig$DataBean;
.super Ljava/lang/Object;
.source "PersonalityConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/living/emo/blebean/config/PersonalityConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/living/emo/blebean/config/PersonalityConfig$DataBean$PersonalityBean;
    }
.end annotation


# instance fields
.field private personality:Lcom/living/emo/blebean/config/PersonalityConfig$DataBean$PersonalityBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static objectFromData(Ljava/lang/String;)Lcom/living/emo/blebean/config/PersonalityConfig$DataBean;
    .locals 2

    .line 45
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/living/emo/blebean/config/PersonalityConfig$DataBean;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/living/emo/blebean/config/PersonalityConfig$DataBean;

    return-object p0
.end method


# virtual methods
.method public getPersonality()Lcom/living/emo/blebean/config/PersonalityConfig$DataBean$PersonalityBean;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/living/emo/blebean/config/PersonalityConfig$DataBean;->personality:Lcom/living/emo/blebean/config/PersonalityConfig$DataBean$PersonalityBean;

    return-object v0
.end method

.method public setPersonality(Lcom/living/emo/blebean/config/PersonalityConfig$DataBean$PersonalityBean;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/living/emo/blebean/config/PersonalityConfig$DataBean;->personality:Lcom/living/emo/blebean/config/PersonalityConfig$DataBean$PersonalityBean;

    return-void
.end method
