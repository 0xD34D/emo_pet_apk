.class public Lcom/living/emo/view/RightPopupWindow;
.super Landroid/widget/PopupWindow;
.source "RightPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/living/emo/view/RightPopupWindow$PlayerItemClickListener;
    }
.end annotation


# instance fields
.field private mClose:Landroid/widget/ImageButton;

.field private final mLeftView:Landroid/view/View;

.field private mMusicList:Landroidx/recyclerview/widget/RecyclerView;

.field private mMusicRightListAdapter:Lcom/living/emo/adapter/MusicRightListAdapter;


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v0, -0x2

    const/4 v1, -0x1

    .line 33
    invoke-direct {p0, v0, v1}, Landroid/widget/PopupWindow;-><init>(II)V

    .line 34
    invoke-static {}, Lcom/living/emo/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00d5

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/living/emo/view/RightPopupWindow;->mLeftView:Landroid/view/View;

    .line 35
    invoke-virtual {p0, v0}, Lcom/living/emo/view/RightPopupWindow;->setContentView(Landroid/view/View;)V

    .line 36
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/living/emo/view/RightPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    .line 37
    invoke-virtual {p0, v0}, Lcom/living/emo/view/RightPopupWindow;->setOutsideTouchable(Z)V

    const v0, 0x7f110300

    .line 38
    invoke-virtual {p0, v0}, Lcom/living/emo/view/RightPopupWindow;->setAnimationStyle(I)V

    .line 39
    invoke-direct {p0}, Lcom/living/emo/view/RightPopupWindow;->initView()V

    .line 40
    invoke-direct {p0}, Lcom/living/emo/view/RightPopupWindow;->initEvents()V

    return-void
.end method

.method private initEvents()V
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/living/emo/view/RightPopupWindow;->mClose:Landroid/widget/ImageButton;

    new-instance v1, Lcom/living/emo/view/RightPopupWindow$1;

    invoke-direct {v1, p0}, Lcom/living/emo/view/RightPopupWindow$1;-><init>(Lcom/living/emo/view/RightPopupWindow;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initView()V
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/living/emo/view/RightPopupWindow;->mLeftView:Landroid/view/View;

    const v1, 0x7f090247

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/living/emo/view/RightPopupWindow;->mClose:Landroid/widget/ImageButton;

    .line 47
    iget-object v0, p0, Lcom/living/emo/view/RightPopupWindow;->mLeftView:Landroid/view/View;

    const v1, 0x7f090265

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/living/emo/view/RightPopupWindow;->mMusicList:Landroidx/recyclerview/widget/RecyclerView;

    .line 49
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-static {}, Lcom/living/emo/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 50
    iget-object v1, p0, Lcom/living/emo/view/RightPopupWindow;->mMusicList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 52
    new-instance v0, Lcom/living/emo/adapter/MusicRightListAdapter;

    invoke-direct {v0}, Lcom/living/emo/adapter/MusicRightListAdapter;-><init>()V

    iput-object v0, p0, Lcom/living/emo/view/RightPopupWindow;->mMusicRightListAdapter:Lcom/living/emo/adapter/MusicRightListAdapter;

    .line 53
    iget-object v1, p0, Lcom/living/emo/view/RightPopupWindow;->mMusicList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

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

    .line 65
    iget-object v0, p0, Lcom/living/emo/view/RightPopupWindow;->mMusicRightListAdapter:Lcom/living/emo/adapter/MusicRightListAdapter;

    invoke-virtual {v0, p1}, Lcom/living/emo/adapter/MusicRightListAdapter;->setData(Ljava/util/List;)V

    return-void
.end method

.method public setPlayerItemClickListener(Lcom/living/emo/view/RightPopupWindow$PlayerItemClickListener;)V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/living/emo/view/RightPopupWindow;->mMusicRightListAdapter:Lcom/living/emo/adapter/MusicRightListAdapter;

    invoke-virtual {v0, p1}, Lcom/living/emo/adapter/MusicRightListAdapter;->setPlayerItemClickListener(Lcom/living/emo/view/RightPopupWindow$PlayerItemClickListener;)V

    return-void
.end method
