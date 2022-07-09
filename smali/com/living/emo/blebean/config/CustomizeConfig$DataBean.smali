.class public Lcom/living/emo/blebean/config/CustomizeConfig$DataBean;
.super Ljava/lang/Object;
.source "CustomizeConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/living/emo/blebean/config/CustomizeConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/living/emo/blebean/config/CustomizeConfig$DataBean$ImageBean;,
        Lcom/living/emo/blebean/config/CustomizeConfig$DataBean$ServerBean;
    }
.end annotation


# instance fields
.field private color:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private image:Lcom/living/emo/blebean/config/CustomizeConfig$DataBean$ImageBean;

.field private op:Ljava/lang/String;

.field private server:Lcom/living/emo/blebean/config/CustomizeConfig$DataBean$ServerBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static objectFromData(Ljava/lang/String;)Lcom/living/emo/blebean/config/CustomizeConfig$DataBean;
    .locals 2

    .line 59
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/living/emo/blebean/config/CustomizeConfig$DataBean;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/living/emo/blebean/config/CustomizeConfig$DataBean;

    return-object p0
.end method


# virtual methods
.method public getColor()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/living/emo/blebean/config/CustomizeConfig$DataBean;->color:Ljava/util/List;

    return-object v0
.end method

.method public getImage()Lcom/living/emo/blebean/config/CustomizeConfig$DataBean$ImageBean;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/living/emo/blebean/config/CustomizeConfig$DataBean;->image:Lcom/living/emo/blebean/config/CustomizeConfig$DataBean$ImageBean;

    return-object v0
.end method

.method public getOp()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/living/emo/blebean/config/CustomizeConfig$DataBean;->op:Ljava/lang/String;

    return-object v0
.end method

.method public getServer()Lcom/living/emo/blebean/config/CustomizeConfig$DataBean$ServerBean;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/living/emo/blebean/config/CustomizeConfig$DataBean;->server:Lcom/living/emo/blebean/config/CustomizeConfig$DataBean$ServerBean;

    return-object v0
.end method

.method public setColor(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 75
    iput-object p1, p0, Lcom/living/emo/blebean/config/CustomizeConfig$DataBean;->color:Ljava/util/List;

    return-void
.end method

.method public setImage(Lcom/living/emo/blebean/config/CustomizeConfig$DataBean$ImageBean;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/living/emo/blebean/config/CustomizeConfig$DataBean;->image:Lcom/living/emo/blebean/config/CustomizeConfig$DataBean$ImageBean;

    return-void
.end method

.method public setOp(Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/living/emo/blebean/config/CustomizeConfig$DataBean;->op:Ljava/lang/String;

    return-void
.end method

.method public setServer(Lcom/living/emo/blebean/config/CustomizeConfig$DataBean$ServerBean;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/living/emo/blebean/config/CustomizeConfig$DataBean;->server:Lcom/living/emo/blebean/config/CustomizeConfig$DataBean$ServerBean;

    return-void
.end method
