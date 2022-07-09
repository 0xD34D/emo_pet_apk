.class public abstract Lcn/bingoogolapple/baseadapter/BGAAdapterViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "BGAAdapterViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/BaseAdapter;"
    }
.end annotation


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TM;>;"
        }
    .end annotation
.end field

.field private mIsIgnoreCheckedChanged:Z

.field protected final mItemLayoutId:I

.field protected mOnItemChildCheckedChangeListener:Lcn/bingoogolapple/baseadapter/BGAOnItemChildCheckedChangeListener;

.field protected mOnItemChildClickListener:Lcn/bingoogolapple/baseadapter/BGAOnItemChildClickListener;

.field protected mOnItemChildLongClickListener:Lcn/bingoogolapple/baseadapter/BGAOnItemChildLongClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 45
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x1

    .line 43
    iput-boolean v0, p0, Lcn/bingoogolapple/baseadapter/BGAAdapterViewAdapter;->mIsIgnoreCheckedChanged:Z

    .line 46
    iput-object p1, p0, Lcn/bingoogolapple/baseadapter/BGAAdapterViewAdapter;->mContext:Landroid/content/Context;

    .line 47
    iput p2, p0, Lcn/bingoogolapple/baseadapter/BGAAdapterViewAdapter;->mItemLayoutId:I

    .line 48
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcn/bingoogolapple/baseadapter/BGAAdapterViewAdapter;->mData:Ljava/util/List;

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

    .line 225
    invoke-virtual {p0, v0, p1}, Lcn/bingoogolapple/baseadapter/BGAAdapterViewAdapter;->addItem(ILjava/lang/Object;)V

    return-void
.end method

.method public addItem(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITM;)V"
        }
    .end annotation

    .line 215
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGAAdapterViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 216
    invoke-virtual {p0}, Lcn/bingoogolapple/baseadapter/BGAAdapterViewAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public addLastItem(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)V"
        }
    .end annotation

    .line 234
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGAAdapterViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcn/bingoogolapple/baseadapter/BGAAdapterViewAdapter;->addItem(ILjava/lang/Object;)V

    return-void
.end method

.method public addMoreData(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TM;>;)V"
        }
    .end annotation

    .line 160
    invoke-static {p1}, Lcn/bingoogolapple/baseadapter/BGABaseAdapterUtil;->isListNotEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGAAdapterViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1, p1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 162
    invoke-virtual {p0}, Lcn/bingoogolapple/baseadapter/BGAAdapterViewAdapter;->notifyDataSetChanged()V

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

    .line 148
    invoke-static {p1}, Lcn/bingoogolapple/baseadapter/BGABaseAdapterUtil;->isListNotEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGAAdapterViewAdapter;->mData:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 150
    invoke-virtual {p0}, Lcn/bingoogolapple/baseadapter/BGAAdapterViewAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    .line 184
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGAAdapterViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 185
    invoke-virtual {p0}, Lcn/bingoogolapple/baseadapter/BGAAdapterViewAdapter;->notifyDataSetChanged()V

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

.method public getCount()I
    .locals 1

    .line 53
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGAAdapterViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

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

    .line 139
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGAAdapterViewAdapter;->mData:Ljava/util/List;

    return-object v0
.end method

.method public getFirstItem()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TM;"
        }
    .end annotation

    .line 275
    invoke-virtual {p0}, Lcn/bingoogolapple/baseadapter/BGAAdapterViewAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/bingoogolapple/baseadapter/BGAAdapterViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TM;"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGAAdapterViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getLastItem()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TM;"
        }
    .end annotation

    .line 284
    invoke-virtual {p0}, Lcn/bingoogolapple/baseadapter/BGAAdapterViewAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcn/bingoogolapple/baseadapter/BGAAdapterViewAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcn/bingoogolapple/baseadapter/BGAAdapterViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x1

    .line 69
    iput-boolean v0, p0, Lcn/bingoogolapple/baseadapter/BGAAdapterViewAdapter;->mIsIgnoreCheckedChanged:Z

    .line 71
    iget v0, p0, Lcn/bingoogolapple/baseadapter/BGAAdapterViewAdapter;->mItemLayoutId:I

    invoke-static {p2, p3, v0}, Lcn/bingoogolapple/baseadapter/BGAAdapterViewHolder;->dequeueReusableAdapterViewHolder(Landroid/view/View;Landroid/view/ViewGroup;I)Lcn/bingoogolapple/baseadapter/BGAAdapterViewHolder;

    move-result-object p2

    .line 72
    invoke-virtual {p2}, Lcn/bingoogolapple/baseadapter/BGAAdapterViewHolder;->getViewHolderHelper()Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setPosition(I)V

    .line 73
    invoke-virtual {p2}, Lcn/bingoogolapple/baseadapter/BGAAdapterViewHolder;->getViewHolderHelper()Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    move-result-object p3

    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGAAdapterViewAdapter;->mOnItemChildClickListener:Lcn/bingoogolapple/baseadapter/BGAOnItemChildClickListener;

    invoke-virtual {p3, v0}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setOnItemChildClickListener(Lcn/bingoogolapple/baseadapter/BGAOnItemChildClickListener;)V

    .line 74
    invoke-virtual {p2}, Lcn/bingoogolapple/baseadapter/BGAAdapterViewHolder;->getViewHolderHelper()Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    move-result-object p3

    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGAAdapterViewAdapter;->mOnItemChildLongClickListener:Lcn/bingoogolapple/baseadapter/BGAOnItemChildLongClickListener;

    invoke-virtual {p3, v0}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setOnItemChildLongClickListener(Lcn/bingoogolapple/baseadapter/BGAOnItemChildLongClickListener;)V

    .line 75
    invoke-virtual {p2}, Lcn/bingoogolapple/baseadapter/BGAAdapterViewHolder;->getViewHolderHelper()Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    move-result-object p3

    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGAAdapterViewAdapter;->mOnItemChildCheckedChangeListener:Lcn/bingoogolapple/baseadapter/BGAOnItemChildCheckedChangeListener;

    invoke-virtual {p3, v0}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setOnItemChildCheckedChangeListener(Lcn/bingoogolapple/baseadapter/BGAOnItemChildCheckedChangeListener;)V

    .line 76
    invoke-virtual {p2}, Lcn/bingoogolapple/baseadapter/BGAAdapterViewHolder;->getViewHolderHelper()Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcn/bingoogolapple/baseadapter/BGAAdapterViewAdapter;->setItemChildListener(Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;)V

    .line 78
    invoke-virtual {p2}, Lcn/bingoogolapple/baseadapter/BGAAdapterViewHolder;->getViewHolderHelper()Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    move-result-object p3

    invoke-virtual {p0, p1}, Lcn/bingoogolapple/baseadapter/BGAAdapterViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p3, p1, v0}, Lcn/bingoogolapple/baseadapter/BGAAdapterViewAdapter;->fillData(Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;ILjava/lang/Object;)V

    const/4 p1, 0x0

    .line 80
    iput-boolean p1, p0, Lcn/bingoogolapple/baseadapter/BGAAdapterViewAdapter;->mIsIgnoreCheckedChanged:Z

    .line 82
    invoke-virtual {p2}, Lcn/bingoogolapple/baseadapter/BGAAdapterViewHolder;->getConvertView()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public isIgnoreCheckedChanged()Z
    .locals 1

    .line 86
    iget-boolean v0, p0, Lcn/bingoogolapple/baseadapter/BGAAdapterViewAdapter;->mIsIgnoreCheckedChanged:Z

    return v0
.end method

.method public moveItem(II)V
    .locals 1

    .line 265
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGAAdapterViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 266
    invoke-virtual {p0}, Lcn/bingoogolapple/baseadapter/BGAAdapterViewAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public removeItem(I)V
    .locals 1

    .line 194
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGAAdapterViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 195
    invoke-virtual {p0}, Lcn/bingoogolapple/baseadapter/BGAAdapterViewAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public removeItem(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)V"
        }
    .end annotation

    .line 204
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGAAdapterViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 205
    invoke-virtual {p0}, Lcn/bingoogolapple/baseadapter/BGAAdapterViewAdapter;->notifyDataSetChanged()V

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

    .line 172
    invoke-static {p1}, Lcn/bingoogolapple/baseadapter/BGABaseAdapterUtil;->isListNotEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    iput-object p1, p0, Lcn/bingoogolapple/baseadapter/BGAAdapterViewAdapter;->mData:Ljava/util/List;

    goto :goto_0

    .line 175
    :cond_0
    iget-object p1, p0, Lcn/bingoogolapple/baseadapter/BGAAdapterViewAdapter;->mData:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 177
    :goto_0
    invoke-virtual {p0}, Lcn/bingoogolapple/baseadapter/BGAAdapterViewAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setItem(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITM;)V"
        }
    .end annotation

    .line 244
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGAAdapterViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 245
    invoke-virtual {p0}, Lcn/bingoogolapple/baseadapter/BGAAdapterViewAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setItem(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;TM;)V"
        }
    .end annotation

    .line 255
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGAAdapterViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcn/bingoogolapple/baseadapter/BGAAdapterViewAdapter;->setItem(ILjava/lang/Object;)V

    return-void
.end method

.method protected setItemChildListener(Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;)V
    .locals 0

    return-void
.end method

.method public setOnItemChildCheckedChangeListener(Lcn/bingoogolapple/baseadapter/BGAOnItemChildCheckedChangeListener;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcn/bingoogolapple/baseadapter/BGAAdapterViewAdapter;->mOnItemChildCheckedChangeListener:Lcn/bingoogolapple/baseadapter/BGAOnItemChildCheckedChangeListener;

    return-void
.end method

.method public setOnItemChildClickListener(Lcn/bingoogolapple/baseadapter/BGAOnItemChildClickListener;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcn/bingoogolapple/baseadapter/BGAAdapterViewAdapter;->mOnItemChildClickListener:Lcn/bingoogolapple/baseadapter/BGAOnItemChildClickListener;

    return-void
.end method

.method public setOnItemChildLongClickListener(Lcn/bingoogolapple/baseadapter/BGAOnItemChildLongClickListener;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcn/bingoogolapple/baseadapter/BGAAdapterViewAdapter;->mOnItemChildLongClickListener:Lcn/bingoogolapple/baseadapter/BGAOnItemChildLongClickListener;

    return-void
.end method
