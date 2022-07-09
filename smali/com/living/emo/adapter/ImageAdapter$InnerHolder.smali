.class public Lcom/living/emo/adapter/ImageAdapter$InnerHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ImageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/living/emo/adapter/ImageAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InnerHolder"
.end annotation


# instance fields
.field private final mBody:Landroid/widget/ImageView;

.field private final mTitle:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/living/emo/adapter/ImageAdapter;


# direct methods
.method public constructor <init>(Lcom/living/emo/adapter/ImageAdapter;Landroid/view/View;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/living/emo/adapter/ImageAdapter$InnerHolder;->this$0:Lcom/living/emo/adapter/ImageAdapter;

    .line 50
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f09006c

    .line 51
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/living/emo/adapter/ImageAdapter$InnerHolder;->mTitle:Landroid/widget/ImageView;

    const p1, 0x7f09006a

    .line 52
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/living/emo/adapter/ImageAdapter$InnerHolder;->mBody:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic access$000(Lcom/living/emo/adapter/ImageAdapter$InnerHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/living/emo/adapter/ImageAdapter$InnerHolder;->mBody:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/living/emo/adapter/ImageAdapter$InnerHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/living/emo/adapter/ImageAdapter$InnerHolder;->mTitle:Landroid/widget/ImageView;

    return-object p0
.end method
