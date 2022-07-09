.class final Lcn/bingoogolapple/baseadapter/BGAViewBindingAdapter$1;
.super Lcn/bingoogolapple/baseadapter/BGAOnNoDoubleClickListener;
.source "BGAViewBindingAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/bingoogolapple/baseadapter/BGAViewBindingAdapter;->onNoDoubleClick(Landroid/view/View;Landroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$onClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcn/bingoogolapple/baseadapter/BGAViewBindingAdapter$1;->val$onClickListener:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Lcn/bingoogolapple/baseadapter/BGAOnNoDoubleClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoDoubleClick(Landroid/view/View;)V
    .locals 1

    .line 34
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGAViewBindingAdapter$1;->val$onClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void
.end method
