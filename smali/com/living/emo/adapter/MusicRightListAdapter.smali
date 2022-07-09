.class public Lcom/living/emo/adapter/MusicRightListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "MusicRightListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/living/emo/adapter/MusicRightListAdapter$InnerHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/living/emo/adapter/MusicRightListAdapter$InnerHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/living/emo/bean/MusicBean$DataBean;",
            ">;"
        }
    .end annotation
.end field

.field private mPlayerItemCallback:Lcom/living/emo/view/RightPopupWindow$PlayerItemClickListener;

.field private playIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/living/emo/adapter/MusicRightListAdapter;->mData:Ljava/util/List;

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/living/emo/adapter/MusicRightListAdapter;->mPlayerItemCallback:Lcom/living/emo/view/RightPopupWindow$PlayerItemClickListener;

    const/4 v0, -0x1

    .line 24
    iput v0, p0, Lcom/living/emo/adapter/MusicRightListAdapter;->playIndex:I

    return-void
.end method

.method static synthetic access$000(Lcom/living/emo/adapter/MusicRightListAdapter;)Lcom/living/emo/view/RightPopupWindow$PlayerItemClickListener;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/living/emo/adapter/MusicRightListAdapter;->mPlayerItemCallback:Lcom/living/emo/view/RightPopupWindow$PlayerItemClickListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/living/emo/adapter/MusicRightListAdapter;)Ljava/util/List;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/living/emo/adapter/MusicRightListAdapter;->mData:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$202(Lcom/living/emo/adapter/MusicRightListAdapter;I)I
    .locals 0

    .line 20
    iput p1, p0, Lcom/living/emo/adapter/MusicRightListAdapter;->playIndex:I

    return p1
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/living/emo/adapter/MusicRightListAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 20
    check-cast p1, Lcom/living/emo/adapter/MusicRightListAdapter$InnerHolder;

    invoke-virtual {p0, p1, p2}, Lcom/living/emo/adapter/MusicRightListAdapter;->onBindViewHolder(Lcom/living/emo/adapter/MusicRightListAdapter$InnerHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/living/emo/adapter/MusicRightListAdapter$InnerHolder;I)V
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/living/emo/adapter/MusicRightListAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/living/emo/bean/MusicBean$DataBean;

    .line 37
    iget-object p1, p1, Lcom/living/emo/adapter/MusicRightListAdapter$InnerHolder;->itemView:Landroid/view/View;

    const v1, 0x7f09027f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 38
    invoke-virtual {v0}, Lcom/living/emo/bean/MusicBean$DataBean;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    invoke-static {}, Lcom/living/emo/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/living/emo/adapter/MusicRightListAdapter;->playIndex:I

    if-ne p2, v1, :cond_0

    const v1, 0x7f0600e6

    goto :goto_0

    :cond_0
    const v1, 0x7f0600e9

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 40
    new-instance v0, Lcom/living/emo/adapter/MusicRightListAdapter$1;

    invoke-direct {v0, p0, p2}, Lcom/living/emo/adapter/MusicRightListAdapter$1;-><init>(Lcom/living/emo/adapter/MusicRightListAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/living/emo/adapter/MusicRightListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/living/emo/adapter/MusicRightListAdapter$InnerHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/living/emo/adapter/MusicRightListAdapter$InnerHolder;
    .locals 2

    .line 30
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c00e0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 31
    new-instance p2, Lcom/living/emo/adapter/MusicRightListAdapter$InnerHolder;

    invoke-direct {p2, p0, p1}, Lcom/living/emo/adapter/MusicRightListAdapter$InnerHolder;-><init>(Lcom/living/emo/adapter/MusicRightListAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/living/emo/bean/MusicBean$DataBean;",
            ">;)V"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/living/emo/adapter/MusicRightListAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 59
    iget-object v0, p0, Lcom/living/emo/adapter/MusicRightListAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 60
    invoke-virtual {p0}, Lcom/living/emo/adapter/MusicRightListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setPlayerItemClickListener(Lcom/living/emo/view/RightPopupWindow$PlayerItemClickListener;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/living/emo/adapter/MusicRightListAdapter;->mPlayerItemCallback:Lcom/living/emo/view/RightPopupWindow$PlayerItemClickListener;

    return-void
.end method
