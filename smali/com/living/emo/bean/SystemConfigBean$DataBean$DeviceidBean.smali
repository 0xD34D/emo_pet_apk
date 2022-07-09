.class public Lcom/living/emo/bean/SystemConfigBean$DataBean$DeviceidBean;
.super Ljava/lang/Object;
.source "SystemConfigBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/living/emo/bean/SystemConfigBean$DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeviceidBean"
.end annotation


# instance fields
.field private device_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static objectFromData(Ljava/lang/String;)Lcom/living/emo/bean/SystemConfigBean$DataBean$DeviceidBean;
    .locals 2

    .line 151
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/living/emo/bean/SystemConfigBean$DataBean$DeviceidBean;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/living/emo/bean/SystemConfigBean$DataBean$DeviceidBean;

    return-object p0
.end method


# virtual methods
.method public getDevice_id()Ljava/lang/String;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/living/emo/bean/SystemConfigBean$DataBean$DeviceidBean;->device_id:Ljava/lang/String;

    return-object v0
.end method

.method public setDevice_id(Ljava/lang/String;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/living/emo/bean/SystemConfigBean$DataBean$DeviceidBean;->device_id:Ljava/lang/String;

    return-void
.end method
