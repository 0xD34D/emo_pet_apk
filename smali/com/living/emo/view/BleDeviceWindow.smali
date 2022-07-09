.class public Lcom/living/emo/view/BleDeviceWindow;
.super Landroid/widget/PopupWindow;
.source "BleDeviceWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/living/emo/view/BleDeviceWindow$OnWindowListener;
    }
.end annotation


# instance fields
.field private listener:Lcom/living/emo/view/BleDeviceWindow$OnWindowListener;

.field private mAdapter:Lcom/living/emo/adapter/BleDeviceAdapter;

.field private mDeviceList:Landroidx/recyclerview/widget/RecyclerView;

.field private mRefresh:Landroid/widget/ImageButton;

.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v0, -0x2

    .line 28
    invoke-direct {p0, v0, v0}, Landroid/widget/PopupWindow;-><init>(II)V

    .line 29
    invoke-static {}, Lcom/living/emo/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00d1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/living/emo/view/BleDeviceWindow;->mView:Landroid/view/View;

    .line 30
    invoke-virtual {p0, v0}, Lcom/living/emo/view/BleDeviceWindow;->setContentView(Landroid/view/View;)V

    const/4 v0, 0x1

    .line 33
    invoke-virtual {p0, v0}, Lcom/living/emo/view/BleDeviceWindow;->setOutsideTouchable(Z)V

    .line 34
    invoke-direct {p0}, Lcom/living/emo/view/BleDeviceWindow;->initView()V

    return-void
.end method

.method private initView()V
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/living/emo/view/BleDeviceWindow;->mView:Landroid/view/View;

    const v1, 0x7f090276

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/living/emo/view/BleDeviceWindow;->mDeviceList:Landroidx/recyclerview/widget/RecyclerView;

    .line 39
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-static {}, Lcom/living/emo/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 40
    iget-object v1, p0, Lcom/living/emo/view/BleDeviceWindow;->mDeviceList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 41
    new-instance v0, Lcom/living/emo/adapter/BleDeviceAdapter;

    invoke-direct {v0}, Lcom/living/emo/adapter/BleDeviceAdapter;-><init>()V

    iput-object v0, p0, Lcom/living/emo/view/BleDeviceWindow;->mAdapter:Lcom/living/emo/adapter/BleDeviceAdapter;

    .line 42
    iget-object v1, p0, Lcom/living/emo/view/BleDeviceWindow;->mDeviceList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 43
    iget-object v0, p0, Lcom/living/emo/view/BleDeviceWindow;->mAdapter:Lcom/living/emo/adapter/BleDeviceAdapter;

    new-instance v1, Lcom/living/emo/view/-$$Lambda$BleDeviceWindow$napvEgX1tUwMQJ5tvPCRvGXd9og;

    invoke-direct {v1, p0}, Lcom/living/emo/view/-$$Lambda$BleDeviceWindow$napvEgX1tUwMQJ5tvPCRvGXd9og;-><init>(Lcom/living/emo/view/BleDeviceWindow;)V

    invoke-virtual {v0, v1}, Lcom/living/emo/adapter/BleDeviceAdapter;->setOnClickListener(Lcom/living/emo/adapter/BleDeviceAdapter$OnClickListener;)V

    .line 48
    iget-object v0, p0, Lcom/living/emo/view/BleDeviceWindow;->mView:Landroid/view/View;

    const v1, 0x7f090246

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/living/emo/view/BleDeviceWindow;->mRefresh:Landroid/widget/ImageButton;

    .line 49
    new-instance v1, Lcom/living/emo/view/-$$Lambda$BleDeviceWindow$jceRZJyApXga2t3tXVfZhpNg7Eo;

    invoke-direct {v1, p0}, Lcom/living/emo/view/-$$Lambda$BleDeviceWindow$jceRZJyApXga2t3tXVfZhpNg7Eo;-><init>(Lcom/living/emo/view/BleDeviceWindow;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$initView$0$BleDeviceWindow(Lcom/clj/fastble/data/BleDevice;)V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/living/emo/view/BleDeviceWindow;->listener:Lcom/living/emo/view/BleDeviceWindow$OnWindowListener;

    if-eqz v0, :cond_0

    .line 45
    invoke-interface {v0, p1}, Lcom/living/emo/view/BleDeviceWindow$OnWindowListener;->click(Lcom/clj/fastble/data/BleDevice;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$initView$1$BleDeviceWindow(Landroid/view/View;)V
    .locals 0

    .line 50
    iget-object p1, p0, Lcom/living/emo/view/BleDeviceWindow;->listener:Lcom/living/emo/view/BleDeviceWindow$OnWindowListener;

    if-eqz p1, :cond_0

    .line 51
    invoke-interface {p1}, Lcom/living/emo/view/BleDeviceWindow$OnWindowListener;->refresh()V

    :cond_0
    return-void
.end method

.method public setData(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/clj/fastble/data/BleDevice;",
            ">;)V"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/living/emo/view/BleDeviceWindow;->mAdapter:Lcom/living/emo/adapter/BleDeviceAdapter;

    invoke-virtual {v0, p1}, Lcom/living/emo/adapter/BleDeviceAdapter;->update(Ljava/util/ArrayList;)V

    return-void
.end method

.method public setOnWindowListener(Lcom/living/emo/view/BleDeviceWindow$OnWindowListener;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/living/emo/view/BleDeviceWindow;->listener:Lcom/living/emo/view/BleDeviceWindow$OnWindowListener;

    return-void
.end method
