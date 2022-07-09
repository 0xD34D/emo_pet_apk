.class public Lcn/bingoogolapple/baseadapter/BGAViewBindingAdapter;
.super Ljava/lang/Object;
.source "BGAViewBindingAdapter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onNoDoubleClick(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 31
    new-instance v0, Lcn/bingoogolapple/baseadapter/BGAViewBindingAdapter$1;

    invoke-direct {v0, p1}, Lcn/bingoogolapple/baseadapter/BGAViewBindingAdapter$1;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
