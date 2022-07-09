.class public Lcom/living/emo/adapter/DiscMusicAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "DiscMusicAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/living/emo/adapter/DiscMusicAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field public final mTitle:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/living/emo/adapter/DiscMusicAdapter;


# direct methods
.method public constructor <init>(Lcom/living/emo/adapter/DiscMusicAdapter;Landroid/view/View;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/living/emo/adapter/DiscMusicAdapter$ViewHolder;->this$0:Lcom/living/emo/adapter/DiscMusicAdapter;

    .line 66
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f090278

    .line 67
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/living/emo/adapter/DiscMusicAdapter$ViewHolder;->mTitle:Landroid/widget/TextView;

    return-void
.end method
