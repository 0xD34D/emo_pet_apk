.class public Lcom/living/emo/blebean/config/LightHslConfig;
.super Ljava/lang/Object;
.source "LightHslConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/living/emo/blebean/config/LightHslConfig$DataBean;
    }
.end annotation


# instance fields
.field private data:Lcom/living/emo/blebean/config/LightHslConfig$DataBean;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static objectFromData(Ljava/lang/String;)Lcom/living/emo/blebean/config/LightHslConfig;
    .locals 2

    .line 24
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/living/emo/blebean/config/LightHslConfig;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/living/emo/blebean/config/LightHslConfig;

    return-object p0
.end method


# virtual methods
.method public getData()Lcom/living/emo/blebean/config/LightHslConfig$DataBean;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/living/emo/blebean/config/LightHslConfig;->data:Lcom/living/emo/blebean/config/LightHslConfig$DataBean;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/living/emo/blebean/config/LightHslConfig;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setData(Lcom/living/emo/blebean/config/LightHslConfig$DataBean;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/living/emo/blebean/config/LightHslConfig;->data:Lcom/living/emo/blebean/config/LightHslConfig$DataBean;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/living/emo/blebean/config/LightHslConfig;->type:Ljava/lang/String;

    return-void
.end method
