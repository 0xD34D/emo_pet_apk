.class public Lcn/bingoogolapple/baseadapter/BGARVVerticalScrollHelper;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "BGARVVerticalScrollHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/bingoogolapple/baseadapter/BGARVVerticalScrollHelper$SimpleDelegate;,
        Lcn/bingoogolapple/baseadapter/BGARVVerticalScrollHelper$Delegate;
    }
.end annotation


# instance fields
.field private mDataRv:Landroidx/recyclerview/widget/RecyclerView;

.field private mDelegate:Lcn/bingoogolapple/baseadapter/BGARVVerticalScrollHelper$Delegate;

.field private mIsScrolling:Z

.field private mIsSmoothScroll:Z

.field private mLinearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private mNewPosition:I

.field private mState:I


# direct methods
.method private constructor <init>(Landroidx/recyclerview/widget/RecyclerView;Lcn/bingoogolapple/baseadapter/BGARVVerticalScrollHelper$Delegate;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lcn/bingoogolapple/baseadapter/BGARVVerticalScrollHelper;->mNewPosition:I

    .line 33
    iput-boolean v0, p0, Lcn/bingoogolapple/baseadapter/BGARVVerticalScrollHelper;->mIsScrolling:Z

    .line 34
    iput-boolean v0, p0, Lcn/bingoogolapple/baseadapter/BGARVVerticalScrollHelper;->mIsSmoothScroll:Z

    .line 35
    iput v0, p0, Lcn/bingoogolapple/baseadapter/BGARVVerticalScrollHelper;->mState:I

    .line 46
    iput-object p1, p0, Lcn/bingoogolapple/baseadapter/BGARVVerticalScrollHelper;->mDataRv:Landroidx/recyclerview/widget/RecyclerView;

    .line 47
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 48
    iput-object p2, p0, Lcn/bingoogolapple/baseadapter/BGARVVerticalScrollHelper;->mDelegate:Lcn/bingoogolapple/baseadapter/BGARVVerticalScrollHelper$Delegate;

    return-void
.end method

.method private getCategoryHeight()I
    .locals 1

    .line 103
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGARVVerticalScrollHelper;->mDelegate:Lcn/bingoogolapple/baseadapter/BGARVVerticalScrollHelper$Delegate;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcn/bingoogolapple/baseadapter/BGARVVerticalScrollHelper$Delegate;->getCategoryHeight()I

    move-result v0

    :goto_0
    return v0
.end method

.method public static newInstance(Landroidx/recyclerview/widget/RecyclerView;)Lcn/bingoogolapple/baseadapter/BGARVVerticalScrollHelper;
    .locals 2

    .line 38
    new-instance v0, Lcn/bingoogolapple/baseadapter/BGARVVerticalScrollHelper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/bingoogolapple/baseadapter/BGARVVerticalScrollHelper;-><init>(Landroidx/recyclerview/widget/RecyclerView;Lcn/bingoogolapple/baseadapter/BGARVVerticalScrollHelper$Delegate;)V

    return-object v0
.end method

.method public static newInstance(Landroidx/recyclerview/widget/RecyclerView;Lcn/bingoogolapple/baseadapter/BGARVVerticalScrollHelper$Delegate;)Lcn/bingoogolapple/baseadapter/BGARVVerticalScrollHelper;
    .locals 1

    .line 42
    new-instance v0, Lcn/bingoogolapple/baseadapter/BGARVVerticalScrollHelper;

    invoke-direct {v0, p0, p1}, Lcn/bingoogolapple/baseadapter/BGARVVerticalScrollHelper;-><init>(Landroidx/recyclerview/widget/RecyclerView;Lcn/bingoogolapple/baseadapter/BGARVVerticalScrollHelper$Delegate;)V

    return-object v0
.end method


# virtual methods
.method public findFirstVisibleItemPosition()I
    .locals 1

    .line 171
    invoke-virtual {p0}, Lcn/bingoogolapple/baseadapter/BGARVVerticalScrollHelper;->getLinearLayoutManager()Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    return v0
.end method

.method public findLastVisibleItemPosition()I
    .locals 1

    .line 180
    invoke-virtual {p0}, Lcn/bingoogolapple/baseadapter/BGARVVerticalScrollHelper;->getLinearLayoutManager()Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    return v0
.end method

.method public getLinearLayoutManager()Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 1

    .line 189
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGARVVerticalScrollHelper;->mLinearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    if-nez v0, :cond_0

    .line 190
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGARVVerticalScrollHelper;->mDataRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iput-object v0, p0, Lcn/bingoogolapple/baseadapter/BGARVVerticalScrollHelper;->mLinearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 192
    :cond_0
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGARVVerticalScrollHelper;->mLinearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object v0
.end method

.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 2

    .line 54
    :try_start_0
    iput p2, p0, Lcn/bingoogolapple/baseadapter/BGARVVerticalScrollHelper;->mState:I

    if-nez p2, :cond_0

    .line 57
    iget-boolean p2, p0, Lcn/bingoogolapple/baseadapter/BGARVVerticalScrollHelper;->mIsScrolling:Z

    if-eqz p2, :cond_0

    iget-boolean p2, p0, Lcn/bingoogolapple/baseadapter/BGARVVerticalScrollHelper;->mIsSmoothScroll:Z

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 58
    iput-boolean p2, p0, Lcn/bingoogolapple/baseadapter/BGARVVerticalScrollHelper;->mIsScrolling:Z

    .line 59
    iput-boolean p2, p0, Lcn/bingoogolapple/baseadapter/BGARVVerticalScrollHelper;->mIsSmoothScroll:Z

    .line 61
    iget v0, p0, Lcn/bingoogolapple/baseadapter/BGARVVerticalScrollHelper;->mNewPosition:I

    invoke-virtual {p0}, Lcn/bingoogolapple/baseadapter/BGARVVerticalScrollHelper;->findFirstVisibleItemPosition()I

    move-result v1

    sub-int/2addr v0, v1

    if-ltz v0, :cond_0

    .line 62
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 63
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-direct {p0}, Lcn/bingoogolapple/baseadapter/BGARVVerticalScrollHelper;->getCategoryHeight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 64
    invoke-virtual {p1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 69
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 76
    :try_start_0
    iget p1, p0, Lcn/bingoogolapple/baseadapter/BGARVVerticalScrollHelper;->mState:I

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-ne p1, p2, :cond_0

    .line 77
    iput-boolean p3, p0, Lcn/bingoogolapple/baseadapter/BGARVVerticalScrollHelper;->mIsScrolling:Z

    .line 78
    iput-boolean p3, p0, Lcn/bingoogolapple/baseadapter/BGARVVerticalScrollHelper;->mIsSmoothScroll:Z

    .line 80
    iget-object p1, p0, Lcn/bingoogolapple/baseadapter/BGARVVerticalScrollHelper;->mDelegate:Lcn/bingoogolapple/baseadapter/BGARVVerticalScrollHelper$Delegate;

    if-eqz p1, :cond_0

    .line 81
    invoke-virtual {p0}, Lcn/bingoogolapple/baseadapter/BGARVVerticalScrollHelper;->findFirstVisibleItemPosition()I

    move-result p2

    invoke-interface {p1, p2}, Lcn/bingoogolapple/baseadapter/BGARVVerticalScrollHelper$Delegate;->dragging(I)V

    .line 85
    :cond_0
    iget-boolean p1, p0, Lcn/bingoogolapple/baseadapter/BGARVVerticalScrollHelper;->mIsScrolling:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcn/bingoogolapple/baseadapter/BGARVVerticalScrollHelper;->mIsSmoothScroll:Z

    if-nez p1, :cond_1

    iget p1, p0, Lcn/bingoogolapple/baseadapter/BGARVVerticalScrollHelper;->mState:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcn/bingoogolapple/baseadapter/BGARVVerticalScrollHelper;->mDelegate:Lcn/bingoogolapple/baseadapter/BGARVVerticalScrollHelper$Delegate;

    if-eqz p1, :cond_1

    .line 86
    invoke-virtual {p0}, Lcn/bingoogolapple/baseadapter/BGARVVerticalScrollHelper;->findFirstVisibleItemPosition()I

    move-result p2

    invoke-interface {p1, p2}, Lcn/bingoogolapple/baseadapter/BGARVVerticalScrollHelper$Delegate;->settling(I)V

    .line 89
    :cond_1
    iget-boolean p1, p0, Lcn/bingoogolapple/baseadapter/BGARVVerticalScrollHelper;->mIsScrolling:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcn/bingoogolapple/baseadapter/BGARVVerticalScrollHelper;->mIsSmoothScroll:Z

    if-nez p1, :cond_2

    .line 90
    iput-boolean p3, p0, Lcn/bingoogolapple/baseadapter/BGARVVerticalScrollHelper;->mIsScrolling:Z

    .line 91
    iget p1, p0, Lcn/bingoogolapple/baseadapter/BGARVVerticalScrollHelper;->mNewPosition:I

    invoke-virtual {p0}, Lcn/bingoogolapple/baseadapter/BGARVVerticalScrollHelper;->findFirstVisibleItemPosition()I

    move-result p2

    sub-int/2addr p1, p2

    if-ltz p1, :cond_2

    .line 92
    iget-object p2, p0, Lcn/bingoogolapple/baseadapter/BGARVVerticalScrollHelper;->mDataRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result p2

    if-ge p1, p2, :cond_2

    .line 93
    iget-object p2, p0, Lcn/bingoogolapple/baseadapter/BGARVVerticalScrollHelper;->mDataRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    invoke-direct {p0}, Lcn/bingoogolapple/baseadapter/BGARVVerticalScrollHelper;->getCategoryHeight()I

    move-result p2

    sub-int/2addr p1, p2

    .line 94
    iget-object p2, p0, Lcn/bingoogolapple/baseadapter/BGARVVerticalScrollHelper;->mDataRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p3, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 98
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method public scrollToPosition(I)V
    .locals 3

    if-ltz p1, :cond_3

    .line 141
    :try_start_0
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGARVVerticalScrollHelper;->mDataRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 145
    :cond_0
    iput p1, p0, Lcn/bingoogolapple/baseadapter/BGARVVerticalScrollHelper;->mNewPosition:I

    .line 146
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGARVVerticalScrollHelper;->mDataRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    const/4 v0, 0x0

    .line 147
    iput-boolean v0, p0, Lcn/bingoogolapple/baseadapter/BGARVVerticalScrollHelper;->mIsSmoothScroll:Z

    .line 149
    invoke-virtual {p0}, Lcn/bingoogolapple/baseadapter/BGARVVerticalScrollHelper;->findFirstVisibleItemPosition()I

    move-result v1

    .line 150
    invoke-virtual {p0}, Lcn/bingoogolapple/baseadapter/BGARVVerticalScrollHelper;->findLastVisibleItemPosition()I

    move-result v2

    if-gt p1, v1, :cond_1

    .line 152
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGARVVerticalScrollHelper;->mDataRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    goto :goto_0

    :cond_1
    if-gt p1, v2, :cond_2

    .line 154
    iget-object v2, p0, Lcn/bingoogolapple/baseadapter/BGARVVerticalScrollHelper;->mDataRv:Landroidx/recyclerview/widget/RecyclerView;

    sub-int/2addr p1, v1

    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    invoke-direct {p0}, Lcn/bingoogolapple/baseadapter/BGARVVerticalScrollHelper;->getCategoryHeight()I

    move-result v1

    sub-int/2addr p1, v1

    .line 155
    iget-object v1, p0, Lcn/bingoogolapple/baseadapter/BGARVVerticalScrollHelper;->mDataRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    goto :goto_0

    .line 157
    :cond_2
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGARVVerticalScrollHelper;->mDataRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    const/4 p1, 0x1

    .line 158
    iput-boolean p1, p0, Lcn/bingoogolapple/baseadapter/BGARVVerticalScrollHelper;->mIsScrolling:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 161
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method

.method public smoothScrollToPosition(I)V
    .locals 3

    if-ltz p1, :cond_4

    .line 108
    :try_start_0
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGARVVerticalScrollHelper;->mDataRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 112
    :cond_0
    iput p1, p0, Lcn/bingoogolapple/baseadapter/BGARVVerticalScrollHelper;->mNewPosition:I

    .line 113
    iget-object p1, p0, Lcn/bingoogolapple/baseadapter/BGARVVerticalScrollHelper;->mDataRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    const/4 p1, 0x1

    .line 114
    iput-boolean p1, p0, Lcn/bingoogolapple/baseadapter/BGARVVerticalScrollHelper;->mIsSmoothScroll:Z

    .line 116
    invoke-virtual {p0}, Lcn/bingoogolapple/baseadapter/BGARVVerticalScrollHelper;->findFirstVisibleItemPosition()I

    move-result v0

    .line 117
    invoke-virtual {p0}, Lcn/bingoogolapple/baseadapter/BGARVVerticalScrollHelper;->findLastVisibleItemPosition()I

    move-result v1

    .line 118
    iget v2, p0, Lcn/bingoogolapple/baseadapter/BGARVVerticalScrollHelper;->mNewPosition:I

    if-gt v2, v0, :cond_1

    .line 119
    iget-object p1, p0, Lcn/bingoogolapple/baseadapter/BGARVVerticalScrollHelper;->mDataRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    goto :goto_0

    :cond_1
    if-gt v2, v1, :cond_3

    .line 121
    iget-object v1, p0, Lcn/bingoogolapple/baseadapter/BGARVVerticalScrollHelper;->mDataRv:Landroidx/recyclerview/widget/RecyclerView;

    sub-int/2addr v2, v0

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-direct {p0}, Lcn/bingoogolapple/baseadapter/BGARVVerticalScrollHelper;->getCategoryHeight()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    if-gtz v0, :cond_2

    .line 124
    iget-object p1, p0, Lcn/bingoogolapple/baseadapter/BGARVVerticalScrollHelper;->mDataRv:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x2

    invoke-virtual {p1, v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    .line 125
    iget p1, p0, Lcn/bingoogolapple/baseadapter/BGARVVerticalScrollHelper;->mNewPosition:I

    invoke-virtual {p0, p1}, Lcn/bingoogolapple/baseadapter/BGARVVerticalScrollHelper;->smoothScrollToPosition(I)V

    goto :goto_0

    .line 127
    :cond_2
    iget-object v2, p0, Lcn/bingoogolapple/baseadapter/BGARVVerticalScrollHelper;->mDataRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    .line 128
    iput-boolean p1, p0, Lcn/bingoogolapple/baseadapter/BGARVVerticalScrollHelper;->mIsScrolling:Z

    goto :goto_0

    .line 131
    :cond_3
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGARVVerticalScrollHelper;->mDataRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 132
    iput-boolean p1, p0, Lcn/bingoogolapple/baseadapter/BGARVVerticalScrollHelper;->mIsScrolling:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 135
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_0
    return-void
.end method
