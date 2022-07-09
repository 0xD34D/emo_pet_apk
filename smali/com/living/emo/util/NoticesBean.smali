.class public Lcom/living/emo/util/NoticesBean;
.super Ljava/lang/Object;
.source "NoticesBean.java"


# static fields
.field private static sNoticesBean:Lcom/living/emo/util/NoticesBean;


# instance fields
.field private mMainNew:Z

.field private mNotice:Lcom/living/emo/bean/Notice;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/living/emo/util/NoticesBean;->mNotice:Lcom/living/emo/bean/Notice;

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/living/emo/util/NoticesBean;->mMainNew:Z

    return-void
.end method

.method public static getInstance()Lcom/living/emo/util/NoticesBean;
    .locals 1

    .line 18
    sget-object v0, Lcom/living/emo/util/NoticesBean;->sNoticesBean:Lcom/living/emo/util/NoticesBean;

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Lcom/living/emo/util/NoticesBean;

    invoke-direct {v0}, Lcom/living/emo/util/NoticesBean;-><init>()V

    sput-object v0, Lcom/living/emo/util/NoticesBean;->sNoticesBean:Lcom/living/emo/util/NoticesBean;

    .line 21
    :cond_0
    sget-object v0, Lcom/living/emo/util/NoticesBean;->sNoticesBean:Lcom/living/emo/util/NoticesBean;

    return-object v0
.end method


# virtual methods
.method public empty()Z
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/living/emo/util/NoticesBean;->mNotice:Lcom/living/emo/bean/Notice;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getNotice()Lcom/living/emo/bean/Notice;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/living/emo/util/NoticesBean;->mNotice:Lcom/living/emo/bean/Notice;

    return-object v0
.end method

.method public isMainNew()Z
    .locals 1

    .line 49
    iget-boolean v0, p0, Lcom/living/emo/util/NoticesBean;->mMainNew:Z

    return v0
.end method

.method public setMainNew(Z)V
    .locals 0

    .line 53
    iput-boolean p1, p0, Lcom/living/emo/util/NoticesBean;->mMainNew:Z

    return-void
.end method

.method public setNotice(Lcom/living/emo/bean/Notice;)V
    .locals 4

    .line 25
    iput-object p1, p0, Lcom/living/emo/util/NoticesBean;->mNotice:Lcom/living/emo/bean/Notice;

    .line 28
    invoke-virtual {p1}, Lcom/living/emo/bean/Notice;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x4

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 31
    :cond_0
    iget-object p1, p0, Lcom/living/emo/util/NoticesBean;->mNotice:Lcom/living/emo/bean/Notice;

    invoke-virtual {p1}, Lcom/living/emo/bean/Notice;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    const/4 p1, 0x0

    move v1, p1

    move v2, v1

    :goto_1
    if-ge v1, v0, :cond_2

    .line 34
    iget-object v3, p0, Lcom/living/emo/util/NoticesBean;->mNotice:Lcom/living/emo/bean/Notice;

    invoke-virtual {v3}, Lcom/living/emo/bean/Notice;->getData()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/living/emo/bean/Notice$DataBean;

    invoke-virtual {v3}, Lcom/living/emo/bean/Notice$DataBean;->isHasnew()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    .line 35
    invoke-virtual {p0, v1}, Lcom/living/emo/util/NoticesBean;->setMainNew(Z)V

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    if-ne v2, v0, :cond_3

    .line 43
    invoke-virtual {p0, p1}, Lcom/living/emo/util/NoticesBean;->setMainNew(Z)V

    :cond_3
    return-void
.end method
