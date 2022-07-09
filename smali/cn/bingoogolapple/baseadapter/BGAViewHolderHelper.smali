.class public Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;
.super Ljava/lang/Object;
.source "BGAViewHolderHelper.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field protected mAdapterView:Landroid/widget/AdapterView;

.field protected mContext:Landroid/content/Context;

.field protected mConvertView:Landroid/view/View;

.field protected mObj:Ljava/lang/Object;

.field protected mOnItemChildCheckedChangeListener:Lcn/bingoogolapple/baseadapter/BGAOnItemChildCheckedChangeListener;

.field protected mOnItemChildClickListener:Lcn/bingoogolapple/baseadapter/BGAOnItemChildClickListener;

.field protected mOnItemChildLongClickListener:Lcn/bingoogolapple/baseadapter/BGAOnItemChildLongClickListener;

.field protected mOnRVItemChildTouchListener:Lcn/bingoogolapple/baseadapter/BGAOnRVItemChildTouchListener;

.field protected mPosition:I

.field protected mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field protected mRecyclerViewHolder:Lcn/bingoogolapple/baseadapter/BGARecyclerViewHolder;

.field protected final mViews:Landroidx/collection/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SparseArrayCompat<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Landroidx/collection/SparseArrayCompat;

    invoke-direct {v0}, Landroidx/collection/SparseArrayCompat;-><init>()V

    iput-object v0, p0, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->mViews:Landroidx/collection/SparseArrayCompat;

    .line 65
    check-cast p1, Landroid/widget/AdapterView;

    iput-object p1, p0, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->mAdapterView:Landroid/widget/AdapterView;

    .line 66
    iput-object p2, p0, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->mConvertView:Landroid/view/View;

    .line 67
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;Lcn/bingoogolapple/baseadapter/BGARecyclerViewHolder;)V
    .locals 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Landroidx/collection/SparseArrayCompat;

    invoke-direct {v0}, Landroidx/collection/SparseArrayCompat;-><init>()V

    iput-object v0, p0, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->mViews:Landroidx/collection/SparseArrayCompat;

    .line 72
    iput-object p1, p0, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 73
    iput-object p2, p0, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->mRecyclerViewHolder:Lcn/bingoogolapple/baseadapter/BGARecyclerViewHolder;

    .line 74
    iget-object p1, p2, Lcn/bingoogolapple/baseadapter/BGARecyclerViewHolder;->itemView:Landroid/view/View;

    iput-object p1, p0, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->mConvertView:Landroid/view/View;

    .line 75
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getConvertView()Landroid/view/View;
    .locals 1

    .line 273
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->mConvertView:Landroid/view/View;

    return-object v0
.end method

.method public getImageView(I)Landroid/widget/ImageView;
    .locals 0

    .line 254
    invoke-virtual {p0, p1}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    return-object p1
.end method

.method public getObj()Ljava/lang/Object;
    .locals 1

    .line 281
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->mObj:Ljava/lang/Object;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .line 87
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->mRecyclerViewHolder:Lcn/bingoogolapple/baseadapter/BGARecyclerViewHolder;

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {v0}, Lcn/bingoogolapple/baseadapter/BGARecyclerViewHolder;->getAdapterPositionWrapper()I

    move-result v0

    return v0

    .line 90
    :cond_0
    iget v0, p0, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->mPosition:I

    return v0
.end method

.method public getRecyclerViewHolder()Lcn/bingoogolapple/baseadapter/BGARecyclerViewHolder;
    .locals 1

    .line 79
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->mRecyclerViewHolder:Lcn/bingoogolapple/baseadapter/BGARecyclerViewHolder;

    return-object v0
.end method

.method public getTextView(I)Landroid/widget/TextView;
    .locals 0

    .line 264
    invoke-virtual {p0, p1}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    return-object p1
.end method

.method public getView(I)Landroid/view/View;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 239
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->mViews:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0, p1}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_0

    .line 241
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->mConvertView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 242
    iget-object v1, p0, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->mViews:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v1, p1, v0}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    .line 211
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->mOnItemChildCheckedChangeListener:Lcn/bingoogolapple/baseadapter/BGAOnItemChildCheckedChangeListener;

    if-eqz v0, :cond_2

    .line 212
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1

    .line 215
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    .line 216
    instance-of v1, v0, Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;

    if-eqz v1, :cond_0

    .line 217
    check-cast v0, Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;

    invoke-virtual {v0}, Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;->getInnerAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;

    goto :goto_0

    .line 219
    :cond_0
    check-cast v0, Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;

    .line 221
    :goto_0
    invoke-virtual {v0}, Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;->isIgnoreCheckedChanged()Z

    move-result v0

    if-nez v0, :cond_2

    .line 222
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->mOnItemChildCheckedChangeListener:Lcn/bingoogolapple/baseadapter/BGAOnItemChildCheckedChangeListener;

    iget-object v1, p0, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->getPosition()I

    move-result v2

    invoke-interface {v0, v1, p1, v2, p2}, Lcn/bingoogolapple/baseadapter/BGAOnItemChildCheckedChangeListener;->onItemChildCheckedChanged(Landroid/view/ViewGroup;Landroid/widget/CompoundButton;IZ)V

    goto :goto_1

    .line 224
    :cond_1
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->mAdapterView:Landroid/widget/AdapterView;

    if-eqz v0, :cond_2

    .line 225
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Lcn/bingoogolapple/baseadapter/BGAAdapterViewAdapter;

    invoke-virtual {v0}, Lcn/bingoogolapple/baseadapter/BGAAdapterViewAdapter;->isIgnoreCheckedChanged()Z

    move-result v0

    if-nez v0, :cond_2

    .line 226
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->mOnItemChildCheckedChangeListener:Lcn/bingoogolapple/baseadapter/BGAOnItemChildCheckedChangeListener;

    iget-object v1, p0, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->mAdapterView:Landroid/widget/AdapterView;

    invoke-virtual {p0}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->getPosition()I

    move-result v2

    invoke-interface {v0, v1, p1, v2, p2}, Lcn/bingoogolapple/baseadapter/BGAOnItemChildCheckedChangeListener;->onItemChildCheckedChanged(Landroid/view/ViewGroup;Landroid/widget/CompoundButton;IZ)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    .line 199
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->mOnItemChildLongClickListener:Lcn/bingoogolapple/baseadapter/BGAOnItemChildLongClickListener;

    if-eqz v0, :cond_1

    .line 200
    iget-object v1, p0, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_0

    .line 201
    invoke-virtual {p0}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->getPosition()I

    move-result v2

    invoke-interface {v0, v1, p1, v2}, Lcn/bingoogolapple/baseadapter/BGAOnItemChildLongClickListener;->onItemChildLongClick(Landroid/view/ViewGroup;Landroid/view/View;I)Z

    move-result p1

    return p1

    .line 202
    :cond_0
    iget-object v1, p0, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->mAdapterView:Landroid/widget/AdapterView;

    if-eqz v1, :cond_1

    .line 203
    invoke-virtual {p0}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->getPosition()I

    move-result v2

    invoke-interface {v0, v1, p1, v2}, Lcn/bingoogolapple/baseadapter/BGAOnItemChildLongClickListener;->onItemChildLongClick(Landroid/view/ViewGroup;Landroid/view/View;I)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 191
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->mOnRVItemChildTouchListener:Lcn/bingoogolapple/baseadapter/BGAOnRVItemChildTouchListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_0

    .line 192
    iget-object v1, p0, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->mRecyclerViewHolder:Lcn/bingoogolapple/baseadapter/BGARecyclerViewHolder;

    invoke-interface {v0, v1, p1, p2}, Lcn/bingoogolapple/baseadapter/BGAOnRVItemChildTouchListener;->onRvItemChildTouch(Lcn/bingoogolapple/baseadapter/BGARecyclerViewHolder;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setBackgroundColor(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;
    .locals 0

    .line 430
    invoke-virtual {p0, p1}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->getView(I)Landroid/view/View;

    move-result-object p1

    .line 431
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    return-object p0
.end method

.method public setBackgroundColorRes(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;
    .locals 1

    .line 441
    invoke-virtual {p0, p1}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->getView(I)Landroid/view/View;

    move-result-object p1

    .line 442
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    return-object p0
.end method

.method public setBackgroundRes(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;
    .locals 0

    .line 419
    invoke-virtual {p0, p1}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->getView(I)Landroid/view/View;

    move-result-object p1

    .line 420
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    return-object p0
.end method

.method public setBold(IZ)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;
    .locals 0

    .line 465
    invoke-virtual {p0, p1}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->getTextView(I)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    if-eqz p2, :cond_0

    sget-object p2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    goto :goto_0

    :cond_0
    sget-object p2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    :goto_0
    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-object p0
.end method

.method public setChecked(IZ)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;
    .locals 0

    .line 358
    invoke-virtual {p0, p1}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Checkable;

    .line 359
    invoke-interface {p1, p2}, Landroid/widget/Checkable;->setChecked(Z)V

    return-object p0
.end method

.method public setHtml(ILjava/lang/String;)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;
    .locals 0

    if-nez p2, :cond_0

    const-string p2, ""

    .line 346
    :cond_0
    invoke-virtual {p0, p1}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->getTextView(I)Landroid/widget/TextView;

    move-result-object p1

    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public setImageBitmap(ILandroid/graphics/Bitmap;)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;
    .locals 0

    .line 382
    invoke-virtual {p0, p1}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 383
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-object p0
.end method

.method public setImageDrawable(ILandroid/graphics/drawable/Drawable;)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;
    .locals 0

    .line 388
    invoke-virtual {p0, p1}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 389
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object p0
.end method

.method public setImageResource(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;
    .locals 0

    .line 452
    invoke-virtual {p0, p1}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 453
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-object p0
.end method

.method public setIsBold(IZ)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;
    .locals 0

    .line 331
    invoke-virtual {p0, p1}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->getTextView(I)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    if-eqz p2, :cond_0

    sget-object p2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    goto :goto_0

    :cond_0
    sget-object p2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    :goto_0
    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-object p0
.end method

.method public setItemChildCheckedChangeListener(I)V
    .locals 1

    .line 183
    invoke-virtual {p0, p1}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->getView(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 184
    instance-of v0, p1, Landroid/widget/CompoundButton;

    if-eqz v0, :cond_0

    .line 185
    check-cast p1, Landroid/widget/CompoundButton;

    invoke-virtual {p1, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_0
    return-void
.end method

.method public setItemChildClickListener(I)V
    .locals 1

    .line 108
    invoke-virtual {p0, p1}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->getView(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 110
    new-instance v0, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper$1;

    invoke-direct {v0, p0}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper$1;-><init>(Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public setItemChildLongClickListener(I)V
    .locals 0

    .line 141
    invoke-virtual {p0, p1}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->getView(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 143
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_0
    return-void
.end method

.method public setObj(Ljava/lang/Object;)V
    .locals 0

    .line 277
    iput-object p1, p0, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->mObj:Ljava/lang/Object;

    return-void
.end method

.method public setOnItemChildCheckedChangeListener(Lcn/bingoogolapple/baseadapter/BGAOnItemChildCheckedChangeListener;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->mOnItemChildCheckedChangeListener:Lcn/bingoogolapple/baseadapter/BGAOnItemChildCheckedChangeListener;

    return-void
.end method

.method public setOnItemChildClickListener(Lcn/bingoogolapple/baseadapter/BGAOnItemChildClickListener;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->mOnItemChildClickListener:Lcn/bingoogolapple/baseadapter/BGAOnItemChildClickListener;

    return-void
.end method

.method public setOnItemChildLongClickListener(Lcn/bingoogolapple/baseadapter/BGAOnItemChildLongClickListener;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->mOnItemChildLongClickListener:Lcn/bingoogolapple/baseadapter/BGAOnItemChildLongClickListener;

    return-void
.end method

.method public setOnRVItemChildTouchListener(Lcn/bingoogolapple/baseadapter/BGAOnRVItemChildTouchListener;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->mOnRVItemChildTouchListener:Lcn/bingoogolapple/baseadapter/BGAOnRVItemChildTouchListener;

    return-void
.end method

.method public setPosition(I)V
    .locals 0

    .line 83
    iput p1, p0, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->mPosition:I

    return-void
.end method

.method public setRVItemChildTouchListener(I)V
    .locals 0

    .line 162
    invoke-virtual {p0, p1}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->getView(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 164
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    return-void
.end method

.method public setTag(IILjava/lang/Object;)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;
    .locals 0

    .line 370
    invoke-virtual {p0, p1}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->getView(I)Landroid/view/View;

    move-result-object p1

    .line 371
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-object p0
.end method

.method public setTag(ILjava/lang/Object;)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;
    .locals 0

    .line 364
    invoke-virtual {p0, p1}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->getView(I)Landroid/view/View;

    move-result-object p1

    .line 365
    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object p0
.end method

.method public setText(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;
    .locals 0

    .line 307
    invoke-virtual {p0, p1}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->getTextView(I)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    return-object p0
.end method

.method public setText(ILjava/lang/CharSequence;)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;
    .locals 0

    if-nez p2, :cond_0

    const-string p2, ""

    .line 295
    :cond_0
    invoke-virtual {p0, p1}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->getTextView(I)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public setTextColor(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;
    .locals 0

    .line 409
    invoke-virtual {p0, p1}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->getTextView(I)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return-object p0
.end method

.method public setTextColorRes(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;
    .locals 1

    .line 399
    invoke-virtual {p0, p1}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->getTextView(I)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return-object p0
.end method

.method public setTextSizeSp(IF)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;
    .locals 1

    .line 319
    invoke-virtual {p0, p1}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->getTextView(I)Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    return-object p0
.end method

.method public setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;
    .locals 0

    .line 376
    invoke-virtual {p0, p1}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->getView(I)Landroid/view/View;

    move-result-object p1

    .line 377
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-object p0
.end method
