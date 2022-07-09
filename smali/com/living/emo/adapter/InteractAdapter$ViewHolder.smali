.class public Lcom/living/emo/adapter/InteractAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "InteractAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/living/emo/adapter/InteractAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field public mDesc:Landroid/widget/TextView;

.field public mDetails:Landroid/widget/ImageButton;

.field public mImage:Landroid/widget/ImageView;

.field public mTitle:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/living/emo/adapter/InteractAdapter;


# direct methods
.method public constructor <init>(Lcom/living/emo/adapter/InteractAdapter;Landroid/view/View;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/living/emo/adapter/InteractAdapter$ViewHolder;->this$0:Lcom/living/emo/adapter/InteractAdapter;

    .line 99
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f090190

    .line 100
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/living/emo/adapter/InteractAdapter$ViewHolder;->mTitle:Landroid/widget/TextView;

    const p1, 0x7f09018f

    .line 101
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/living/emo/adapter/InteractAdapter$ViewHolder;->mImage:Landroid/widget/ImageView;

    const p1, 0x7f09018d

    .line 102
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/living/emo/adapter/InteractAdapter$ViewHolder;->mDesc:Landroid/widget/TextView;

    const p1, 0x7f09018e

    .line 103
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/living/emo/adapter/InteractAdapter$ViewHolder;->mDetails:Landroid/widget/ImageButton;

    return-void
.end method
