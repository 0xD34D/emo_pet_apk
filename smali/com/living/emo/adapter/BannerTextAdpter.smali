.class public Lcom/living/emo/adapter/BannerTextAdpter;
.super Lcom/youth/banner/adapter/BannerAdapter;
.source "BannerTextAdpter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/living/emo/adapter/BannerTextAdpter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/youth/banner/adapter/BannerAdapter<",
        "Lcom/living/emo/bean/TextBean;",
        "Lcom/living/emo/adapter/BannerTextAdpter$ViewHolder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/living/emo/bean/TextBean;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1}, Lcom/youth/banner/adapter/BannerAdapter;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public onBindView(Lcom/living/emo/adapter/BannerTextAdpter$ViewHolder;Lcom/living/emo/bean/TextBean;II)V
    .locals 0

    .line 31
    iget-object p1, p1, Lcom/living/emo/adapter/BannerTextAdpter$ViewHolder;->mTextBean:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/living/emo/bean/TextBean;->getTest()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic onBindView(Ljava/lang/Object;Ljava/lang/Object;II)V
    .locals 0

    .line 17
    check-cast p1, Lcom/living/emo/adapter/BannerTextAdpter$ViewHolder;

    check-cast p2, Lcom/living/emo/bean/TextBean;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/living/emo/adapter/BannerTextAdpter;->onBindView(Lcom/living/emo/adapter/BannerTextAdpter$ViewHolder;Lcom/living/emo/bean/TextBean;II)V

    return-void
.end method

.method public onCreateHolder(Landroid/view/ViewGroup;I)Lcom/living/emo/adapter/BannerTextAdpter$ViewHolder;
    .locals 2

    .line 25
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0032

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 26
    new-instance p2, Lcom/living/emo/adapter/BannerTextAdpter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/living/emo/adapter/BannerTextAdpter$ViewHolder;-><init>(Lcom/living/emo/adapter/BannerTextAdpter;Landroid/view/View;)V

    return-object p2
.end method

.method public bridge synthetic onCreateHolder(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 0

    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/living/emo/adapter/BannerTextAdpter;->onCreateHolder(Landroid/view/ViewGroup;I)Lcom/living/emo/adapter/BannerTextAdpter$ViewHolder;

    move-result-object p1

    return-object p1
.end method
