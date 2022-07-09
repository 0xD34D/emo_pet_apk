.class public Lcom/living/emo/blebean/response/AchievementsResponse$DataBean;
.super Ljava/lang/Object;
.source "AchievementsResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/living/emo/blebean/response/AchievementsResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/living/emo/blebean/response/AchievementsResponse$DataBean$AchievementsBean;
    }
.end annotation


# instance fields
.field private achievements:Lcom/living/emo/blebean/response/AchievementsResponse$DataBean$AchievementsBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static objectFromData(Ljava/lang/String;)Lcom/living/emo/blebean/response/AchievementsResponse$DataBean;
    .locals 2

    .line 55
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/living/emo/blebean/response/AchievementsResponse$DataBean;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/living/emo/blebean/response/AchievementsResponse$DataBean;

    return-object p0
.end method


# virtual methods
.method public getAchievements()Lcom/living/emo/blebean/response/AchievementsResponse$DataBean$AchievementsBean;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/living/emo/blebean/response/AchievementsResponse$DataBean;->achievements:Lcom/living/emo/blebean/response/AchievementsResponse$DataBean$AchievementsBean;

    return-object v0
.end method

.method public setAchievements(Lcom/living/emo/blebean/response/AchievementsResponse$DataBean$AchievementsBean;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/living/emo/blebean/response/AchievementsResponse$DataBean;->achievements:Lcom/living/emo/blebean/response/AchievementsResponse$DataBean$AchievementsBean;

    return-void
.end method
