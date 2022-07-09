.class public Lcom/living/emo/bean/DataBean;
.super Ljava/lang/Object;
.source "DataBean.java"


# instance fields
.field public imageRes:Ljava/lang/Integer;

.field public imageUrl:Ljava/lang/String;

.field public title:Ljava/lang/Integer;

.field public viewType:I


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;I)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/living/emo/bean/DataBean;->imageRes:Ljava/lang/Integer;

    .line 22
    iput-object p2, p0, Lcom/living/emo/bean/DataBean;->title:Ljava/lang/Integer;

    .line 23
    iput p3, p0, Lcom/living/emo/bean/DataBean;->viewType:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;I)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/living/emo/bean/DataBean;->imageUrl:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/living/emo/bean/DataBean;->title:Ljava/lang/Integer;

    .line 29
    iput p3, p0, Lcom/living/emo/bean/DataBean;->viewType:I

    return-void
.end method

.method public static getData()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/living/emo/bean/DataBean;",
            ">;"
        }
    .end annotation

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 34
    new-instance v1, Lcom/living/emo/bean/DataBean;

    const v2, 0x7f0802cc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f08034e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lcom/living/emo/bean/DataBean;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    new-instance v1, Lcom/living/emo/bean/DataBean;

    const v2, 0x7f0802d8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f080365

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x5

    invoke-direct {v1, v2, v3, v4}, Lcom/living/emo/bean/DataBean;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    new-instance v1, Lcom/living/emo/bean/DataBean;

    const v2, 0x7f0802cd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f080351

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    invoke-direct {v1, v2, v3, v4}, Lcom/living/emo/bean/DataBean;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    new-instance v1, Lcom/living/emo/bean/DataBean;

    const v2, 0x7f0802d5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f08035c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/living/emo/bean/DataBean;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    new-instance v1, Lcom/living/emo/bean/DataBean;

    const v2, 0x7f0802d0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f080352

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x4

    invoke-direct {v1, v2, v3, v4}, Lcom/living/emo/bean/DataBean;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    new-instance v1, Lcom/living/emo/bean/DataBean;

    const v2, 0x7f0802d4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f080355

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x6

    invoke-direct {v1, v2, v3, v4}, Lcom/living/emo/bean/DataBean;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
