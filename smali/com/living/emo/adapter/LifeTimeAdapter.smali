.class public Lcom/living/emo/adapter/LifeTimeAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "LifeTimeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/living/emo/adapter/LifeTimeAdapter$OnClickListener;,
        Lcom/living/emo/adapter/LifeTimeAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/living/emo/adapter/LifeTimeAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private callback:Lcom/living/emo/adapter/LifeTimeAdapter$OnClickListener;

.field private final mActivity:Landroid/app/Activity;

.field private mContext:Landroid/content/Context;

.field private mDatas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/living/emo/bean/AchievementBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/living/emo/adapter/LifeTimeAdapter;->mDatas:Ljava/util/ArrayList;

    .line 28
    iput-object p1, p0, Lcom/living/emo/adapter/LifeTimeAdapter;->mActivity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/living/emo/adapter/LifeTimeAdapter;->mDatas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public synthetic lambda$onCreateViewHolder$0$LifeTimeAdapter(Lcom/living/emo/adapter/LifeTimeAdapter$ViewHolder;Landroid/view/View;)V
    .locals 2

    .line 38
    invoke-virtual {p1}, Lcom/living/emo/adapter/LifeTimeAdapter$ViewHolder;->getAdapterPosition()I

    move-result p2

    .line 39
    iget-object v0, p0, Lcom/living/emo/adapter/LifeTimeAdapter;->mDatas:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/living/emo/bean/AchievementBean;

    .line 40
    invoke-virtual {v0}, Lcom/living/emo/bean/AchievementBean;->isReach()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    iget-object v1, p0, Lcom/living/emo/adapter/LifeTimeAdapter;->callback:Lcom/living/emo/adapter/LifeTimeAdapter$OnClickListener;

    if-eqz v1, :cond_0

    .line 42
    invoke-interface {v1, p2, v0}, Lcom/living/emo/adapter/LifeTimeAdapter$OnClickListener;->onClick(ILcom/living/emo/bean/AchievementBean;)V

    .line 46
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCreateViewHolder: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/living/emo/adapter/LifeTimeAdapter$ViewHolder;->getAdapterPosition()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "hello"

    invoke-static {p2, p1}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 20
    check-cast p1, Lcom/living/emo/adapter/LifeTimeAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/living/emo/adapter/LifeTimeAdapter;->onBindViewHolder(Lcom/living/emo/adapter/LifeTimeAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/living/emo/adapter/LifeTimeAdapter$ViewHolder;I)V
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/living/emo/adapter/LifeTimeAdapter;->mDatas:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/living/emo/bean/AchievementBean;

    .line 54
    iget-object v0, p1, Lcom/living/emo/adapter/LifeTimeAdapter$ViewHolder;->mImgV:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/living/emo/bean/AchievementBean;->getRes()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 55
    iget-object v0, p1, Lcom/living/emo/adapter/LifeTimeAdapter$ViewHolder;->mImgV:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/living/emo/bean/AchievementBean;->isReach()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 56
    iget-object p1, p1, Lcom/living/emo/adapter/LifeTimeAdapter$ViewHolder;->notavailablenow:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/living/emo/bean/AchievementBean;->isAvailable()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/living/emo/adapter/LifeTimeAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/living/emo/adapter/LifeTimeAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/living/emo/adapter/LifeTimeAdapter$ViewHolder;
    .locals 2

    .line 34
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/living/emo/adapter/LifeTimeAdapter;->mContext:Landroid/content/Context;

    .line 35
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c00de

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 36
    new-instance p2, Lcom/living/emo/adapter/LifeTimeAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/living/emo/adapter/LifeTimeAdapter$ViewHolder;-><init>(Lcom/living/emo/adapter/LifeTimeAdapter;Landroid/view/View;)V

    .line 37
    iget-object p1, p2, Lcom/living/emo/adapter/LifeTimeAdapter$ViewHolder;->mImgV:Landroid/widget/ImageView;

    new-instance v0, Lcom/living/emo/adapter/-$$Lambda$LifeTimeAdapter$5X5siugnd5Ylvr8M3apLkClw-AQ;

    invoke-direct {v0, p0, p2}, Lcom/living/emo/adapter/-$$Lambda$LifeTimeAdapter$5X5siugnd5Ylvr8M3apLkClw-AQ;-><init>(Lcom/living/emo/adapter/LifeTimeAdapter;Lcom/living/emo/adapter/LifeTimeAdapter$ViewHolder;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method

.method public setDatas(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/living/emo/bean/AchievementBean;",
            ">;)V"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/living/emo/adapter/LifeTimeAdapter;->mDatas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 68
    iget-object v0, p0, Lcom/living/emo/adapter/LifeTimeAdapter;->mDatas:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 69
    invoke-virtual {p0}, Lcom/living/emo/adapter/LifeTimeAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setOnClickListener(Lcom/living/emo/adapter/LifeTimeAdapter$OnClickListener;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/living/emo/adapter/LifeTimeAdapter;->callback:Lcom/living/emo/adapter/LifeTimeAdapter$OnClickListener;

    return-void
.end method
