.class public Lcom/living/emo/adapter/LightListAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "LightListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/living/emo/adapter/LightListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field mLightContainer:Landroid/widget/LinearLayout;

.field mLightNumIv:Landroid/widget/TextView;

.field mLightOnIv:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/living/emo/adapter/LightListAdapter;


# direct methods
.method public constructor <init>(Lcom/living/emo/adapter/LightListAdapter;Landroid/view/View;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/living/emo/adapter/LightListAdapter$ViewHolder;->this$0:Lcom/living/emo/adapter/LightListAdapter;

    .line 155
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f09027a

    .line 156
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/living/emo/adapter/LightListAdapter$ViewHolder;->mLightContainer:Landroid/widget/LinearLayout;

    const p1, 0x7f09027c

    .line 157
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/living/emo/adapter/LightListAdapter$ViewHolder;->mLightOnIv:Landroid/widget/ImageView;

    const p1, 0x7f09027b

    .line 158
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/living/emo/adapter/LightListAdapter$ViewHolder;->mLightNumIv:Landroid/widget/TextView;

    return-void
.end method
