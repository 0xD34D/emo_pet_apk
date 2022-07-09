.class public Lcn/bingoogolapple/baseadapter/BGABindingViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "BGABindingViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Landroidx/databinding/ViewDataBinding;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;"
    }
.end annotation


# instance fields
.field private mBinding:Landroidx/databinding/ViewDataBinding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TB;"
        }
    .end annotation
.end field

.field protected mBindingRecyclerViewAdapter:Lcn/bingoogolapple/baseadapter/BGABindingRecyclerViewAdapter;


# direct methods
.method public constructor <init>(Lcn/bingoogolapple/baseadapter/BGABindingRecyclerViewAdapter;Landroidx/databinding/ViewDataBinding;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/bingoogolapple/baseadapter/BGABindingRecyclerViewAdapter;",
            "TB;)V"
        }
    .end annotation

    .line 33
    invoke-virtual {p2}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 34
    iput-object p1, p0, Lcn/bingoogolapple/baseadapter/BGABindingViewHolder;->mBindingRecyclerViewAdapter:Lcn/bingoogolapple/baseadapter/BGABindingRecyclerViewAdapter;

    .line 35
    iput-object p2, p0, Lcn/bingoogolapple/baseadapter/BGABindingViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    return-void
.end method


# virtual methods
.method public getAdapterPositionWrapper()I
    .locals 2

    .line 51
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGABindingViewHolder;->mBindingRecyclerViewAdapter:Lcn/bingoogolapple/baseadapter/BGABindingRecyclerViewAdapter;

    invoke-virtual {v0}, Lcn/bingoogolapple/baseadapter/BGABindingRecyclerViewAdapter;->getHeadersCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 52
    invoke-virtual {p0}, Lcn/bingoogolapple/baseadapter/BGABindingViewHolder;->getAdapterPosition()I

    move-result v0

    iget-object v1, p0, Lcn/bingoogolapple/baseadapter/BGABindingViewHolder;->mBindingRecyclerViewAdapter:Lcn/bingoogolapple/baseadapter/BGABindingRecyclerViewAdapter;

    invoke-virtual {v1}, Lcn/bingoogolapple/baseadapter/BGABindingRecyclerViewAdapter;->getHeadersCount()I

    move-result v1

    sub-int/2addr v0, v1

    return v0

    .line 54
    :cond_0
    invoke-virtual {p0}, Lcn/bingoogolapple/baseadapter/BGABindingViewHolder;->getAdapterPosition()I

    move-result v0

    return v0
.end method

.method public getBinding()Landroidx/databinding/ViewDataBinding;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGABindingViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    return-object v0
.end method

.method public getParent()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    .line 43
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGABindingViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 45
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
