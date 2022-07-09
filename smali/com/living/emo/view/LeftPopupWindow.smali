.class public Lcom/living/emo/view/LeftPopupWindow;
.super Landroid/widget/PopupWindow;
.source "LeftPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/living/emo/view/LeftPopupWindow$PlayerItemListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LeftPopupWindow"


# instance fields
.field private mClose:Landroid/widget/ImageButton;

.field private final mLeftView:Landroid/view/View;

.field private mMusicLeftListAdapter:Lcom/living/emo/adapter/MusicLeftListAdapter;

.field private mMusicList:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v0, -0x2

    const/4 v1, -0x1

    .line 35
    invoke-direct {p0, v0, v1}, Landroid/widget/PopupWindow;-><init>(II)V

    .line 36
    invoke-static {}, Lcom/living/emo/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00d2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/living/emo/view/LeftPopupWindow;->mLeftView:Landroid/view/View;

    .line 37
    invoke-virtual {p0, v0}, Lcom/living/emo/view/LeftPopupWindow;->setContentView(Landroid/view/View;)V

    .line 38
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/living/emo/view/LeftPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f1102ff

    .line 39
    invoke-virtual {p0, v0}, Lcom/living/emo/view/LeftPopupWindow;->setAnimationStyle(I)V

    const/4 v0, 0x1

    .line 40
    invoke-virtual {p0, v0}, Lcom/living/emo/view/LeftPopupWindow;->setOutsideTouchable(Z)V

    .line 41
    invoke-virtual {p0, v0}, Lcom/living/emo/view/LeftPopupWindow;->setTouchable(Z)V

    .line 42
    invoke-direct {p0}, Lcom/living/emo/view/LeftPopupWindow;->initView()V

    .line 43
    invoke-direct {p0}, Lcom/living/emo/view/LeftPopupWindow;->initEvents()V

    return-void
.end method

.method private initEvents()V
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/living/emo/view/LeftPopupWindow;->mClose:Landroid/widget/ImageButton;

    new-instance v1, Lcom/living/emo/view/LeftPopupWindow$1;

    invoke-direct {v1, p0}, Lcom/living/emo/view/LeftPopupWindow$1;-><init>(Lcom/living/emo/view/LeftPopupWindow;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initView()V
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/living/emo/view/LeftPopupWindow;->mLeftView:Landroid/view/View;

    const v1, 0x7f090247

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/living/emo/view/LeftPopupWindow;->mClose:Landroid/widget/ImageButton;

    .line 51
    iget-object v0, p0, Lcom/living/emo/view/LeftPopupWindow;->mLeftView:Landroid/view/View;

    const v1, 0x7f090265

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/living/emo/view/LeftPopupWindow;->mMusicList:Landroidx/recyclerview/widget/RecyclerView;

    .line 53
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-static {}, Lcom/living/emo/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 54
    iget-object v1, p0, Lcom/living/emo/view/LeftPopupWindow;->mMusicList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 56
    new-instance v0, Lcom/living/emo/adapter/MusicLeftListAdapter;

    invoke-direct {v0}, Lcom/living/emo/adapter/MusicLeftListAdapter;-><init>()V

    iput-object v0, p0, Lcom/living/emo/view/LeftPopupWindow;->mMusicLeftListAdapter:Lcom/living/emo/adapter/MusicLeftListAdapter;

    .line 57
    iget-object v1, p0, Lcom/living/emo/view/LeftPopupWindow;->mMusicList:Landroidx/recyclerview/widget/RecyclerView;

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

    .line 69
    iget-object v0, p0, Lcom/living/emo/view/LeftPopupWindow;->mMusicLeftListAdapter:Lcom/living/emo/adapter/MusicLeftListAdapter;

    invoke-virtual {v0, p1}, Lcom/living/emo/adapter/MusicLeftListAdapter;->setData(Ljava/util/List;)V

    return-void
.end method

.method public setPlayerItemListener(Lcom/living/emo/view/LeftPopupWindow$PlayerItemListener;)V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/living/emo/view/LeftPopupWindow;->mMusicLeftListAdapter:Lcom/living/emo/adapter/MusicLeftListAdapter;

    invoke-virtual {v0, p1}, Lcom/living/emo/adapter/MusicLeftListAdapter;->setPlayerItemListener(Lcom/living/emo/view/LeftPopupWindow$PlayerItemListener;)V

    return-void
.end method
