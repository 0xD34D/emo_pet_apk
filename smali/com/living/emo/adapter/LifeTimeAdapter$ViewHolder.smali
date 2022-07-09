.class public Lcom/living/emo/adapter/LifeTimeAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "LifeTimeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/living/emo/adapter/LifeTimeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field public mImgV:Landroid/widget/ImageView;

.field public notavailablenow:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/living/emo/adapter/LifeTimeAdapter;


# direct methods
.method public constructor <init>(Lcom/living/emo/adapter/LifeTimeAdapter;Landroid/view/View;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/living/emo/adapter/LifeTimeAdapter$ViewHolder;->this$0:Lcom/living/emo/adapter/LifeTimeAdapter;

    .line 78
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f090272

    .line 79
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/living/emo/adapter/LifeTimeAdapter$ViewHolder;->mImgV:Landroid/widget/ImageView;

    const p1, 0x7f090280

    .line 80
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/living/emo/adapter/LifeTimeAdapter$ViewHolder;->notavailablenow:Landroid/widget/ImageView;

    return-void
.end method
