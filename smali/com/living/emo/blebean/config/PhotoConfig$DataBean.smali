.class public Lcom/living/emo/blebean/config/PhotoConfig$DataBean;
.super Ljava/lang/Object;
.source "PhotoConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/living/emo/blebean/config/PhotoConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/living/emo/blebean/config/PhotoConfig$DataBean$ServerBean;
    }
.end annotation


# instance fields
.field private op:Ljava/lang/String;

.field private photo_name:Ljava/lang/String;

.field private server:Lcom/living/emo/blebean/config/PhotoConfig$DataBean$ServerBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static objectFromData(Ljava/lang/String;)Lcom/living/emo/blebean/config/PhotoConfig$DataBean;
    .locals 2

    .line 54
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/living/emo/blebean/config/PhotoConfig$DataBean;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/living/emo/blebean/config/PhotoConfig$DataBean;

    return-object p0
.end method


# virtual methods
.method public getOp()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/living/emo/blebean/config/PhotoConfig$DataBean;->op:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoto_name()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/living/emo/blebean/config/PhotoConfig$DataBean;->photo_name:Ljava/lang/String;

    return-object v0
.end method

.method public getServer()Lcom/living/emo/blebean/config/PhotoConfig$DataBean$ServerBean;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/living/emo/blebean/config/PhotoConfig$DataBean;->server:Lcom/living/emo/blebean/config/PhotoConfig$DataBean$ServerBean;

    return-object v0
.end method

.method public setOp(Ljava/lang/String;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/living/emo/blebean/config/PhotoConfig$DataBean;->op:Ljava/lang/String;

    return-void
.end method

.method public setPhoto_name(Ljava/lang/String;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/living/emo/blebean/config/PhotoConfig$DataBean;->photo_name:Ljava/lang/String;

    return-void
.end method

.method public setServer(Lcom/living/emo/blebean/config/PhotoConfig$DataBean$ServerBean;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/living/emo/blebean/config/PhotoConfig$DataBean;->server:Lcom/living/emo/blebean/config/PhotoConfig$DataBean$ServerBean;

    return-void
.end method
