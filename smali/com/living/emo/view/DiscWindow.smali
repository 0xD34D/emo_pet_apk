.class public Lcom/living/emo/view/DiscWindow;
.super Landroid/widget/PopupWindow;
.source "DiscWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/living/emo/view/DiscWindow$PlayerItemListener;
    }
.end annotation


# instance fields
.field private mMusicAdapter:Lcom/living/emo/adapter/DiscMusicAdapter;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v0, -0x2

    .line 24
    invoke-direct {p0, v0, v0}, Landroid/widget/PopupWindow;-><init>(II)V

    .line 25
    invoke-static {}, Lcom/living/emo/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0060

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/living/emo/view/DiscWindow;->mView:Landroid/view/View;

    .line 26
    invoke-virtual {p0, v0}, Lcom/living/emo/view/DiscWindow;->setContentView(Landroid/view/View;)V

    const/4 v0, 0x1

    .line 29
    invoke-virtual {p0, v0}, Lcom/living/emo/view/DiscWindow;->setOutsideTouchable(Z)V

    .line 30
    invoke-direct {p0}, Lcom/living/emo/view/DiscWindow;->initView()V

    return-void
.end method

.method private initView()V
    .locals 3

    .line 35
    iget-object v0, p0, Lcom/living/emo/view/DiscWindow;->mView:Landroid/view/View;

    const v1, 0x7f090277

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 36
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-static {}, Lcom/living/emo/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 37
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 38
    new-instance v1, Lcom/living/emo/adapter/DiscMusicAdapter;

    invoke-direct {v1}, Lcom/living/emo/adapter/DiscMusicAdapter;-><init>()V

    iput-object v1, p0, Lcom/living/emo/view/DiscWindow;->mMusicAdapter:Lcom/living/emo/adapter/DiscMusicAdapter;

    .line 39
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method


# virtual methods
.method public setMusicList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/living/emo/bean/MusicBean$DataBean;",
            ">;)V"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/living/emo/view/DiscWindow;->mMusicAdapter:Lcom/living/emo/adapter/DiscMusicAdapter;

    invoke-virtual {v0, p1}, Lcom/living/emo/adapter/DiscMusicAdapter;->setDiscList(Ljava/util/List;)V

    return-void
.end method

.method public setPlayerItemListener(Lcom/living/emo/view/DiscWindow$PlayerItemListener;)V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/living/emo/view/DiscWindow;->mMusicAdapter:Lcom/living/emo/adapter/DiscMusicAdapter;

    invoke-virtual {v0, p1}, Lcom/living/emo/adapter/DiscMusicAdapter;->setPlayerItemListener(Lcom/living/emo/view/DiscWindow$PlayerItemListener;)V

    return-void
.end method
