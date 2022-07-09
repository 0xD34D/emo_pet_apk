.class Lcn/bingoogolapple/baseadapter/BGARecyclerViewHolder$1;
.super Lcn/bingoogolapple/baseadapter/BGAOnNoDoubleClickListener;
.source "BGARecyclerViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/bingoogolapple/baseadapter/BGARecyclerViewHolder;-><init>(Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Lcn/bingoogolapple/baseadapter/BGAOnRVItemClickListener;Lcn/bingoogolapple/baseadapter/BGAOnRVItemLongClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/bingoogolapple/baseadapter/BGARecyclerViewHolder;


# direct methods
.method constructor <init>(Lcn/bingoogolapple/baseadapter/BGARecyclerViewHolder;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcn/bingoogolapple/baseadapter/BGARecyclerViewHolder$1;->this$0:Lcn/bingoogolapple/baseadapter/BGARecyclerViewHolder;

    invoke-direct {p0}, Lcn/bingoogolapple/baseadapter/BGAOnNoDoubleClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoDoubleClick(Landroid/view/View;)V
    .locals 3

    .line 46
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcn/bingoogolapple/baseadapter/BGARecyclerViewHolder$1;->this$0:Lcn/bingoogolapple/baseadapter/BGARecyclerViewHolder;

    iget-object v1, v1, Lcn/bingoogolapple/baseadapter/BGARecyclerViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGARecyclerViewHolder$1;->this$0:Lcn/bingoogolapple/baseadapter/BGARecyclerViewHolder;

    iget-object v0, v0, Lcn/bingoogolapple/baseadapter/BGARecyclerViewHolder;->mOnRVItemClickListener:Lcn/bingoogolapple/baseadapter/BGAOnRVItemClickListener;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGARecyclerViewHolder$1;->this$0:Lcn/bingoogolapple/baseadapter/BGARecyclerViewHolder;

    iget-object v0, v0, Lcn/bingoogolapple/baseadapter/BGARecyclerViewHolder;->mOnRVItemClickListener:Lcn/bingoogolapple/baseadapter/BGAOnRVItemClickListener;

    iget-object v1, p0, Lcn/bingoogolapple/baseadapter/BGARecyclerViewHolder$1;->this$0:Lcn/bingoogolapple/baseadapter/BGARecyclerViewHolder;

    iget-object v1, v1, Lcn/bingoogolapple/baseadapter/BGARecyclerViewHolder;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcn/bingoogolapple/baseadapter/BGARecyclerViewHolder$1;->this$0:Lcn/bingoogolapple/baseadapter/BGARecyclerViewHolder;

    invoke-virtual {v2}, Lcn/bingoogolapple/baseadapter/BGARecyclerViewHolder;->getAdapterPositionWrapper()I

    move-result v2

    invoke-interface {v0, v1, p1, v2}, Lcn/bingoogolapple/baseadapter/BGAOnRVItemClickListener;->onRVItemClick(Landroid/view/ViewGroup;Landroid/view/View;I)V

    :cond_0
    return-void
.end method
