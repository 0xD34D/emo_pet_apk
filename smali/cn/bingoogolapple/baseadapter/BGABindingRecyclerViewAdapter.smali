.class public Lcn/bingoogolapple/baseadapter/BGABindingRecyclerViewAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "BGABindingRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Ljava/lang/Object;",
        "B:",
        "Landroidx/databinding/ViewDataBinding;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcn/bingoogolapple/baseadapter/BGABindingViewHolder<",
        "TB;>;>;"
    }
.end annotation


# instance fields
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

.field protected mItemEventHandler:Ljava/lang/Object;

.field private mLayoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/bingoogolapple/baseadapter/BGABindingRecyclerViewAdapter;->mData:Ljava/util/List;

    const/4 v0, 0x1

    .line 42
    iput-boolean v0, p0, Lcn/bingoogolapple/baseadapter/BGABindingRecyclerViewAdapter;->mIsIgnoreCheckedChanged:Z

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 55
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/bingoogolapple/baseadapter/BGABindingRecyclerViewAdapter;->mData:Ljava/util/List;

    const/4 v0, 0x1

    .line 42
    iput-boolean v0, p0, Lcn/bingoogolapple/baseadapter/BGABindingRecyclerViewAdapter;->mIsIgnoreCheckedChanged:Z

    .line 56
    iput p1, p0, Lcn/bingoogolapple/baseadapter/BGABindingRecyclerViewAdapter;->mDefaultItemLayoutId:I

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

    .line 273
    invoke-virtual {p0, v0, p1}, Lcn/bingoogolapple/baseadapter/BGABindingRecyclerViewAdapter;->addItem(ILjava/lang/Object;)V

    return-void
.end method

.method public addFooterView(Landroid/view/View;)V
    .locals 1

    .line 384
    invoke-virtual {p0}, Lcn/bingoogolapple/baseadapter/BGABindingRecyclerViewAdapter;->getHeaderAndFooterAdapter()Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;->addFooterView(Landroid/view/View;)V

    return-void
.end method

.method public addHeaderView(Landroid/view/View;)V
    .locals 1

    .line 380
    invoke-virtual {p0}, Lcn/bingoogolapple/baseadapter/BGABindingRecyclerViewAdapter;->getHeaderAndFooterAdapter()Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;

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

    .line 263
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGABindingRecyclerViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 264
    invoke-virtual {p0, p1}, Lcn/bingoogolapple/baseadapter/BGABindingRecyclerViewAdapter;->notifyItemInsertedWrapper(I)V

    return-void
.end method

.method public addLastItem(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)V"
        }
    .end annotation

    .line 282
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGABindingRecyclerViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcn/bingoogolapple/baseadapter/BGABindingRecyclerViewAdapter;->addItem(ILjava/lang/Object;)V

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

    .line 169
    invoke-static {p1}, Lcn/bingoogolapple/baseadapter/BGABaseAdapterUtil;->isListNotEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGABindingRecyclerViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 171
    iget-object v1, p0, Lcn/bingoogolapple/baseadapter/BGABindingRecyclerViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1, v2, p1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 172
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcn/bingoogolapple/baseadapter/BGABindingRecyclerViewAdapter;->notifyItemRangeInsertedWrapper(II)V

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

    .line 157
    invoke-static {p1}, Lcn/bingoogolapple/baseadapter/BGABaseAdapterUtil;->isListNotEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGABindingRecyclerViewAdapter;->mData:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 159
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, v1, p1}, Lcn/bingoogolapple/baseadapter/BGABindingRecyclerViewAdapter;->notifyItemRangeInsertedWrapper(II)V

    :cond_0
    return-void
.end method

.method protected bindSpecialModel(Landroidx/databinding/ViewDataBinding;ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;ITM;)V"
        }
    .end annotation

    return-void
.end method

.method public clear()V
    .locals 1

    .line 202
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGABindingRecyclerViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 203
    invoke-virtual {p0}, Lcn/bingoogolapple/baseadapter/BGABindingRecyclerViewAdapter;->notifyDataSetChangedWrapper()V

    return-void
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

    .line 131
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGABindingRecyclerViewAdapter;->mData:Ljava/util/List;

    return-object v0
.end method

.method public getFirstItem()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TM;"
        }
    .end annotation

    .line 366
    invoke-virtual {p0}, Lcn/bingoogolapple/baseadapter/BGABindingRecyclerViewAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/bingoogolapple/baseadapter/BGABindingRecyclerViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getFootersCount()I
    .locals 1

    .line 400
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGABindingRecyclerViewAdapter;->mHeaderAndFooterAdapter:Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;

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

    .line 404
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGABindingRecyclerViewAdapter;->mHeaderAndFooterAdapter:Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;

    if-nez v0, :cond_1

    .line 405
    monitor-enter p0

    .line 406
    :try_start_0
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGABindingRecyclerViewAdapter;->mHeaderAndFooterAdapter:Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;

    if-nez v0, :cond_0

    .line 407
    new-instance v0, Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;

    invoke-direct {v0, p0}, Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iput-object v0, p0, Lcn/bingoogolapple/baseadapter/BGABindingRecyclerViewAdapter;->mHeaderAndFooterAdapter:Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;

    .line 409
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 411
    :cond_1
    :goto_0
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGABindingRecyclerViewAdapter;->mHeaderAndFooterAdapter:Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;

    return-object v0
.end method

.method public getHeadersCount()I
    .locals 1

    .line 396
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGABindingRecyclerViewAdapter;->mHeaderAndFooterAdapter:Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;

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

    .line 122
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGABindingRecyclerViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 68
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGABindingRecyclerViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 73
    iget p1, p0, Lcn/bingoogolapple/baseadapter/BGABindingRecyclerViewAdapter;->mDefaultItemLayoutId:I

    if-eqz p1, :cond_0

    return p1

    .line 74
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

    const-string v1, " \u4e2d\u91cd\u5199 getItemViewType \u65b9\u6cd5\u8fd4\u56de\u5e03\u5c40\u8d44\u6e90 id\uff0c\u6216\u8005\u4f7f\u7528 BGABindingRecyclerViewAdapter \u4e00\u4e2a\u53c2\u6570\u7684\u6784\u9020\u65b9\u6cd5 BGABindingRecyclerViewAdapter(int defaultItemLayoutId)"

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

    .line 375
    invoke-virtual {p0}, Lcn/bingoogolapple/baseadapter/BGABindingRecyclerViewAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcn/bingoogolapple/baseadapter/BGABindingRecyclerViewAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcn/bingoogolapple/baseadapter/BGABindingRecyclerViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method protected getLayoutInflater(Landroid/view/View;)Landroid/view/LayoutInflater;
    .locals 1

    .line 60
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGABindingRecyclerViewAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    .line 61
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcn/bingoogolapple/baseadapter/BGABindingRecyclerViewAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 63
    :cond_0
    iget-object p1, p0, Lcn/bingoogolapple/baseadapter/BGABindingRecyclerViewAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-object p1
.end method

.method public isHeaderOrFooter(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 2

    .line 421
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-virtual {p0}, Lcn/bingoogolapple/baseadapter/BGABindingRecyclerViewAdapter;->getHeadersCount()I

    move-result v1

    if-lt v0, v1, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    invoke-virtual {p0}, Lcn/bingoogolapple/baseadapter/BGABindingRecyclerViewAdapter;->getHeadersCount()I

    move-result v0

    invoke-virtual {p0}, Lcn/bingoogolapple/baseadapter/BGABindingRecyclerViewAdapter;->getItemCount()I

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

    .line 112
    iget-boolean v0, p0, Lcn/bingoogolapple/baseadapter/BGABindingRecyclerViewAdapter;->mIsIgnoreCheckedChanged:Z

    return v0
.end method

.method public moveItem(II)V
    .locals 2

    .line 329
    invoke-virtual {p0, p1}, Lcn/bingoogolapple/baseadapter/BGABindingRecyclerViewAdapter;->notifyItemChangedWrapper(I)V

    .line 330
    invoke-virtual {p0, p2}, Lcn/bingoogolapple/baseadapter/BGABindingRecyclerViewAdapter;->notifyItemChangedWrapper(I)V

    .line 334
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGABindingRecyclerViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 335
    invoke-virtual {p0, p1, p2}, Lcn/bingoogolapple/baseadapter/BGABindingRecyclerViewAdapter;->notifyItemMovedWrapper(II)V

    return-void
.end method

.method public moveItem(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 4

    .line 345
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    .line 346
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    .line 347
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGABindingRecyclerViewAdapter;->mHeaderAndFooterAdapter:Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;

    if-eqz v0, :cond_0

    .line 348
    invoke-virtual {v0, p1}, Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;->notifyItemChanged(I)V

    .line 349
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGABindingRecyclerViewAdapter;->mHeaderAndFooterAdapter:Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;

    invoke-virtual {v0, p2}, Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;->notifyItemChanged(I)V

    .line 353
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGABindingRecyclerViewAdapter;->mData:Ljava/util/List;

    iget-object v1, p0, Lcn/bingoogolapple/baseadapter/BGABindingRecyclerViewAdapter;->mHeaderAndFooterAdapter:Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;

    invoke-virtual {v1}, Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;->getHeadersCount()I

    move-result v1

    sub-int v1, p2, v1

    iget-object v2, p0, Lcn/bingoogolapple/baseadapter/BGABindingRecyclerViewAdapter;->mData:Ljava/util/List;

    iget-object v3, p0, Lcn/bingoogolapple/baseadapter/BGABindingRecyclerViewAdapter;->mHeaderAndFooterAdapter:Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;

    invoke-virtual {v3}, Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;->getHeadersCount()I

    move-result v3

    sub-int v3, p1, v3

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 354
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGABindingRecyclerViewAdapter;->mHeaderAndFooterAdapter:Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;

    invoke-virtual {v0, p1, p2}, Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;->notifyItemMoved(II)V

    goto :goto_0

    .line 356
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcn/bingoogolapple/baseadapter/BGABindingRecyclerViewAdapter;->moveItem(II)V

    :goto_0
    return-void
.end method

.method public final notifyDataSetChangedWrapper()V
    .locals 1

    .line 177
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGABindingRecyclerViewAdapter;->mHeaderAndFooterAdapter:Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;

    if-nez v0, :cond_0

    .line 178
    invoke-virtual {p0}, Lcn/bingoogolapple/baseadapter/BGABindingRecyclerViewAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 180
    :cond_0
    invoke-virtual {v0}, Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;->notifyDataSetChanged()V

    :goto_0
    return-void
.end method

.method public final notifyItemChangedWrapper(I)V
    .locals 2

    .line 286
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGABindingRecyclerViewAdapter;->mHeaderAndFooterAdapter:Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;

    if-nez v0, :cond_0

    .line 287
    invoke-virtual {p0, p1}, Lcn/bingoogolapple/baseadapter/BGABindingRecyclerViewAdapter;->notifyItemChanged(I)V

    goto :goto_0

    .line 289
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

    .line 249
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGABindingRecyclerViewAdapter;->mHeaderAndFooterAdapter:Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;

    if-nez v0, :cond_0

    .line 250
    invoke-virtual {p0, p1}, Lcn/bingoogolapple/baseadapter/BGABindingRecyclerViewAdapter;->notifyItemInserted(I)V

    goto :goto_0

    .line 252
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

    .line 315
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGABindingRecyclerViewAdapter;->mHeaderAndFooterAdapter:Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;

    if-nez v0, :cond_0

    .line 316
    invoke-virtual {p0, p1, p2}, Lcn/bingoogolapple/baseadapter/BGABindingRecyclerViewAdapter;->notifyItemMoved(II)V

    goto :goto_0

    .line 318
    :cond_0
    invoke-virtual {v0}, Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;->getHeadersCount()I

    move-result v1

    add-int/2addr v1, p1

    iget-object p1, p0, Lcn/bingoogolapple/baseadapter/BGABindingRecyclerViewAdapter;->mHeaderAndFooterAdapter:Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;

    invoke-virtual {p1}, Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;->getHeadersCount()I

    move-result p1

    add-int/2addr p1, p2

    invoke-virtual {v0, v1, p1}, Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;->notifyItemMoved(II)V

    :goto_0
    return-void
.end method

.method public final notifyItemRangeInsertedWrapper(II)V
    .locals 2

    .line 144
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGABindingRecyclerViewAdapter;->mHeaderAndFooterAdapter:Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;

    if-nez v0, :cond_0

    .line 145
    invoke-virtual {p0, p1, p2}, Lcn/bingoogolapple/baseadapter/BGABindingRecyclerViewAdapter;->notifyItemRangeInserted(II)V

    goto :goto_0

    .line 147
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

    .line 207
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGABindingRecyclerViewAdapter;->mHeaderAndFooterAdapter:Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;

    if-nez v0, :cond_0

    .line 208
    invoke-virtual {p0, p1}, Lcn/bingoogolapple/baseadapter/BGABindingRecyclerViewAdapter;->notifyItemRemoved(I)V

    goto :goto_0

    .line 210
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

    .line 36
    check-cast p1, Lcn/bingoogolapple/baseadapter/BGABindingViewHolder;

    invoke-virtual {p0, p1, p2}, Lcn/bingoogolapple/baseadapter/BGABindingRecyclerViewAdapter;->onBindViewHolder(Lcn/bingoogolapple/baseadapter/BGABindingViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcn/bingoogolapple/baseadapter/BGABindingViewHolder;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/bingoogolapple/baseadapter/BGABindingViewHolder<",
            "TB;>;I)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 87
    iput-boolean v0, p0, Lcn/bingoogolapple/baseadapter/BGABindingRecyclerViewAdapter;->mIsIgnoreCheckedChanged:Z

    .line 89
    invoke-virtual {p0, p2}, Lcn/bingoogolapple/baseadapter/BGABindingRecyclerViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 90
    invoke-virtual {p1}, Lcn/bingoogolapple/baseadapter/BGABindingViewHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    .line 91
    sget v2, Lcn/bingoogolapple/baseadapter/BR;->viewHolder:I

    invoke-virtual {v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->setVariable(ILjava/lang/Object;)Z

    .line 92
    sget p1, Lcn/bingoogolapple/baseadapter/BR;->model:I

    invoke-virtual {v1, p1, v0}, Landroidx/databinding/ViewDataBinding;->setVariable(ILjava/lang/Object;)Z

    .line 93
    sget p1, Lcn/bingoogolapple/baseadapter/BR;->itemEventHandler:I

    iget-object v2, p0, Lcn/bingoogolapple/baseadapter/BGABindingRecyclerViewAdapter;->mItemEventHandler:Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Landroidx/databinding/ViewDataBinding;->setVariable(ILjava/lang/Object;)Z

    .line 94
    invoke-virtual {v1}, Landroidx/databinding/ViewDataBinding;->executePendingBindings()V

    .line 96
    invoke-virtual {p0, v1, p2, v0}, Lcn/bingoogolapple/baseadapter/BGABindingRecyclerViewAdapter;->bindSpecialModel(Landroidx/databinding/ViewDataBinding;ILjava/lang/Object;)V

    const/4 p1, 0x0

    .line 98
    iput-boolean p1, p0, Lcn/bingoogolapple/baseadapter/BGABindingRecyclerViewAdapter;->mIsIgnoreCheckedChanged:Z

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 36
    invoke-virtual {p0, p1, p2}, Lcn/bingoogolapple/baseadapter/BGABindingRecyclerViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/bingoogolapple/baseadapter/BGABindingViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/bingoogolapple/baseadapter/BGABindingViewHolder;
    .locals 3

    .line 81
    new-instance v0, Lcn/bingoogolapple/baseadapter/BGABindingViewHolder;

    invoke-virtual {p0, p1}, Lcn/bingoogolapple/baseadapter/BGABindingRecyclerViewAdapter;->getLayoutInflater(Landroid/view/View;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p2, p1, v2}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcn/bingoogolapple/baseadapter/BGABindingViewHolder;-><init>(Lcn/bingoogolapple/baseadapter/BGABindingRecyclerViewAdapter;Landroidx/databinding/ViewDataBinding;)V

    return-object v0
.end method

.method public removeFooterView(Landroid/view/View;)V
    .locals 1

    .line 392
    invoke-virtual {p0}, Lcn/bingoogolapple/baseadapter/BGABindingRecyclerViewAdapter;->getHeaderAndFooterAdapter()Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;->removeFooterView(Landroid/view/View;)V

    return-void
.end method

.method public removeHeaderView(Landroid/view/View;)V
    .locals 1

    .line 388
    invoke-virtual {p0}, Lcn/bingoogolapple/baseadapter/BGABindingRecyclerViewAdapter;->getHeaderAndFooterAdapter()Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;->removeHeaderView(Landroid/view/View;)V

    return-void
.end method

.method public removeItem(I)V
    .locals 1

    .line 220
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGABindingRecyclerViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 221
    invoke-virtual {p0, p1}, Lcn/bingoogolapple/baseadapter/BGABindingRecyclerViewAdapter;->notifyItemRemovedWrapper(I)V

    return-void
.end method

.method public removeItem(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .line 230
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    .line 231
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGABindingRecyclerViewAdapter;->mHeaderAndFooterAdapter:Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;

    if-eqz v0, :cond_0

    .line 232
    iget-object v1, p0, Lcn/bingoogolapple/baseadapter/BGABindingRecyclerViewAdapter;->mData:Ljava/util/List;

    invoke-virtual {v0}, Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;->getHeadersCount()I

    move-result v0

    sub-int v0, p1, v0

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 233
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGABindingRecyclerViewAdapter;->mHeaderAndFooterAdapter:Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;

    invoke-virtual {v0, p1}, Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;->notifyItemRemoved(I)V

    goto :goto_0

    .line 235
    :cond_0
    invoke-virtual {p0, p1}, Lcn/bingoogolapple/baseadapter/BGABindingRecyclerViewAdapter;->removeItem(I)V

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

    .line 245
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGABindingRecyclerViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcn/bingoogolapple/baseadapter/BGABindingRecyclerViewAdapter;->removeItem(I)V

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

    .line 190
    invoke-static {p1}, Lcn/bingoogolapple/baseadapter/BGABaseAdapterUtil;->isListNotEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    iput-object p1, p0, Lcn/bingoogolapple/baseadapter/BGABindingRecyclerViewAdapter;->mData:Ljava/util/List;

    goto :goto_0

    .line 193
    :cond_0
    iget-object p1, p0, Lcn/bingoogolapple/baseadapter/BGABindingRecyclerViewAdapter;->mData:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 195
    :goto_0
    invoke-virtual {p0}, Lcn/bingoogolapple/baseadapter/BGABindingRecyclerViewAdapter;->notifyDataSetChangedWrapper()V

    return-void
.end method

.method public setItem(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITM;)V"
        }
    .end annotation

    .line 300
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGABindingRecyclerViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 301
    invoke-virtual {p0, p1}, Lcn/bingoogolapple/baseadapter/BGABindingRecyclerViewAdapter;->notifyItemChangedWrapper(I)V

    return-void
.end method

.method public setItem(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;TM;)V"
        }
    .end annotation

    .line 311
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGABindingRecyclerViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcn/bingoogolapple/baseadapter/BGABindingRecyclerViewAdapter;->setItem(ILjava/lang/Object;)V

    return-void
.end method

.method public setItemEventHandler(Ljava/lang/Object;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcn/bingoogolapple/baseadapter/BGABindingRecyclerViewAdapter;->mItemEventHandler:Ljava/lang/Object;

    return-void
.end method
