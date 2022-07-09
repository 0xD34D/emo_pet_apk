.class public Lcom/living/emo/blebean/response/AlarmResponse$DataBean;
.super Ljava/lang/Object;
.source "AlarmResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/living/emo/blebean/response/AlarmResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/living/emo/blebean/response/AlarmResponse$DataBean$AlarmBean;
    }
.end annotation


# instance fields
.field private alarm:Lcom/living/emo/blebean/response/AlarmResponse$DataBean$AlarmBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static objectFromData(Ljava/lang/String;)Lcom/living/emo/blebean/response/AlarmResponse$DataBean;
    .locals 2

    .line 54
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/living/emo/blebean/response/AlarmResponse$DataBean;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/living/emo/blebean/response/AlarmResponse$DataBean;

    return-object p0
.end method


# virtual methods
.method public getAlarm()Lcom/living/emo/blebean/response/AlarmResponse$DataBean$AlarmBean;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/living/emo/blebean/response/AlarmResponse$DataBean;->alarm:Lcom/living/emo/blebean/response/AlarmResponse$DataBean$AlarmBean;

    return-object v0
.end method

.method public setAlarm(Lcom/living/emo/blebean/response/AlarmResponse$DataBean$AlarmBean;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/living/emo/blebean/response/AlarmResponse$DataBean;->alarm:Lcom/living/emo/blebean/response/AlarmResponse$DataBean$AlarmBean;

    return-void
.end method
