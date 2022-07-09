.class public Lcn/bingoogolapple/baseadapter/BGARecyclerViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "BGARecyclerViewHolder.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mOnRVItemClickListener:Lcn/bingoogolapple/baseadapter/BGAOnRVItemClickListener;

.field protected mOnRVItemLongClickListener:Lcn/bingoogolapple/baseadapter/BGAOnRVItemLongClickListener;

.field protected mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field protected mRecyclerViewAdapter:Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;

.field protected mViewHolderHelper:Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;


# direct methods
.method public constructor <init>(Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Lcn/bingoogolapple/baseadapter/BGAOnRVItemClickListener;Lcn/bingoogolapple/baseadapter/BGAOnRVItemLongClickListener;)V
    .locals 0

    .line 37
    invoke-direct {p0, p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 38
    iput-object p1, p0, Lcn/bingoogolapple/baseadapter/BGARecyclerViewHolder;->mRecyclerViewAdapter:Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;

    .line 39
    iput-object p2, p0, Lcn/bingoogolapple/baseadapter/BGARecyclerViewHolder;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 40
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcn/bingoogolapple/baseadapter/BGARecyclerViewHolder;->mContext:Landroid/content/Context;

    .line 41
    iput-object p4, p0, Lcn/bingoogolapple/baseadapter/BGARecyclerViewHolder;->mOnRVItemClickListener:Lcn/bingoogolapple/baseadapter/BGAOnRVItemClickListener;

    .line 42
    iput-object p5, p0, Lcn/bingoogolapple/baseadapter/BGARecyclerViewHolder;->mOnRVItemLongClickListener:Lcn/bingoogolapple/baseadapter/BGAOnRVItemLongClickListener;

    .line 43
    new-instance p1, Lcn/bingoogolapple/baseadapter/BGARecyclerViewHolder$1;

    invoke-direct {p1, p0}, Lcn/bingoogolapple/baseadapter/BGARecyclerViewHolder$1;-><init>(Lcn/bingoogolapple/baseadapter/BGARecyclerViewHolder;)V

    invoke-virtual {p3, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    invoke-virtual {p3, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 53
    new-instance p1, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    iget-object p2, p0, Lcn/bingoogolapple/baseadapter/BGARecyclerViewHolder;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p1, p2, p0}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;-><init>(Landroidx/recyclerview/widget/RecyclerView;Lcn/bingoogolapple/baseadapter/BGARecyclerViewHolder;)V

    iput-object p1, p0, Lcn/bingoogolapple/baseadapter/BGARecyclerViewHolder;->mViewHolderHelper:Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    return-void
.end method


# virtual methods
.method public getAdapterPositionWrapper()I
    .locals 2

    .line 69
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGARecyclerViewHolder;->mRecyclerViewAdapter:Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;

    invoke-virtual {v0}, Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;->getHeadersCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 70
    invoke-virtual {p0}, Lcn/bingoogolapple/baseadapter/BGARecyclerViewHolder;->getAdapterPosition()I

    move-result v0

    iget-object v1, p0, Lcn/bingoogolapple/baseadapter/BGARecyclerViewHolder;->mRecyclerViewAdapter:Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;

    invoke-virtual {v1}, Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;->getHeadersCount()I

    move-result v1

    sub-int/2addr v0, v1

    return v0

    .line 72
    :cond_0
    invoke-virtual {p0}, Lcn/bingoogolapple/baseadapter/BGARecyclerViewHolder;->getAdapterPosition()I

    move-result v0

    return v0
.end method

.method public getViewHolderHelper()Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;
    .locals 1

    .line 57
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGARecyclerViewHolder;->mViewHolderHelper:Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    return-object v0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    .line 62
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcn/bingoogolapple/baseadapter/BGARecyclerViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGARecyclerViewHolder;->mOnRVItemLongClickListener:Lcn/bingoogolapple/baseadapter/BGAOnRVItemLongClickListener;

    if-eqz v0, :cond_0

    .line 63
    iget-object v1, p0, Lcn/bingoogolapple/baseadapter/BGARecyclerViewHolder;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lcn/bingoogolapple/baseadapter/BGARecyclerViewHolder;->getAdapterPositionWrapper()I

    move-result v2

    invoke-interface {v0, v1, p1, v2}, Lcn/bingoogolapple/baseadapter/BGAOnRVItemLongClickListener;->onRVItemLongClick(Landroid/view/ViewGroup;Landroid/view/View;I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
