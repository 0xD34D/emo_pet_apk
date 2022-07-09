.class public abstract Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "BGARecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcn/bingoogolapple/baseadapter/BGARecyclerViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field protected mCheckedPosition:I

.field protected mContext:Landroid/content/Context;

.field protected mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TM;>;"
        }
    .end annotation
.end field

.field protected mDefaultItemLayoutId:I

.field protected mHeaderAndFooterAdapter:Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;

.field private mIsIgnoreCheckedChanged:Z

.field protected mOnItemChildCheckedChangeListener:Lcn/bingoogolapple/baseadapter/BGAOnItemChildCheckedChangeListener;

.field protected mOnItemChildClickListener:Lcn/bingoogolapple/baseadapter/BGAOnItemChildClickListener;

.field protected mOnItemChildLongClickListener:Lcn/bingoogolapple/baseadapter/BGAOnItemChildLongClickListener;

.field protected mOnRVItemChildTouchListener:Lcn/bingoogolapple/baseadapter/BGAOnRVItemChildTouchListener;

.field protected mOnRVItemClickListener:Lcn/bingoogolapple/baseadapter/BGAOnRVItemClickListener;

.field protected mOnRVItemLongClickListener:Lcn/bingoogolapple/baseadapter/BGAOnRVItemLongClickListener;

.field protected mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput v0, p0, Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;->mCheckedPosition:I

    const/4 v0, 0x1

    .line 52
    iput-boolean v0, p0, Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;->mIsIgnoreCheckedChanged:Z

    .line 55
    iput-object p1, p0, Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 56
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;->mContext:Landroid/content/Context;

    .line 57
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;->mData:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 62
    iput p2, p0, Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;->mDefaultItemLayoutId:I

    return-void
.end method


# virtual methods
.method public addFirstItem(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 323
    invoke-virtual {p0, v0, p1}, Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;->addItem(ILjava/lang/Object;)V

    return-void
.end method

.method public addFooterView(Landroid/view/View;)V
    .locals 1

    .line 434
    invoke-virtual {p0}, Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;->getHeaderAndFooterAdapter()Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;->addFooterView(Landroid/view/View;)V

    return-void
.end method

.method public addHeaderView(Landroid/view/View;)V
    .locals 1

    .line 430
    invoke-virtual {p0}, Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;->getHeaderAndFooterAdapter()Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;->addHeaderView(Landroid/view/View;)V

    return-void
.end method

.method public addItem(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITM;)V"
        }
    .end annotation

    .line 313
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 314
    invoke-virtual {p0, p1}, Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;->notifyItemInsertedWrapper(I)V

    return-void
.end method

.method public addLastItem(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)V"
        }
    .end annotation

    .line 332
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;->addItem(ILjava/lang/Object;)V

    return-void
.end method

.method public addMoreData(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TM;>;)V"
        }
    .end annotation

    .line 219
    invoke-static {p1}, Lcn/bingoogolapple/baseadapter/BGABaseAdapterUtil;->isListNotEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 221
    iget-object v1, p0, Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1, v2, p1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 222
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;->notifyItemRangeInsertedWrapper(II)V

    :cond_0
    return-void
.end method

.method public addNewData(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TM;>;)V"
        }
    .end annotation

    .line 207
    invoke-static {p1}, Lcn/bingoogolapple/baseadapter/BGABaseAdapterUtil;->isListNotEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;->mData:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 209
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, v1, p1}, Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;->notifyItemRangeInsertedWrapper(II)V

    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    .line 252
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 253
    invoke-virtual {p0}, Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;->notifyDataSetChangedWrapper()V

    return-void
.end method

.method protected abstract fillData(Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;ILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;",
            "ITM;)V"
        }
    .end annotation
.end method

.method public getCheckedPosition()I
    .locals 1

    .line 501
    iget v0, p0, Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;->mCheckedPosition:I

    return v0
.end method

.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TM;>;"
        }
    .end annotation

    .line 190
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;->mData:Ljava/util/List;

    return-object v0
.end method

.method public getFirstItem()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TM;"
        }
    .end annotation

    .line 416
    invoke-virtual {p0}, Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getFootersCount()I
    .locals 1

    .line 450
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;->mHeaderAndFooterAdapter:Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;->getFootersCount()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getHeaderAndFooterAdapter()Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;
    .locals 1

    .line 454
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;->mHeaderAndFooterAdapter:Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;

    if-nez v0, :cond_1

    .line 455
    monitor-enter p0

    .line 456
    :try_start_0
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;->mHeaderAndFooterAdapter:Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;

    if-nez v0, :cond_0

    .line 457
    new-instance v0, Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;

    invoke-direct {v0, p0}, Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iput-object v0, p0, Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;->mHeaderAndFooterAdapter:Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;

    .line 459
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 461
    :cond_1
    :goto_0
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;->mHeaderAndFooterAdapter:Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;

    return-object v0
.end method

.method public getHeadersCount()I
    .locals 1

    .line 446
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;->mHeaderAndFooterAdapter:Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;->getHeadersCount()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TM;"
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 67
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 91
    iget p1, p0, Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;->mDefaultItemLayoutId:I

    if-eqz p1, :cond_0

    return p1

    .line 92
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8bf7\u5728 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " \u4e2d\u91cd\u5199 getItemViewType \u65b9\u6cd5\u8fd4\u56de\u5e03\u5c40\u8d44\u6e90 id\uff0c\u6216\u8005\u4f7f\u7528 BGARecyclerViewAdapter \u4e24\u4e2a\u53c2\u6570\u7684\u6784\u9020\u65b9\u6cd5 BGARecyclerViewAdapter(RecyclerView recyclerView, int itemLayoutId)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getLastItem()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TM;"
        }
    .end annotation

    .line 425
    invoke-virtual {p0}, Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public isHeaderOrFooter(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 2

    .line 471
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-virtual {p0}, Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;->getHeadersCount()I

    move-result v1

    if-lt v0, v1, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    invoke-virtual {p0}, Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;->getHeadersCount()I

    move-result v0

    invoke-virtual {p0}, Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;->getItemCount()I

    move-result v1

    add-int/2addr v0, v1

    if-lt p1, v0, :cond_0

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

.method public isIgnoreCheckedChanged()Z
    .locals 1

    .line 117
    iget-boolean v0, p0, Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;->mIsIgnoreCheckedChanged:Z

    return v0
.end method

.method public moveItem(II)V
    .locals 2

    .line 379
    invoke-virtual {p0, p1}, Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;->notifyItemChangedWrapper(I)V

    .line 380
    invoke-virtual {p0, p2}, Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;->notifyItemChangedWrapper(I)V

    .line 384
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 385
    invoke-virtual {p0, p1, p2}, Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;->notifyItemMovedWrapper(II)V

    return-void
.end method

.method public moveItem(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 4

    .line 395
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    .line 396
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    .line 397
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;->mHeaderAndFooterAdapter:Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;

    if-eqz v0, :cond_0

    .line 398
    invoke-virtual {v0, p1}, Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;->notifyItemChanged(I)V

    .line 399
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;->mHeaderAndFooterAdapter:Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;

    invoke-virtual {v0, p2}, Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;->notifyItemChanged(I)V

    .line 403
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;->mData:Ljava/util/List;

    iget-object v1, p0, Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;->mHeaderAndFooterAdapter:Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;

    invoke-virtual {v1}, Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;->getHeadersCount()I

    move-result v1

    sub-int v1, p2, v1

    iget-object v2, p0, Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;->mData:Ljava/util/List;

    iget-object v3, p0, Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;->mHeaderAndFooterAdapter:Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;

    invoke-virtual {v3}, Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;->getHeadersCount()I

    move-result v3

    sub-int v3, p1, v3

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 404
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;->mHeaderAndFooterAdapter:Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;

    invoke-virtual {v0, p1, p2}, Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;->notifyItemMoved(II)V

    goto :goto_0

    .line 406
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;->moveItem(II)V

    :goto_0
    return-void
.end method

.method public final notifyDataSetChangedWrapper()V
    .locals 1

    .line 227
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;->mHeaderAndFooterAdapter:Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;

    if-nez v0, :cond_0

    .line 228
    invoke-virtual {p0}, Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 230
    :cond_0
    invoke-virtual {v0}, Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;->notifyDataSetChanged()V

    :goto_0
    return-void
.end method

.method public final notifyItemChangedWrapper(I)V
    .locals 2

    .line 336
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;->mHeaderAndFooterAdapter:Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;

    if-nez v0, :cond_0

    .line 337
    invoke-virtual {p0, p1}, Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;->notifyItemChanged(I)V

    goto :goto_0

    .line 339
    :cond_0
    invoke-virtual {v0}, Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;->getHeadersCount()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;->notifyItemChanged(I)V

    :goto_0
    return-void
.end method

.method public final notifyItemInsertedWrapper(I)V
    .locals 2

    .line 299
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;->mHeaderAndFooterAdapter:Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;

    if-nez v0, :cond_0

    .line 300
    invoke-virtual {p0, p1}, Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;->notifyItemInserted(I)V

    goto :goto_0

    .line 302
    :cond_0
    invoke-virtual {v0}, Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;->getHeadersCount()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;->notifyItemInserted(I)V

    :goto_0
    return-void
.end method

.method public final notifyItemMovedWrapper(II)V
    .locals 2

    .line 365
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;->mHeaderAndFooterAdapter:Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;

    if-nez v0, :cond_0

    .line 366
    invoke-virtual {p0, p1, p2}, Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;->notifyItemMoved(II)V

    goto :goto_0

    .line 368
    :cond_0
    invoke-virtual {v0}, Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;->getHeadersCount()I

    move-result v1

    add-int/2addr v1, p1

    iget-object p1, p0, Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;->mHeaderAndFooterAdapter:Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;

    invoke-virtual {p1}, Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;->getHeadersCount()I

    move-result p1

    add-int/2addr p1, p2

    invoke-virtual {v0, v1, p1}, Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;->notifyItemMoved(II)V

    :goto_0
    return-void
.end method

.method public final notifyItemRangeInsertedWrapper(II)V
    .locals 2

    .line 194
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;->mHeaderAndFooterAdapter:Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;

    if-nez v0, :cond_0

    .line 195
    invoke-virtual {p0, p1, p2}, Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;->notifyItemRangeInserted(II)V

    goto :goto_0

    .line 197
    :cond_0
    invoke-virtual {v0}, Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;->getHeadersCount()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1, p2}, Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;->notifyItemRangeInserted(II)V

    :goto_0
    return-void
.end method

.method public final notifyItemRemovedWrapper(I)V
    .locals 2

    .line 257
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;->mHeaderAndFooterAdapter:Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;

    if-nez v0, :cond_0

    .line 258
    invoke-virtual {p0, p1}, Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;->notifyItemRemoved(I)V

    goto :goto_0

    .line 260
    :cond_0
    invoke-virtual {v0}, Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;->getHeadersCount()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;->notifyItemRemoved(I)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 32
    check-cast p1, Lcn/bingoogolapple/baseadapter/BGARecyclerViewHolder;

    invoke-virtual {p0, p1, p2}, Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;->onBindViewHolder(Lcn/bingoogolapple/baseadapter/BGARecyclerViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcn/bingoogolapple/baseadapter/BGARecyclerViewHolder;I)V
    .locals 1

    const/4 v0, 0x1

    .line 100
    iput-boolean v0, p0, Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;->mIsIgnoreCheckedChanged:Z

    .line 102
    invoke-virtual {p1}, Lcn/bingoogolapple/baseadapter/BGARecyclerViewHolder;->getViewHolderHelper()Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    move-result-object p1

    invoke-virtual {p0, p2}, Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;->fillData(Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;ILjava/lang/Object;)V

    const/4 p1, 0x0

    .line 104
    iput-boolean p1, p0, Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;->mIsIgnoreCheckedChanged:Z

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 32
    invoke-virtual {p0, p1, p2}, Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/bingoogolapple/baseadapter/BGARecyclerViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/bingoogolapple/baseadapter/BGARecyclerViewHolder;
    .locals 7

    .line 72
    new-instance v6, Lcn/bingoogolapple/baseadapter/BGARecyclerViewHolder;

    iget-object v2, p0, Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;->mOnRVItemClickListener:Lcn/bingoogolapple/baseadapter/BGAOnRVItemClickListener;

    iget-object v5, p0, Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;->mOnRVItemLongClickListener:Lcn/bingoogolapple/baseadapter/BGAOnRVItemLongClickListener;

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcn/bingoogolapple/baseadapter/BGARecyclerViewHolder;-><init>(Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Lcn/bingoogolapple/baseadapter/BGAOnRVItemClickListener;Lcn/bingoogolapple/baseadapter/BGAOnRVItemLongClickListener;)V

    .line 73
    invoke-virtual {v6}, Lcn/bingoogolapple/baseadapter/BGARecyclerViewHolder;->getViewHolderHelper()Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    move-result-object p1

    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;->mOnItemChildClickListener:Lcn/bingoogolapple/baseadapter/BGAOnItemChildClickListener;

    invoke-virtual {p1, v0}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setOnItemChildClickListener(Lcn/bingoogolapple/baseadapter/BGAOnItemChildClickListener;)V

    .line 74
    invoke-virtual {v6}, Lcn/bingoogolapple/baseadapter/BGARecyclerViewHolder;->getViewHolderHelper()Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    move-result-object p1

    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;->mOnItemChildLongClickListener:Lcn/bingoogolapple/baseadapter/BGAOnItemChildLongClickListener;

    invoke-virtual {p1, v0}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setOnItemChildLongClickListener(Lcn/bingoogolapple/baseadapter/BGAOnItemChildLongClickListener;)V

    .line 75
    invoke-virtual {v6}, Lcn/bingoogolapple/baseadapter/BGARecyclerViewHolder;->getViewHolderHelper()Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    move-result-object p1

    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;->mOnItemChildCheckedChangeListener:Lcn/bingoogolapple/baseadapter/BGAOnItemChildCheckedChangeListener;

    invoke-virtual {p1, v0}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setOnItemChildCheckedChangeListener(Lcn/bingoogolapple/baseadapter/BGAOnItemChildCheckedChangeListener;)V

    .line 76
    invoke-virtual {v6}, Lcn/bingoogolapple/baseadapter/BGARecyclerViewHolder;->getViewHolderHelper()Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    move-result-object p1

    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;->mOnRVItemChildTouchListener:Lcn/bingoogolapple/baseadapter/BGAOnRVItemChildTouchListener;

    invoke-virtual {p1, v0}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setOnRVItemChildTouchListener(Lcn/bingoogolapple/baseadapter/BGAOnRVItemChildTouchListener;)V

    .line 77
    invoke-virtual {v6}, Lcn/bingoogolapple/baseadapter/BGARecyclerViewHolder;->getViewHolderHelper()Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;->setItemChildListener(Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;I)V

    return-object v6
.end method

.method public removeFooterView(Landroid/view/View;)V
    .locals 1

    .line 442
    invoke-virtual {p0}, Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;->getHeaderAndFooterAdapter()Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;->removeFooterView(Landroid/view/View;)V

    return-void
.end method

.method public removeHeaderView(Landroid/view/View;)V
    .locals 1

    .line 438
    invoke-virtual {p0}, Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;->getHeaderAndFooterAdapter()Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;->removeHeaderView(Landroid/view/View;)V

    return-void
.end method

.method public removeItem(I)V
    .locals 1

    .line 270
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 271
    invoke-virtual {p0, p1}, Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;->notifyItemRemovedWrapper(I)V

    return-void
.end method

.method public removeItem(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .line 280
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    .line 281
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;->mHeaderAndFooterAdapter:Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;

    if-eqz v0, :cond_0

    .line 282
    iget-object v1, p0, Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;->mData:Ljava/util/List;

    invoke-virtual {v0}, Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;->getHeadersCount()I

    move-result v0

    sub-int v0, p1, v0

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 283
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;->mHeaderAndFooterAdapter:Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;

    invoke-virtual {v0, p1}, Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;->notifyItemRemoved(I)V

    goto :goto_0

    .line 285
    :cond_0
    invoke-virtual {p0, p1}, Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;->removeItem(I)V

    :goto_0
    return-void
.end method

.method public removeItem(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)V"
        }
    .end annotation

    .line 295
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;->removeItem(I)V

    return-void
.end method

.method public setCheckedPosition(I)V
    .locals 2

    .line 480
    iget v0, p0, Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;->mCheckedPosition:I

    if-ne p1, v0, :cond_0

    return-void

    .line 485
    :cond_0
    iput p1, p0, Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;->mCheckedPosition:I

    .line 487
    invoke-virtual {p0}, Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;->getData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 488
    iget p1, p0, Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;->mCheckedPosition:I

    invoke-virtual {p0, p1}, Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;->notifyItemChangedWrapper(I)V

    .line 490
    :cond_1
    invoke-virtual {p0}, Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_2

    .line 491
    invoke-virtual {p0, v0}, Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;->notifyItemChangedWrapper(I)V

    :cond_2
    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TM;>;)V"
        }
    .end annotation

    .line 240
    invoke-static {p1}, Lcn/bingoogolapple/baseadapter/BGABaseAdapterUtil;->isListNotEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    iput-object p1, p0, Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;->mData:Ljava/util/List;

    goto :goto_0

    .line 243
    :cond_0
    iget-object p1, p0, Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;->mData:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 245
    :goto_0
    invoke-virtual {p0}, Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;->notifyDataSetChangedWrapper()V

    return-void
.end method

.method public setItem(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITM;)V"
        }
    .end annotation

    .line 350
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 351
    invoke-virtual {p0, p1}, Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;->notifyItemChangedWrapper(I)V

    return-void
.end method

.method public setItem(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;TM;)V"
        }
    .end annotation

    .line 361
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;->setItem(ILjava/lang/Object;)V

    return-void
.end method

.method protected setItemChildListener(Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;I)V
    .locals 0

    return-void
.end method

.method public setOnItemChildCheckedChangeListener(Lcn/bingoogolapple/baseadapter/BGAOnItemChildCheckedChangeListener;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;->mOnItemChildCheckedChangeListener:Lcn/bingoogolapple/baseadapter/BGAOnItemChildCheckedChangeListener;

    return-void
.end method

.method public setOnItemChildClickListener(Lcn/bingoogolapple/baseadapter/BGAOnItemChildClickListener;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;->mOnItemChildClickListener:Lcn/bingoogolapple/baseadapter/BGAOnItemChildClickListener;

    return-void
.end method

.method public setOnItemChildLongClickListener(Lcn/bingoogolapple/baseadapter/BGAOnItemChildLongClickListener;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;->mOnItemChildLongClickListener:Lcn/bingoogolapple/baseadapter/BGAOnItemChildLongClickListener;

    return-void
.end method

.method public setOnRVItemChildTouchListener(Lcn/bingoogolapple/baseadapter/BGAOnRVItemChildTouchListener;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;->mOnRVItemChildTouchListener:Lcn/bingoogolapple/baseadapter/BGAOnRVItemChildTouchListener;

    return-void
.end method

.method public setOnRVItemClickListener(Lcn/bingoogolapple/baseadapter/BGAOnRVItemClickListener;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;->mOnRVItemClickListener:Lcn/bingoogolapple/baseadapter/BGAOnRVItemClickListener;

    return-void
.end method

.method public setOnRVItemLongClickListener(Lcn/bingoogolapple/baseadapter/BGAOnRVItemLongClickListener;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;->mOnRVItemLongClickListener:Lcn/bingoogolapple/baseadapter/BGAOnRVItemLongClickListener;

    return-void
.end method
