.class Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter$3;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "BGAHeaderAndFooterAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;

.field final synthetic val$gridLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

.field final synthetic val$spanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;


# direct methods
.method constructor <init>(Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;Landroidx/recyclerview/widget/GridLayoutManager;Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter$3;->this$0:Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;

    iput-object p2, p0, Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter$3;->val$gridLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    iput-object p3, p0, Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter$3;->val$spanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 2

    .line 107
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter$3;->this$0:Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;

    invoke-virtual {v0, p1}, Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;->isHeaderViewOrFooterView(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object p1, p0, Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter$3;->val$gridLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result p1

    return p1

    .line 112
    :cond_0
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter$3;->val$spanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    if-eqz v0, :cond_1

    .line 113
    iget-object v1, p0, Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter$3;->this$0:Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;

    invoke-virtual {v1}, Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;->getHeadersCount()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
