.class public abstract Lcom/living/emo/fragment/AbstractBaseFragment;
.super Landroidx/fragment/app/Fragment;
.source "AbstractBaseFragment.java"


# instance fields
.field private mBind:Lbutterknife/Unbinder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method private loadRootView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 60
    invoke-virtual {p0}, Lcom/living/emo/fragment/AbstractBaseFragment;->loadRootViewResId()I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method initData()V
    .locals 0

    return-void
.end method

.method protected initEvent()V
    .locals 0

    return-void
.end method

.method initFragment()V
    .locals 0

    return-void
.end method

.method protected initProgress()V
    .locals 0

    return-void
.end method

.method initView()V
    .locals 0

    return-void
.end method

.method protected abstract loadRootViewResId()I
.end method

.method protected loadStateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 0

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 26
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/living/emo/fragment/AbstractBaseFragment;->loadRootView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p3

    .line 28
    invoke-static {p0, p3}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    move-result-object v0

    iput-object v0, p0, Lcom/living/emo/fragment/AbstractBaseFragment;->mBind:Lbutterknife/Unbinder;

    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/living/emo/fragment/AbstractBaseFragment;->loadStateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 30
    invoke-virtual {p0}, Lcom/living/emo/fragment/AbstractBaseFragment;->initView()V

    .line 31
    invoke-virtual {p0}, Lcom/living/emo/fragment/AbstractBaseFragment;->initData()V

    .line 32
    invoke-virtual {p0}, Lcom/living/emo/fragment/AbstractBaseFragment;->initFragment()V

    .line 33
    invoke-virtual {p0}, Lcom/living/emo/fragment/AbstractBaseFragment;->initEvent()V

    .line 34
    invoke-virtual {p0}, Lcom/living/emo/fragment/AbstractBaseFragment;->initProgress()V

    return-object p3
.end method

.method public onDestroy()V
    .locals 1

    .line 68
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 69
    iget-object v0, p0, Lcom/living/emo/fragment/AbstractBaseFragment;->mBind:Lbutterknife/Unbinder;

    if-eqz v0, :cond_0

    .line 70
    invoke-interface {v0}, Lbutterknife/Unbinder;->unbind()V

    .line 72
    :cond_0
    invoke-virtual {p0}, Lcom/living/emo/fragment/AbstractBaseFragment;->release()V

    return-void
.end method

.method protected release()V
    .locals 0

    return-void
.end method
