.class public Lcom/living/emo/model/DataConfig$DataBean$LightBean;
.super Ljava/lang/Object;
.source "DataConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/living/emo/model/DataConfig$DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LightBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/living/emo/model/DataConfig$DataBean$LightBean$StateBean;
    }
.end annotation


# instance fields
.field private state:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/living/emo/model/DataConfig$DataBean$LightBean$StateBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static objectFromData(Ljava/lang/String;)Lcom/living/emo/model/DataConfig$DataBean$LightBean;
    .locals 2

    .line 346
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/living/emo/model/DataConfig$DataBean$LightBean;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/living/emo/model/DataConfig$DataBean$LightBean;

    return-object p0
.end method


# virtual methods
.method public getState()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/living/emo/model/DataConfig$DataBean$LightBean$StateBean;",
            ">;"
        }
    .end annotation

    .line 350
    iget-object v0, p0, Lcom/living/emo/model/DataConfig$DataBean$LightBean;->state:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setState(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/living/emo/model/DataConfig$DataBean$LightBean$StateBean;",
            ">;)V"
        }
    .end annotation

    .line 354
    iput-object p1, p0, Lcom/living/emo/model/DataConfig$DataBean$LightBean;->state:Ljava/util/ArrayList;

    return-void
.end method
