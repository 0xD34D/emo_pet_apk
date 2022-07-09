.class public Lcom/living/emo/blebean/response/TimeZoneResponse$DataBean;
.super Ljava/lang/Object;
.source "TimeZoneResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/living/emo/blebean/response/TimeZoneResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/living/emo/blebean/response/TimeZoneResponse$DataBean$TimezoneBean;
    }
.end annotation


# instance fields
.field private timezone:Lcom/living/emo/blebean/response/TimeZoneResponse$DataBean$TimezoneBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static objectFromData(Ljava/lang/String;)Lcom/living/emo/blebean/response/TimeZoneResponse$DataBean;
    .locals 2

    .line 53
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/living/emo/blebean/response/TimeZoneResponse$DataBean;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/living/emo/blebean/response/TimeZoneResponse$DataBean;

    return-object p0
.end method


# virtual methods
.method public getTimezone()Lcom/living/emo/blebean/response/TimeZoneResponse$DataBean$TimezoneBean;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/living/emo/blebean/response/TimeZoneResponse$DataBean;->timezone:Lcom/living/emo/blebean/response/TimeZoneResponse$DataBean$TimezoneBean;

    return-object v0
.end method

.method public setTimezone(Lcom/living/emo/blebean/response/TimeZoneResponse$DataBean$TimezoneBean;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/living/emo/blebean/response/TimeZoneResponse$DataBean;->timezone:Lcom/living/emo/blebean/response/TimeZoneResponse$DataBean$TimezoneBean;

    return-void
.end method
