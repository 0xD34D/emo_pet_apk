.class public Lcom/living/emo/adapter/AlertAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "AlertAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/living/emo/adapter/AlertAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field public mNormalCon:Landroid/widget/LinearLayout;

.field public mNormalText:Landroid/widget/TextView;

.field public mPressCon:Landroid/widget/LinearLayout;

.field public mPressText:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/living/emo/adapter/AlertAdapter;


# direct methods
.method public constructor <init>(Lcom/living/emo/adapter/AlertAdapter;Landroid/view/View;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/living/emo/adapter/AlertAdapter$ViewHolder;->this$0:Lcom/living/emo/adapter/AlertAdapter;

    .line 83
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f090051

    .line 84
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/living/emo/adapter/AlertAdapter$ViewHolder;->mNormalCon:Landroid/widget/LinearLayout;

    const p1, 0x7f090052

    .line 85
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/living/emo/adapter/AlertAdapter$ViewHolder;->mPressCon:Landroid/widget/LinearLayout;

    const p1, 0x7f090055

    .line 86
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/living/emo/adapter/AlertAdapter$ViewHolder;->mNormalText:Landroid/widget/TextView;

    const p1, 0x7f090056

    .line 87
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/living/emo/adapter/AlertAdapter$ViewHolder;->mPressText:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public updateUi(Lcom/living/emo/adapter/AlertAdapter$State;Ljava/lang/String;)V
    .locals 3

    .line 92
    sget-object v0, Lcom/living/emo/adapter/AlertAdapter$State;->NORMAL:Lcom/living/emo/adapter/AlertAdapter$State;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    .line 93
    iget-object p1, p0, Lcom/living/emo/adapter/AlertAdapter$ViewHolder;->mNormalCon:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 94
    iget-object p1, p0, Lcom/living/emo/adapter/AlertAdapter$ViewHolder;->mPressCon:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 95
    iget-object p1, p0, Lcom/living/emo/adapter/AlertAdapter$ViewHolder;->mNormalText:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 96
    :cond_0
    sget-object v0, Lcom/living/emo/adapter/AlertAdapter$State;->PRESS:Lcom/living/emo/adapter/AlertAdapter$State;

    if-ne p1, v0, :cond_1

    .line 97
    iget-object p1, p0, Lcom/living/emo/adapter/AlertAdapter$ViewHolder;->mNormalCon:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 98
    iget-object p1, p0, Lcom/living/emo/adapter/AlertAdapter$ViewHolder;->mPressCon:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 99
    iget-object p1, p0, Lcom/living/emo/adapter/AlertAdapter$ViewHolder;->mPressText:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method
