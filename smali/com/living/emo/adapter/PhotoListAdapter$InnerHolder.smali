.class public Lcom/living/emo/adapter/PhotoListAdapter$InnerHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "PhotoListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/living/emo/adapter/PhotoListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InnerHolder"
.end annotation


# instance fields
.field public mImage:Landroid/widget/ImageView;

.field public mTitle:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/living/emo/adapter/PhotoListAdapter;


# direct methods
.method public constructor <init>(Lcom/living/emo/adapter/PhotoListAdapter;Landroid/view/View;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/living/emo/adapter/PhotoListAdapter$InnerHolder;->this$0:Lcom/living/emo/adapter/PhotoListAdapter;

    .line 88
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f090285

    .line 89
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/living/emo/adapter/PhotoListAdapter$InnerHolder;->mImage:Landroid/widget/ImageView;

    const p1, 0x7f090286

    .line 90
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/living/emo/adapter/PhotoListAdapter$InnerHolder;->mTitle:Landroid/widget/TextView;

    return-void
.end method
