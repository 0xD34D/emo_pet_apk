.class public Lcom/living/emo/blebean/config/WifiRequestConfig$DataBean;
.super Ljava/lang/Object;
.source "WifiRequestConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/living/emo/blebean/config/WifiRequestConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation


# instance fields
.field private operation:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static objectFromData(Ljava/lang/String;)Lcom/living/emo/blebean/config/WifiRequestConfig$DataBean;
    .locals 2

    .line 46
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/living/emo/blebean/config/WifiRequestConfig$DataBean;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/living/emo/blebean/config/WifiRequestConfig$DataBean;

    return-object p0
.end method


# virtual methods
.method public getOperation()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/living/emo/blebean/config/WifiRequestConfig$DataBean;->operation:Ljava/lang/String;

    return-object v0
.end method

.method public setOperation(Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/living/emo/blebean/config/WifiRequestConfig$DataBean;->operation:Ljava/lang/String;

    return-void
.end method
