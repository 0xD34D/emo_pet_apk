.class Lcn/bingoogolapple/baseadapter/BGAEmptyView$1;
.super Lcn/bingoogolapple/baseadapter/BGAOnNoDoubleClickListener;
.source "BGAEmptyView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/bingoogolapple/baseadapter/BGAEmptyView;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/bingoogolapple/baseadapter/BGAEmptyView;


# direct methods
.method constructor <init>(Lcn/bingoogolapple/baseadapter/BGAEmptyView;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcn/bingoogolapple/baseadapter/BGAEmptyView$1;->this$0:Lcn/bingoogolapple/baseadapter/BGAEmptyView;

    invoke-direct {p0}, Lcn/bingoogolapple/baseadapter/BGAOnNoDoubleClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoDoubleClick(Landroid/view/View;)V
    .locals 1

    .line 75
    iget-object p1, p0, Lcn/bingoogolapple/baseadapter/BGAEmptyView$1;->this$0:Lcn/bingoogolapple/baseadapter/BGAEmptyView;

    invoke-static {p1}, Lcn/bingoogolapple/baseadapter/BGAEmptyView;->access$000(Lcn/bingoogolapple/baseadapter/BGAEmptyView;)Lcn/bingoogolapple/baseadapter/BGAEmptyView$Delegate;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 76
    iget-object p1, p0, Lcn/bingoogolapple/baseadapter/BGAEmptyView$1;->this$0:Lcn/bingoogolapple/baseadapter/BGAEmptyView;

    invoke-static {p1}, Lcn/bingoogolapple/baseadapter/BGAEmptyView;->access$000(Lcn/bingoogolapple/baseadapter/BGAEmptyView;)Lcn/bingoogolapple/baseadapter/BGAEmptyView$Delegate;

    move-result-object p1

    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGAEmptyView$1;->this$0:Lcn/bingoogolapple/baseadapter/BGAEmptyView;

    invoke-interface {p1, v0}, Lcn/bingoogolapple/baseadapter/BGAEmptyView$Delegate;->onClickEmptyView(Lcn/bingoogolapple/baseadapter/BGAEmptyView;)V

    :cond_0
    return-void
.end method
