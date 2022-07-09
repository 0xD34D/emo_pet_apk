.class public Lcom/living/emo/blebean/response/DanceListResponse$DataBean;
.super Ljava/lang/Object;
.source "DanceListResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/living/emo/blebean/response/DanceListResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/living/emo/blebean/response/DanceListResponse$DataBean$DancesBean;
    }
.end annotation


# instance fields
.field private dances:Lcom/living/emo/blebean/response/DanceListResponse$DataBean$DancesBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static objectFromData(Ljava/lang/String;)Lcom/living/emo/blebean/response/DanceListResponse$DataBean;
    .locals 2

    .line 48
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/living/emo/blebean/response/DanceListResponse$DataBean;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/living/emo/blebean/response/DanceListResponse$DataBean;

    return-object p0
.end method


# virtual methods
.method public getDances()Lcom/living/emo/blebean/response/DanceListResponse$DataBean$DancesBean;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/living/emo/blebean/response/DanceListResponse$DataBean;->dances:Lcom/living/emo/blebean/response/DanceListResponse$DataBean$DancesBean;

    return-object v0
.end method

.method public setDances(Lcom/living/emo/blebean/response/DanceListResponse$DataBean$DancesBean;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/living/emo/blebean/response/DanceListResponse$DataBean;->dances:Lcom/living/emo/blebean/response/DanceListResponse$DataBean$DancesBean;

    return-void
.end method
