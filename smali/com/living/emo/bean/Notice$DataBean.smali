.class public Lcom/living/emo/bean/Notice$DataBean;
.super Ljava/lang/Object;
.source "Notice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/living/emo/bean/Notice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/living/emo/bean/Notice$DataBean$ArticleBean;
    }
.end annotation


# instance fields
.field private article:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/living/emo/bean/Notice$DataBean$ArticleBean;",
            ">;"
        }
    .end annotation
.end field

.field private category:Ljava/lang/String;

.field private category_id:I

.field private hasnew:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static objectFromData(Ljava/lang/String;)Lcom/living/emo/bean/Notice$DataBean;
    .locals 2

    .line 77
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/living/emo/bean/Notice$DataBean;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/living/emo/bean/Notice$DataBean;

    return-object p0
.end method


# virtual methods
.method public getArticle()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/living/emo/bean/Notice$DataBean$ArticleBean;",
            ">;"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/living/emo/bean/Notice$DataBean;->article:Ljava/util/List;

    return-object v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/living/emo/bean/Notice$DataBean;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getCategory_id()I
    .locals 1

    .line 89
    iget v0, p0, Lcom/living/emo/bean/Notice$DataBean;->category_id:I

    return v0
.end method

.method public isHasnew()Z
    .locals 1

    .line 97
    iget-boolean v0, p0, Lcom/living/emo/bean/Notice$DataBean;->hasnew:Z

    return v0
.end method

.method public setArticle(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/living/emo/bean/Notice$DataBean$ArticleBean;",
            ">;)V"
        }
    .end annotation

    .line 109
    iput-object p1, p0, Lcom/living/emo/bean/Notice$DataBean;->article:Ljava/util/List;

    return-void
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/living/emo/bean/Notice$DataBean;->category:Ljava/lang/String;

    return-void
.end method

.method public setCategory_id(I)V
    .locals 0

    .line 93
    iput p1, p0, Lcom/living/emo/bean/Notice$DataBean;->category_id:I

    return-void
.end method

.method public setHasnew(Z)V
    .locals 0

    .line 101
    iput-boolean p1, p0, Lcom/living/emo/bean/Notice$DataBean;->hasnew:Z

    return-void
.end method
