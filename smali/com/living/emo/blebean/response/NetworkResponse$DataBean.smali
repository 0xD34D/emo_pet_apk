.class public Lcom/living/emo/blebean/response/NetworkResponse$DataBean;
.super Ljava/lang/Object;
.source "NetworkResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/living/emo/blebean/response/NetworkResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/living/emo/blebean/response/NetworkResponse$DataBean$NetworkBean;
    }
.end annotation


# instance fields
.field private network:Lcom/living/emo/blebean/response/NetworkResponse$DataBean$NetworkBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static objectFromData(Ljava/lang/String;)Lcom/living/emo/blebean/response/NetworkResponse$DataBean;
    .locals 2

    .line 52
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/living/emo/blebean/response/NetworkResponse$DataBean;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/living/emo/blebean/response/NetworkResponse$DataBean;

    return-object p0
.end method


# virtual methods
.method public getNetwork()Lcom/living/emo/blebean/response/NetworkResponse$DataBean$NetworkBean;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/living/emo/blebean/response/NetworkResponse$DataBean;->network:Lcom/living/emo/blebean/response/NetworkResponse$DataBean$NetworkBean;

    return-object v0
.end method

.method public setNetwork(Lcom/living/emo/blebean/response/NetworkResponse$DataBean$NetworkBean;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/living/emo/blebean/response/NetworkResponse$DataBean;->network:Lcom/living/emo/blebean/response/NetworkResponse$DataBean$NetworkBean;

    return-void
.end method
