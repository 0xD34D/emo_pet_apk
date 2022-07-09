.class public Lcom/living/emo/blebean/response/WifiRequestResponse$DataBean$ListBean;
.super Ljava/lang/Object;
.source "WifiRequestResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/living/emo/blebean/response/WifiRequestResponse$DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListBean"
.end annotation


# instance fields
.field private rssi:I

.field private ssid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static objectFromData(Ljava/lang/String;)Lcom/living/emo/blebean/response/WifiRequestResponse$DataBean$ListBean;
    .locals 2

    .line 83
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/living/emo/blebean/response/WifiRequestResponse$DataBean$ListBean;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/living/emo/blebean/response/WifiRequestResponse$DataBean$ListBean;

    return-object p0
.end method


# virtual methods
.method public getRssi()I
    .locals 1

    .line 95
    iget v0, p0, Lcom/living/emo/blebean/response/WifiRequestResponse$DataBean$ListBean;->rssi:I

    return v0
.end method

.method public getSsid()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/living/emo/blebean/response/WifiRequestResponse$DataBean$ListBean;->ssid:Ljava/lang/String;

    return-object v0
.end method

.method public setRssi(I)V
    .locals 0

    .line 99
    iput p1, p0, Lcom/living/emo/blebean/response/WifiRequestResponse$DataBean$ListBean;->rssi:I

    return-void
.end method

.method public setSsid(Ljava/lang/String;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/living/emo/blebean/response/WifiRequestResponse$DataBean$ListBean;->ssid:Ljava/lang/String;

    return-void
.end method
