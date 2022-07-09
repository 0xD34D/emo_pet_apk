.class public Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "BGAHeaderAndFooterAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final BASE_ITEM_TYPE_FOOTER:I = 0x1000

.field private static final BASE_ITEM_TYPE_HEADER:I = 0x800


# instance fields
.field private mCurrentMaxFooterKey:I

.field private mCurrentMaxHeaderKey:I

.field private mFootViews:Landroidx/collection/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SparseArrayCompat<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mHeaderViews:Landroidx/collection/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SparseArrayCompat<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mInnerAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 35
    new-instance v0, Landroidx/collection/SparseArrayCompat;

    invoke-direct {v0}, Landroidx/collection/SparseArrayCompat;-><init>()V

    iput-object v0, p0, Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;->mHeaderViews:Landroidx/collection/SparseArrayCompat;

    .line 36
    new-instance v0, Landroidx/collection/SparseArrayCompat;

    invoke-direct {v0}, Landroidx/collection/SparseArrayCompat;-><init>()V

    iput-object v0, p0, Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;->mFootViews:Landroidx/collection/SparseArrayCompat;

    const/16 v0, 0x800

    .line 37
    iput v0, p0, Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;->mCurrentMaxHeaderKey:I

    const/16 v0, 0x1000

    .line 38
    iput v0, p0, Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;->mCurrentMaxFooterKey:I

    .line 43
    iput-object p1, p0, Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;->mInnerAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    return-void
.end method


# virtual methods
.method public addFooterView(Landroid/view/View;)V
    .locals 2

    .line 213
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;->mFootViews:Landroidx/collection/SparseArrayCompat;

    iget v1, p0, Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;->mCurrentMaxFooterKey:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;->mCurrentMaxFooterKey:I

    invoke-virtual {v0, v1, p1}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 214
    invoke-virtual {p0}, Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;->getHeadersCount()I

    move-result p1

    invoke-virtual {p0}, Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;->getRealItemCount()I

    move-result v0

    add-int/2addr p1, v0

    invoke-virtual {p0}, Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;->getFootersCount()I

    move-result v0

    add-int/2addr p1, v0

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;->notifyItemInserted(I)V

    return-void
.end method

.method public addHeaderView(Landroid/view/View;)V
    .locals 2

    .line 190
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;->mHeaderViews:Landroidx/collection/SparseArrayCompat;

    iget v1, p0, Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;->mCurrentMaxHeaderKey:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;->mCurrentMaxHeaderKey:I

    invoke-virtual {v0, v1, p1}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 191
    invoke-virtual {p0}, Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;->getHeadersCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;->notifyItemInserted(I)V

    return-void
.end method

.method public getFootersCount()I
    .locals 1

    .line 245
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;->mFootViews:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v0

    return v0
.end method

.method public getHeadersCount()I
    .locals 1

    .line 236
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;->mHeaderViews:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v0

    return v0
.end method

.method public getInnerAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 1

    .line 47
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;->mInnerAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    return-object v0
.end method

.method public getItemCount()I
    .locals 2

    .line 92
    invoke-virtual {p0}, Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;->getHeadersCount()I

    move-result v0

    invoke-virtual {p0}, Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;->getFootersCount()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;->getRealItemCount()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 68
    invoke-virtual {p0, p1}, Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;->isHeaderView(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;->mHeaderViews:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0, p1}, Landroidx/collection/SparseArrayCompat;->keyAt(I)I

    move-result p1

    return p1

    .line 71
    :cond_0
    invoke-virtual {p0, p1}, Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;->isFooterView(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;->mFootViews:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {p0}, Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;->getHeadersCount()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {p0}, Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;->getRealItemCount()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroidx/collection/SparseArrayCompat;->keyAt(I)I

    move-result p1

    return p1

    .line 76
    :cond_1
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;->mInnerAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p0, p1}, Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;->getRealItemPosition(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p1

    return p1
.end method

.method public getRealItemCount()I
    .locals 1

    .line 141
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;->mInnerAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    return v0
.end method

.method public getRealItemPosition(I)I
    .locals 1

    .line 151
    invoke-virtual {p0}, Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;->getHeadersCount()I

    move-result v0

    sub-int/2addr p1, v0

    return p1
.end method

.method public isFooterView(I)Z
    .locals 2

    .line 171
    invoke-virtual {p0}, Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;->getHeadersCount()I

    move-result v0

    invoke-virtual {p0}, Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;->getRealItemCount()I

    move-result v1

    add-int/2addr v0, v1

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isHeaderView(I)Z
    .locals 1

    .line 161
    invoke-virtual {p0}, Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;->getHeadersCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isHeaderViewOrFooterView(I)Z
    .locals 1

    .line 181
    invoke-virtual {p0, p1}, Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;->isHeaderView(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;->isFooterView(I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    .line 97
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;->mInnerAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 99
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    .line 100
    instance-of v0, p1, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v0, :cond_0

    .line 101
    check-cast p1, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 102
    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanSizeLookup()Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    move-result-object v0

    .line 104
    new-instance v1, Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter$3;

    invoke-direct {v1, p0, p1, v0}, Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter$3;-><init>(Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;Landroidx/recyclerview/widget/GridLayoutManager;Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    :cond_0
    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .line 83
    invoke-virtual {p0, p2}, Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;->isHeaderViewOrFooterView(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;->mInnerAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p0, p2}, Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;->getRealItemPosition(I)I

    move-result p2

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    .line 52
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;->mHeaderViews:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0, p2}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 54
    new-instance p1, Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter$1;

    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;->mHeaderViews:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0, p2}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-direct {p1, p0, p2}, Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter$1;-><init>(Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;Landroid/view/View;)V

    return-object p1

    .line 56
    :cond_0
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;->mFootViews:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0, p2}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 58
    new-instance p1, Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter$2;

    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;->mFootViews:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0, p2}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-direct {p1, p0, p2}, Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter$2;-><init>(Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;Landroid/view/View;)V

    return-object p1

    .line 62
    :cond_1
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;->mInnerAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 124
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;->mInnerAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 125
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v0

    .line 126
    invoke-virtual {p0, v0}, Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;->isHeaderViewOrFooterView(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 128
    instance-of v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    if-eqz v0, :cond_0

    .line 129
    check-cast p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    const/4 v0, 0x1

    .line 130
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->setFullSpan(Z)V

    :cond_0
    return-void
.end method

.method public removeFooterView(Landroid/view/View;)V
    .locals 2

    .line 223
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;->mFootViews:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0, p1}, Landroidx/collection/SparseArrayCompat;->indexOfValue(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 225
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;->mFootViews:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0, p1}, Landroidx/collection/SparseArrayCompat;->removeAt(I)V

    .line 226
    invoke-virtual {p0}, Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;->getHeadersCount()I

    move-result v0

    invoke-virtual {p0}, Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;->getRealItemCount()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;->notifyItemRemoved(I)V

    :cond_0
    return-void
.end method

.method public removeHeaderView(Landroid/view/View;)V
    .locals 1

    .line 200
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;->mHeaderViews:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0, p1}, Landroidx/collection/SparseArrayCompat;->indexOfValue(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 202
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;->mHeaderViews:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0, p1}, Landroidx/collection/SparseArrayCompat;->removeAt(I)V

    .line 203
    invoke-virtual {p0, p1}, Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;->notifyItemRemoved(I)V

    :cond_0
    return-void
.end method
