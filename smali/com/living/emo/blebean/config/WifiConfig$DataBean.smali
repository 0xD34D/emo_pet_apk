.class public Lcom/living/emo/blebean/config/WifiConfig$DataBean;
.super Ljava/lang/Object;
.source "WifiConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/living/emo/blebean/config/WifiConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation


# instance fields
.field private password:Ljava/lang/String;

.field private ssid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static objectFromData(Ljava/lang/String;)Lcom/living/emo/blebean/config/WifiConfig$DataBean;
    .locals 2

    .line 57
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/living/emo/blebean/config/WifiConfig$DataBean;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/living/emo/blebean/config/WifiConfig$DataBean;

    return-object p0
.end method


# virtual methods
.method public getPassword()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/living/emo/blebean/config/WifiConfig$DataBean;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getSsid()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/living/emo/blebean/config/WifiConfig$DataBean;->ssid:Ljava/lang/String;

    return-object v0
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/living/emo/blebean/config/WifiConfig$DataBean;->password:Ljava/lang/String;

    return-void
.end method

.method public setSsid(Ljava/lang/String;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/living/emo/blebean/config/WifiConfig$DataBean;->ssid:Ljava/lang/String;

    return-void
.end method
