.class public Lcom/living/emo/blebean/config/CustomizeConfig$DataBean$ServerBean;
.super Ljava/lang/Object;
.source "CustomizeConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/living/emo/blebean/config/CustomizeConfig$DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServerBean"
.end annotation


# instance fields
.field private ip:Ljava/lang/String;

.field private port:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static objectFromData(Ljava/lang/String;)Lcom/living/emo/blebean/config/CustomizeConfig$DataBean$ServerBean;
    .locals 2

    .line 106
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/living/emo/blebean/config/CustomizeConfig$DataBean$ServerBean;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/living/emo/blebean/config/CustomizeConfig$DataBean$ServerBean;

    return-object p0
.end method


# virtual methods
.method public getIp()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/living/emo/blebean/config/CustomizeConfig$DataBean$ServerBean;->ip:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .line 118
    iget v0, p0, Lcom/living/emo/blebean/config/CustomizeConfig$DataBean$ServerBean;->port:I

    return v0
.end method

.method public setIp(Ljava/lang/String;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/living/emo/blebean/config/CustomizeConfig$DataBean$ServerBean;->ip:Ljava/lang/String;

    return-void
.end method

.method public setPort(I)V
    .locals 0

    .line 122
    iput p1, p0, Lcom/living/emo/blebean/config/CustomizeConfig$DataBean$ServerBean;->port:I

    return-void
.end method
