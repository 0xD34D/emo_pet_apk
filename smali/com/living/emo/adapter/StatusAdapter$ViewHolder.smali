.class public Lcom/living/emo/adapter/StatusAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "StatusAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/living/emo/adapter/StatusAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field mRela:Landroid/widget/RelativeLayout;

.field mText:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/living/emo/adapter/StatusAdapter;


# direct methods
.method public constructor <init>(Lcom/living/emo/adapter/StatusAdapter;Landroid/view/View;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/living/emo/adapter/StatusAdapter$ViewHolder;->this$0:Lcom/living/emo/adapter/StatusAdapter;

    .line 52
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f090270

    .line 53
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/living/emo/adapter/StatusAdapter$ViewHolder;->mText:Landroid/widget/TextView;

    const p1, 0x7f090262

    .line 54
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/living/emo/adapter/StatusAdapter$ViewHolder;->mRela:Landroid/widget/RelativeLayout;

    return-void
.end method
