.class public Lcom/living/emo/adapter/NotificationsAdapter;
.super Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;
.source "NotificationsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter<",
        "Lcom/living/emo/bean/Notice$DataBean$ArticleBean;",
        ">;"
    }
.end annotation


# instance fields
.field private currIndex:I


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    const v0, 0x7f0c0091

    .line 26
    invoke-direct {p0, p1, v0}, Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;-><init>(Landroidx/recyclerview/widget/RecyclerView;I)V

    const/4 p1, 0x0

    .line 19
    iput p1, p0, Lcom/living/emo/adapter/NotificationsAdapter;->currIndex:I

    return-void
.end method


# virtual methods
.method protected fillData(Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;ILcom/living/emo/bean/Notice$DataBean$ArticleBean;)V
    .locals 7

    .line 34
    invoke-virtual {p3}, Lcom/living/emo/bean/Notice$DataBean$ArticleBean;->getTitle()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090284

    invoke-virtual {p1, v1, v0}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setText(ILjava/lang/CharSequence;)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 35
    invoke-virtual {p3}, Lcom/living/emo/bean/Notice$DataBean$ArticleBean;->getSub_title()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090283

    invoke-virtual {p1, v1, v0}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setText(ILjava/lang/CharSequence;)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 37
    invoke-virtual {p1}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->getConvertView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/bingoogolapple/badgeview/BGABadgeRelativeLayout;

    .line 38
    invoke-virtual {p1}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->getRecyclerViewHolder()Lcn/bingoogolapple/baseadapter/BGARecyclerViewHolder;

    move-result-object v1

    const/4 v2, 0x0

    .line 39
    invoke-virtual {v1, v2}, Lcn/bingoogolapple/baseadapter/BGARecyclerViewHolder;->setIsRecyclable(Z)V

    const v1, 0x7f090273

    .line 40
    invoke-virtual {v0, v1}, Lcn/bingoogolapple/badgeview/BGABadgeRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    const v4, 0x7f090287

    .line 41
    invoke-virtual {v0, v4}, Lcn/bingoogolapple/badgeview/BGABadgeRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f090282

    .line 42
    invoke-virtual {v0, v5}, Lcn/bingoogolapple/badgeview/BGABadgeRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f090281

    .line 43
    invoke-virtual {v0, v6}, Lcn/bingoogolapple/badgeview/BGABadgeRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 44
    invoke-virtual {p1, v1}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setItemChildClickListener(I)V

    .line 45
    iget p1, p0, Lcom/living/emo/adapter/NotificationsAdapter;->currIndex:I

    const/16 v1, 0x8

    if-ne p2, p1, :cond_0

    const p1, 0x7f080299

    .line 46
    invoke-virtual {v3, p1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 47
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 48
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 49
    invoke-virtual {v6, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 52
    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    .line 53
    invoke-virtual {v6, v2}, Landroid/view/View;->setVisibility(I)V

    .line 55
    :goto_0
    invoke-virtual {p3}, Lcom/living/emo/bean/Notice$DataBean$ArticleBean;->isIsnew()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "NEW"

    .line 56
    invoke-virtual {v0, p1}, Lcn/bingoogolapple/badgeview/BGABadgeRelativeLayout;->showTextBadge(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected bridge synthetic fillData(Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;ILjava/lang/Object;)V
    .locals 0

    .line 16
    check-cast p3, Lcom/living/emo/bean/Notice$DataBean$ArticleBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/living/emo/adapter/NotificationsAdapter;->fillData(Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;ILcom/living/emo/bean/Notice$DataBean$ArticleBean;)V

    return-void
.end method

.method public setCurrIndex(I)V
    .locals 0

    .line 22
    iput p1, p0, Lcom/living/emo/adapter/NotificationsAdapter;->currIndex:I

    return-void
.end method
