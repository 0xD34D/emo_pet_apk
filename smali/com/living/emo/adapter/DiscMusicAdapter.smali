.class public Lcom/living/emo/adapter/DiscMusicAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "DiscMusicAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/living/emo/adapter/DiscMusicAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/living/emo/adapter/DiscMusicAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDiscList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/living/emo/bean/MusicBean$DataBean;",
            ">;"
        }
    .end annotation
.end field

.field private mItemListener:Lcom/living/emo/view/DiscWindow$PlayerItemListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "zxl::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/living/emo/adapter/DiscMusicAdapter;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/living/emo/adapter/DiscMusicAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/living/emo/adapter/DiscMusicAdapter;->mDiscList:Ljava/util/List;

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/living/emo/adapter/DiscMusicAdapter;->mItemListener:Lcom/living/emo/view/DiscWindow$PlayerItemListener;

    return-void
.end method

.method static synthetic access$000(Lcom/living/emo/adapter/DiscMusicAdapter;)Lcom/living/emo/view/DiscWindow$PlayerItemListener;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/living/emo/adapter/DiscMusicAdapter;->mItemListener:Lcom/living/emo/view/DiscWindow$PlayerItemListener;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/living/emo/adapter/DiscMusicAdapter;->mDiscList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 18
    check-cast p1, Lcom/living/emo/adapter/DiscMusicAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/living/emo/adapter/DiscMusicAdapter;->onBindViewHolder(Lcom/living/emo/adapter/DiscMusicAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/living/emo/adapter/DiscMusicAdapter$ViewHolder;I)V
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/living/emo/adapter/DiscMusicAdapter;->mDiscList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/living/emo/bean/MusicBean$DataBean;

    .line 35
    iget-object v0, p1, Lcom/living/emo/adapter/DiscMusicAdapter$ViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/living/emo/bean/MusicBean$DataBean;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    iget-object p1, p1, Lcom/living/emo/adapter/DiscMusicAdapter$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/living/emo/adapter/DiscMusicAdapter$1;

    invoke-direct {v0, p0, p2}, Lcom/living/emo/adapter/DiscMusicAdapter$1;-><init>(Lcom/living/emo/adapter/DiscMusicAdapter;Lcom/living/emo/bean/MusicBean$DataBean;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/living/emo/adapter/DiscMusicAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/living/emo/adapter/DiscMusicAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/living/emo/adapter/DiscMusicAdapter$ViewHolder;
    .locals 2

    .line 28
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c00da

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 29
    new-instance p2, Lcom/living/emo/adapter/DiscMusicAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/living/emo/adapter/DiscMusicAdapter$ViewHolder;-><init>(Lcom/living/emo/adapter/DiscMusicAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setDiscList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/living/emo/bean/MusicBean$DataBean;",
            ">;)V"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/living/emo/adapter/DiscMusicAdapter;->mDiscList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 48
    iget-object v0, p0, Lcom/living/emo/adapter/DiscMusicAdapter;->mDiscList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 49
    invoke-virtual {p0}, Lcom/living/emo/adapter/DiscMusicAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setPlayerItemListener(Lcom/living/emo/view/DiscWindow$PlayerItemListener;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/living/emo/adapter/DiscMusicAdapter;->mItemListener:Lcom/living/emo/view/DiscWindow$PlayerItemListener;

    return-void
.end method
