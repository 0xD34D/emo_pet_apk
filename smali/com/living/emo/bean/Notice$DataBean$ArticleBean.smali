.class public Lcom/living/emo/bean/Notice$DataBean$ArticleBean;
.super Ljava/lang/Object;
.source "Notice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/living/emo/bean/Notice$DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ArticleBean"
.end annotation


# instance fields
.field private content:Ljava/lang/String;

.field private created_at:Ljava/lang/String;

.field private id:I

.field private isnew:Z

.field private sub_title:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static objectFromData(Ljava/lang/String;)Lcom/living/emo/bean/Notice$DataBean$ArticleBean;
    .locals 2

    .line 140
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/living/emo/bean/Notice$DataBean$ArticleBean;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/living/emo/bean/Notice$DataBean$ArticleBean;

    return-object p0
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/living/emo/bean/Notice$DataBean$ArticleBean;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getCreated_at()Ljava/lang/String;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/living/emo/bean/Notice$DataBean$ArticleBean;->created_at:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 144
    iget v0, p0, Lcom/living/emo/bean/Notice$DataBean$ArticleBean;->id:I

    return v0
.end method

.method public getSub_title()Ljava/lang/String;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/living/emo/bean/Notice$DataBean$ArticleBean;->sub_title:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/living/emo/bean/Notice$DataBean$ArticleBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isIsnew()Z
    .locals 1

    .line 168
    iget-boolean v0, p0, Lcom/living/emo/bean/Notice$DataBean$ArticleBean;->isnew:Z

    return v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/living/emo/bean/Notice$DataBean$ArticleBean;->content:Ljava/lang/String;

    return-void
.end method

.method public setCreated_at(Ljava/lang/String;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/living/emo/bean/Notice$DataBean$ArticleBean;->created_at:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 148
    iput p1, p0, Lcom/living/emo/bean/Notice$DataBean$ArticleBean;->id:I

    return-void
.end method

.method public setIsnew(Z)V
    .locals 0

    .line 172
    iput-boolean p1, p0, Lcom/living/emo/bean/Notice$DataBean$ArticleBean;->isnew:Z

    return-void
.end method

.method public setSub_title(Ljava/lang/String;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/living/emo/bean/Notice$DataBean$ArticleBean;->sub_title:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/living/emo/bean/Notice$DataBean$ArticleBean;->title:Ljava/lang/String;

    return-void
.end method
