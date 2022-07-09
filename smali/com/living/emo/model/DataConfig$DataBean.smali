.class public Lcom/living/emo/model/DataConfig$DataBean;
.super Ljava/lang/Object;
.source "DataConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/living/emo/model/DataConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/living/emo/model/DataConfig$DataBean$XiaoaiBean;,
        Lcom/living/emo/model/DataConfig$DataBean$VersionBean;,
        Lcom/living/emo/model/DataConfig$DataBean$TimezoneBean;,
        Lcom/living/emo/model/DataConfig$DataBean$NetworkBean;,
        Lcom/living/emo/model/DataConfig$DataBean$LightBean;,
        Lcom/living/emo/model/DataConfig$DataBean$DeviceidBean;,
        Lcom/living/emo/model/DataConfig$DataBean$CityBean;,
        Lcom/living/emo/model/DataConfig$DataBean$AlexaBean;,
        Lcom/living/emo/model/DataConfig$DataBean$AlarmBean;
    }
.end annotation


# instance fields
.field private alarm:Lcom/living/emo/model/DataConfig$DataBean$AlarmBean;

.field private alexa:Lcom/living/emo/model/DataConfig$DataBean$AlexaBean;

.field private city:Lcom/living/emo/model/DataConfig$DataBean$CityBean;

.field private deviceid:Lcom/living/emo/model/DataConfig$DataBean$DeviceidBean;

.field private light:Lcom/living/emo/model/DataConfig$DataBean$LightBean;

.field private network:Lcom/living/emo/model/DataConfig$DataBean$NetworkBean;

.field private timezone:Lcom/living/emo/model/DataConfig$DataBean$TimezoneBean;

.field private version:Lcom/living/emo/model/DataConfig$DataBean$VersionBean;

.field private xiaoai:Lcom/living/emo/model/DataConfig$DataBean$XiaoaiBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static objectFromData(Ljava/lang/String;)Lcom/living/emo/model/DataConfig$DataBean;
    .locals 2

    .line 64
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/living/emo/model/DataConfig$DataBean;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/living/emo/model/DataConfig$DataBean;

    return-object p0
.end method


# virtual methods
.method public getAlarm()Lcom/living/emo/model/DataConfig$DataBean$AlarmBean;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/living/emo/model/DataConfig$DataBean;->alarm:Lcom/living/emo/model/DataConfig$DataBean$AlarmBean;

    return-object v0
.end method

.method public getAlexa()Lcom/living/emo/model/DataConfig$DataBean$AlexaBean;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/living/emo/model/DataConfig$DataBean;->alexa:Lcom/living/emo/model/DataConfig$DataBean$AlexaBean;

    return-object v0
.end method

.method public getCity()Lcom/living/emo/model/DataConfig$DataBean$CityBean;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/living/emo/model/DataConfig$DataBean;->city:Lcom/living/emo/model/DataConfig$DataBean$CityBean;

    return-object v0
.end method

.method public getDeviceid()Lcom/living/emo/model/DataConfig$DataBean$DeviceidBean;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/living/emo/model/DataConfig$DataBean;->deviceid:Lcom/living/emo/model/DataConfig$DataBean$DeviceidBean;

    return-object v0
.end method

.method public getLight()Lcom/living/emo/model/DataConfig$DataBean$LightBean;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/living/emo/model/DataConfig$DataBean;->light:Lcom/living/emo/model/DataConfig$DataBean$LightBean;

    return-object v0
.end method

.method public getNetwork()Lcom/living/emo/model/DataConfig$DataBean$NetworkBean;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/living/emo/model/DataConfig$DataBean;->network:Lcom/living/emo/model/DataConfig$DataBean$NetworkBean;

    return-object v0
.end method

.method public getTimezone()Lcom/living/emo/model/DataConfig$DataBean$TimezoneBean;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/living/emo/model/DataConfig$DataBean;->timezone:Lcom/living/emo/model/DataConfig$DataBean$TimezoneBean;

    return-object v0
.end method

.method public getVersion()Lcom/living/emo/model/DataConfig$DataBean$VersionBean;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/living/emo/model/DataConfig$DataBean;->version:Lcom/living/emo/model/DataConfig$DataBean$VersionBean;

    return-object v0
.end method

.method public getXiaoai()Lcom/living/emo/model/DataConfig$DataBean$XiaoaiBean;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/living/emo/model/DataConfig$DataBean;->xiaoai:Lcom/living/emo/model/DataConfig$DataBean$XiaoaiBean;

    return-object v0
.end method

.method public setAlarm(Lcom/living/emo/model/DataConfig$DataBean$AlarmBean;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/living/emo/model/DataConfig$DataBean;->alarm:Lcom/living/emo/model/DataConfig$DataBean$AlarmBean;

    return-void
.end method

.method public setAlexa(Lcom/living/emo/model/DataConfig$DataBean$AlexaBean;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/living/emo/model/DataConfig$DataBean;->alexa:Lcom/living/emo/model/DataConfig$DataBean$AlexaBean;

    return-void
.end method

.method public setCity(Lcom/living/emo/model/DataConfig$DataBean$CityBean;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/living/emo/model/DataConfig$DataBean;->city:Lcom/living/emo/model/DataConfig$DataBean$CityBean;

    return-void
.end method

.method public setDeviceid(Lcom/living/emo/model/DataConfig$DataBean$DeviceidBean;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/living/emo/model/DataConfig$DataBean;->deviceid:Lcom/living/emo/model/DataConfig$DataBean$DeviceidBean;

    return-void
.end method

.method public setLight(Lcom/living/emo/model/DataConfig$DataBean$LightBean;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/living/emo/model/DataConfig$DataBean;->light:Lcom/living/emo/model/DataConfig$DataBean$LightBean;

    return-void
.end method

.method public setNetwork(Lcom/living/emo/model/DataConfig$DataBean$NetworkBean;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/living/emo/model/DataConfig$DataBean;->network:Lcom/living/emo/model/DataConfig$DataBean$NetworkBean;

    return-void
.end method

.method public setTimezone(Lcom/living/emo/model/DataConfig$DataBean$TimezoneBean;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/living/emo/model/DataConfig$DataBean;->timezone:Lcom/living/emo/model/DataConfig$DataBean$TimezoneBean;

    return-void
.end method

.method public setVersion(Lcom/living/emo/model/DataConfig$DataBean$VersionBean;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/living/emo/model/DataConfig$DataBean;->version:Lcom/living/emo/model/DataConfig$DataBean$VersionBean;

    return-void
.end method

.method public setXiaoai(Lcom/living/emo/model/DataConfig$DataBean$XiaoaiBean;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/living/emo/model/DataConfig$DataBean;->xiaoai:Lcom/living/emo/model/DataConfig$DataBean$XiaoaiBean;

    return-void
.end method
