.class public Lcom/living/emo/bean/SystemConfigBean$DataBean$LightBean;
.super Ljava/lang/Object;
.source "SystemConfigBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/living/emo/bean/SystemConfigBean$DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LightBean"
.end annotation


# instance fields
.field private state:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static objectFromData(Ljava/lang/String;)Lcom/living/emo/bean/SystemConfigBean$DataBean$LightBean;
    .locals 2

    .line 292
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/living/emo/bean/SystemConfigBean$DataBean$LightBean;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/living/emo/bean/SystemConfigBean$DataBean$LightBean;

    return-object p0
.end method


# virtual methods
.method public getState()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 296
    iget-object v0, p0, Lcom/living/emo/bean/SystemConfigBean$DataBean$LightBean;->state:Ljava/util/List;

    return-object v0
.end method

.method public setState(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 300
    iput-object p1, p0, Lcom/living/emo/bean/SystemConfigBean$DataBean$LightBean;->state:Ljava/util/List;

    return-void
.end method
