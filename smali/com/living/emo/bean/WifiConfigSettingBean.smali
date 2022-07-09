.class public Lcom/living/emo/bean/WifiConfigSettingBean;
.super Ljava/lang/Object;
.source "WifiConfigSettingBean.java"


# instance fields
.field private isConnected:Z

.field private isToast:Z

.field private wifiName:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLjava/lang/String;Z)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-boolean p1, p0, Lcom/living/emo/bean/WifiConfigSettingBean;->isToast:Z

    .line 10
    iput-object p2, p0, Lcom/living/emo/bean/WifiConfigSettingBean;->wifiName:Ljava/lang/String;

    .line 11
    iput-boolean p3, p0, Lcom/living/emo/bean/WifiConfigSettingBean;->isConnected:Z

    return-void
.end method


# virtual methods
.method public getWifiName()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/living/emo/bean/WifiConfigSettingBean;->wifiName:Ljava/lang/String;

    return-object v0
.end method

.method public isConnected()Z
    .locals 1

    .line 31
    iget-boolean v0, p0, Lcom/living/emo/bean/WifiConfigSettingBean;->isConnected:Z

    return v0
.end method

.method public isToast()Z
    .locals 1

    .line 15
    iget-boolean v0, p0, Lcom/living/emo/bean/WifiConfigSettingBean;->isToast:Z

    return v0
.end method

.method public setConnected(Z)V
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/living/emo/bean/WifiConfigSettingBean;->isConnected:Z

    return-void
.end method

.method public setToast(Z)V
    .locals 0

    .line 19
    iput-boolean p1, p0, Lcom/living/emo/bean/WifiConfigSettingBean;->isToast:Z

    return-void
.end method

.method public setWifiName(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/living/emo/bean/WifiConfigSettingBean;->wifiName:Ljava/lang/String;

    return-void
.end method
