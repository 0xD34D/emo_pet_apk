.class public Lcom/living/emo/bean/SystemConfigBean$DataBean$AlertBean;
.super Ljava/lang/Object;
.source "SystemConfigBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/living/emo/bean/SystemConfigBean$DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlertBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/living/emo/bean/SystemConfigBean$DataBean$AlertBean$StateBean;
    }
.end annotation


# instance fields
.field private state:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/living/emo/bean/SystemConfigBean$DataBean$AlertBean$StateBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static objectFromData(Ljava/lang/String;)Lcom/living/emo/bean/SystemConfigBean$DataBean$AlertBean;
    .locals 2

    .line 309
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/living/emo/bean/SystemConfigBean$DataBean$AlertBean;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/living/emo/bean/SystemConfigBean$DataBean$AlertBean;

    return-object p0
.end method


# virtual methods
.method public getState()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/living/emo/bean/SystemConfigBean$DataBean$AlertBean$StateBean;",
            ">;"
        }
    .end annotation

    .line 313
    iget-object v0, p0, Lcom/living/emo/bean/SystemConfigBean$DataBean$AlertBean;->state:Ljava/util/List;

    return-object v0
.end method

.method public setState(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/living/emo/bean/SystemConfigBean$DataBean$AlertBean$StateBean;",
            ">;)V"
        }
    .end annotation

    .line 317
    iput-object p1, p0, Lcom/living/emo/bean/SystemConfigBean$DataBean$AlertBean;->state:Ljava/util/List;

    return-void
.end method
