.class public Lcom/living/emo/adapter/BannerTextAdpter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "BannerTextAdpter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/living/emo/adapter/BannerTextAdpter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field mTextBean:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/living/emo/adapter/BannerTextAdpter;


# direct methods
.method public constructor <init>(Lcom/living/emo/adapter/BannerTextAdpter;Landroid/view/View;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/living/emo/adapter/BannerTextAdpter$ViewHolder;->this$0:Lcom/living/emo/adapter/BannerTextAdpter;

    .line 39
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f090288

    .line 40
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/living/emo/adapter/BannerTextAdpter$ViewHolder;->mTextBean:Landroid/widget/TextView;

    return-void
.end method
