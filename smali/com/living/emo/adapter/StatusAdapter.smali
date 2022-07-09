.class public Lcom/living/emo/adapter/StatusAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "StatusAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/living/emo/adapter/StatusAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/living/emo/adapter/StatusAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/living/emo/bean/StatusBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/living/emo/adapter/StatusAdapter;->mData:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/living/emo/adapter/StatusAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 17
    check-cast p1, Lcom/living/emo/adapter/StatusAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/living/emo/adapter/StatusAdapter;->onBindViewHolder(Lcom/living/emo/adapter/StatusAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/living/emo/adapter/StatusAdapter$ViewHolder;I)V
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/living/emo/adapter/StatusAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/living/emo/bean/StatusBean;

    .line 29
    iget-object v0, p1, Lcom/living/emo/adapter/StatusAdapter$ViewHolder;->mRela:Landroid/widget/RelativeLayout;

    invoke-virtual {p2}, Lcom/living/emo/bean/StatusBean;->getRimg()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 30
    iget-object p1, p1, Lcom/living/emo/adapter/StatusAdapter$ViewHolder;->mText:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/living/emo/bean/StatusBean;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/living/emo/adapter/StatusAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/living/emo/adapter/StatusAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/living/emo/adapter/StatusAdapter$ViewHolder;
    .locals 2

    .line 22
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c008c

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 23
    new-instance p2, Lcom/living/emo/adapter/StatusAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/living/emo/adapter/StatusAdapter$ViewHolder;-><init>(Lcom/living/emo/adapter/StatusAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setData(Lcom/living/emo/bean/StatusBean;)V
    .locals 3

    .line 34
    iget-object v0, p0, Lcom/living/emo/adapter/StatusAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 35
    iget-object v0, p0, Lcom/living/emo/adapter/StatusAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0, v1}, Lcom/living/emo/adapter/StatusAdapter;->notifyItemRangeRemoved(II)V

    .line 36
    iget-object v0, p0, Lcom/living/emo/adapter/StatusAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/living/emo/adapter/StatusAdapter;->mData:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 39
    invoke-virtual {p0, v1}, Lcom/living/emo/adapter/StatusAdapter;->notifyItemInserted(I)V

    return-void
.end method
