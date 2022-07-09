.class public Lcom/living/emo/bean/SystemConfigBean$DataBean;
.super Ljava/lang/Object;
.source "SystemConfigBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/living/emo/bean/SystemConfigBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/living/emo/bean/SystemConfigBean$DataBean$TimezoneBean;,
        Lcom/living/emo/bean/SystemConfigBean$DataBean$CityBean;,
        Lcom/living/emo/bean/SystemConfigBean$DataBean$AlertBean;,
        Lcom/living/emo/bean/SystemConfigBean$DataBean$LightBean;,
        Lcom/living/emo/bean/SystemConfigBean$DataBean$VersionBean;,
        Lcom/living/emo/bean/SystemConfigBean$DataBean$XiaoaiBean;,
        Lcom/living/emo/bean/SystemConfigBean$DataBean$NetworkBean;,
        Lcom/living/emo/bean/SystemConfigBean$DataBean$AlexaBean;,
        Lcom/living/emo/bean/SystemConfigBean$DataBean$DeviceidBean;
    }
.end annotation


# instance fields
.field private alert:Lcom/living/emo/bean/SystemConfigBean$DataBean$AlertBean;

.field private alexa:Lcom/living/emo/bean/SystemConfigBean$DataBean$AlexaBean;

.field private city:Lcom/living/emo/bean/SystemConfigBean$DataBean$CityBean;

.field private deviceid:Lcom/living/emo/bean/SystemConfigBean$DataBean$DeviceidBean;

.field private light:Lcom/living/emo/bean/SystemConfigBean$DataBean$LightBean;

.field private network:Lcom/living/emo/bean/SystemConfigBean$DataBean$NetworkBean;

.field private timezone:Lcom/living/emo/bean/SystemConfigBean$DataBean$TimezoneBean;

.field private version:Lcom/living/emo/bean/SystemConfigBean$DataBean$VersionBean;

.field private xiaoai:Lcom/living/emo/bean/SystemConfigBean$DataBean$XiaoaiBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static objectFromData(Ljava/lang/String;)Lcom/living/emo/bean/SystemConfigBean$DataBean;
    .locals 2

    .line 67
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/living/emo/bean/SystemConfigBean$DataBean;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/living/emo/bean/SystemConfigBean$DataBean;

    return-object p0
.end method


# virtual methods
.method public getAlert()Lcom/living/emo/bean/SystemConfigBean$DataBean$AlertBean;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/living/emo/bean/SystemConfigBean$DataBean;->alert:Lcom/living/emo/bean/SystemConfigBean$DataBean$AlertBean;

    return-object v0
.end method

.method public getAlexa()Lcom/living/emo/bean/SystemConfigBean$DataBean$AlexaBean;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/living/emo/bean/SystemConfigBean$DataBean;->alexa:Lcom/living/emo/bean/SystemConfigBean$DataBean$AlexaBean;

    return-object v0
.end method

.method public getCity()Lcom/living/emo/bean/SystemConfigBean$DataBean$CityBean;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/living/emo/bean/SystemConfigBean$DataBean;->city:Lcom/living/emo/bean/SystemConfigBean$DataBean$CityBean;

    return-object v0
.end method

.method public getDeviceid()Lcom/living/emo/bean/SystemConfigBean$DataBean$DeviceidBean;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/living/emo/bean/SystemConfigBean$DataBean;->deviceid:Lcom/living/emo/bean/SystemConfigBean$DataBean$DeviceidBean;

    return-object v0
.end method

.method public getLight()Lcom/living/emo/bean/SystemConfigBean$DataBean$LightBean;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/living/emo/bean/SystemConfigBean$DataBean;->light:Lcom/living/emo/bean/SystemConfigBean$DataBean$LightBean;

    return-object v0
.end method

.method public getNetwork()Lcom/living/emo/bean/SystemConfigBean$DataBean$NetworkBean;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/living/emo/bean/SystemConfigBean$DataBean;->network:Lcom/living/emo/bean/SystemConfigBean$DataBean$NetworkBean;

    return-object v0
.end method

.method public getTimezone()Lcom/living/emo/bean/SystemConfigBean$DataBean$TimezoneBean;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/living/emo/bean/SystemConfigBean$DataBean;->timezone:Lcom/living/emo/bean/SystemConfigBean$DataBean$TimezoneBean;

    return-object v0
.end method

.method public getVersion()Lcom/living/emo/bean/SystemConfigBean$DataBean$VersionBean;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/living/emo/bean/SystemConfigBean$DataBean;->version:Lcom/living/emo/bean/SystemConfigBean$DataBean$VersionBean;

    return-object v0
.end method

.method public getXiaoai()Lcom/living/emo/bean/SystemConfigBean$DataBean$XiaoaiBean;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/living/emo/bean/SystemConfigBean$DataBean;->xiaoai:Lcom/living/emo/bean/SystemConfigBean$DataBean$XiaoaiBean;

    return-object v0
.end method

.method public setAlert(Lcom/living/emo/bean/SystemConfigBean$DataBean$AlertBean;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/living/emo/bean/SystemConfigBean$DataBean;->alert:Lcom/living/emo/bean/SystemConfigBean$DataBean$AlertBean;

    return-void
.end method

.method public setAlexa(Lcom/living/emo/bean/SystemConfigBean$DataBean$AlexaBean;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/living/emo/bean/SystemConfigBean$DataBean;->alexa:Lcom/living/emo/bean/SystemConfigBean$DataBean$AlexaBean;

    return-void
.end method

.method public setCity(Lcom/living/emo/bean/SystemConfigBean$DataBean$CityBean;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/living/emo/bean/SystemConfigBean$DataBean;->city:Lcom/living/emo/bean/SystemConfigBean$DataBean$CityBean;

    return-void
.end method

.method public setDeviceid(Lcom/living/emo/bean/SystemConfigBean$DataBean$DeviceidBean;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/living/emo/bean/SystemConfigBean$DataBean;->deviceid:Lcom/living/emo/bean/SystemConfigBean$DataBean$DeviceidBean;

    return-void
.end method

.method public setLight(Lcom/living/emo/bean/SystemConfigBean$DataBean$LightBean;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/living/emo/bean/SystemConfigBean$DataBean;->light:Lcom/living/emo/bean/SystemConfigBean$DataBean$LightBean;

    return-void
.end method

.method public setNetwork(Lcom/living/emo/bean/SystemConfigBean$DataBean$NetworkBean;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/living/emo/bean/SystemConfigBean$DataBean;->network:Lcom/living/emo/bean/SystemConfigBean$DataBean$NetworkBean;

    return-void
.end method

.method public setTimezone(Lcom/living/emo/bean/SystemConfigBean$DataBean$TimezoneBean;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/living/emo/bean/SystemConfigBean$DataBean;->timezone:Lcom/living/emo/bean/SystemConfigBean$DataBean$TimezoneBean;

    return-void
.end method

.method public setVersion(Lcom/living/emo/bean/SystemConfigBean$DataBean$VersionBean;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/living/emo/bean/SystemConfigBean$DataBean;->version:Lcom/living/emo/bean/SystemConfigBean$DataBean$VersionBean;

    return-void
.end method

.method public setXiaoai(Lcom/living/emo/bean/SystemConfigBean$DataBean$XiaoaiBean;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/living/emo/bean/SystemConfigBean$DataBean;->xiaoai:Lcom/living/emo/bean/SystemConfigBean$DataBean$XiaoaiBean;

    return-void
.end method
