.class Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper$1;
.super Lcn/bingoogolapple/baseadapter/BGAOnNoDoubleClickListener;
.source "BGAViewHolderHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setItemChildClickListener(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;


# direct methods
.method constructor <init>(Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper$1;->this$0:Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    invoke-direct {p0}, Lcn/bingoogolapple/baseadapter/BGAOnNoDoubleClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoDoubleClick(Landroid/view/View;)V
    .locals 3

    .line 113
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper$1;->this$0:Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    iget-object v0, v0, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->mOnItemChildClickListener:Lcn/bingoogolapple/baseadapter/BGAOnItemChildClickListener;

    if-eqz v0, :cond_1

    .line 114
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper$1;->this$0:Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    iget-object v0, v0, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper$1;->this$0:Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    iget-object v0, v0, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->mOnItemChildClickListener:Lcn/bingoogolapple/baseadapter/BGAOnItemChildClickListener;

    iget-object v1, p0, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper$1;->this$0:Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    iget-object v1, v1, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper$1;->this$0:Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    invoke-virtual {v2}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->getPosition()I

    move-result v2

    invoke-interface {v0, v1, p1, v2}, Lcn/bingoogolapple/baseadapter/BGAOnItemChildClickListener;->onItemChildClick(Landroid/view/ViewGroup;Landroid/view/View;I)V

    goto :goto_0

    .line 116
    :cond_0
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper$1;->this$0:Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    iget-object v0, v0, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->mAdapterView:Landroid/widget/AdapterView;

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper$1;->this$0:Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    iget-object v0, v0, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->mOnItemChildClickListener:Lcn/bingoogolapple/baseadapter/BGAOnItemChildClickListener;

    iget-object v1, p0, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper$1;->this$0:Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    iget-object v1, v1, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->mAdapterView:Landroid/widget/AdapterView;

    iget-object v2, p0, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper$1;->this$0:Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    invoke-virtual {v2}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->getPosition()I

    move-result v2

    invoke-interface {v0, v1, p1, v2}, Lcn/bingoogolapple/baseadapter/BGAOnItemChildClickListener;->onItemChildClick(Landroid/view/ViewGroup;Landroid/view/View;I)V

    :cond_1
    :goto_0
    return-void
.end method
