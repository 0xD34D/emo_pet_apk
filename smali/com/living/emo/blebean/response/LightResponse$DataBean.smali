.class public Lcom/living/emo/blebean/response/LightResponse$DataBean;
.super Ljava/lang/Object;
.source "LightResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/living/emo/blebean/response/LightResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/living/emo/blebean/response/LightResponse$DataBean$LightBean;
    }
.end annotation


# instance fields
.field private light:Lcom/living/emo/blebean/response/LightResponse$DataBean$LightBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static objectFromData(Ljava/lang/String;)Lcom/living/emo/blebean/response/LightResponse$DataBean;
    .locals 2

    .line 54
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/living/emo/blebean/response/LightResponse$DataBean;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/living/emo/blebean/response/LightResponse$DataBean;

    return-object p0
.end method


# virtual methods
.method public getLight()Lcom/living/emo/blebean/response/LightResponse$DataBean$LightBean;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/living/emo/blebean/response/LightResponse$DataBean;->light:Lcom/living/emo/blebean/response/LightResponse$DataBean$LightBean;

    return-object v0
.end method

.method public setLight(Lcom/living/emo/blebean/response/LightResponse$DataBean$LightBean;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/living/emo/blebean/response/LightResponse$DataBean;->light:Lcom/living/emo/blebean/response/LightResponse$DataBean$LightBean;

    return-void
.end method
