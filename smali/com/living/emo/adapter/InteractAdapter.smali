.class public Lcom/living/emo/adapter/InteractAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "InteractAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/living/emo/adapter/InteractAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/living/emo/adapter/InteractAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mContext:Landroid/content/Context;

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/living/emo/bean/InteractBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/living/emo/activity/InteractActivity;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/living/emo/bean/InteractBean;",
            ">;",
            "Lcom/living/emo/activity/InteractActivity;",
            ")V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/living/emo/adapter/InteractAdapter;->mData:Ljava/util/List;

    .line 36
    iput-object p1, p0, Lcom/living/emo/adapter/InteractAdapter;->mData:Ljava/util/List;

    .line 37
    iput-object p2, p0, Lcom/living/emo/adapter/InteractAdapter;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method private askForMe(Lcom/living/emo/bean/InteractBean;)V
    .locals 4

    .line 68
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/living/emo/adapter/InteractAdapter;->mActivity:Landroid/app/Activity;

    const v2, 0x7f1100ef

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 69
    iget-object v1, p0, Lcom/living/emo/adapter/InteractAdapter;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0c0057

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0900de

    .line 70
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 71
    invoke-virtual {p1}, Lcom/living/emo/bean/InteractBean;->getImgRes()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    const v2, 0x7f0900dd

    .line 72
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 73
    invoke-virtual {p1}, Lcom/living/emo/bean/InteractBean;->getDetails()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0900e2

    .line 74
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    .line 75
    new-instance v2, Lcom/living/emo/adapter/-$$Lambda$InteractAdapter$_wuiydo9lmDHubtzHd5sxg8pJDs;

    invoke-direct {v2, v0}, Lcom/living/emo/adapter/-$$Lambda$InteractAdapter$_wuiydo9lmDHubtzHd5sxg8pJDs;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {p1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    const/4 p1, 0x1

    .line 79
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 80
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 81
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, 0x44020000    # 520.0f

    .line 83
    invoke-static {v0}, Lcom/youth/banner/util/BannerUtils;->dp2px(F)F

    move-result v0

    float-to-int v0, v0

    const/high16 v1, 0x438d0000    # 282.0f

    invoke-static {v1}, Lcom/youth/banner/util/BannerUtils;->dp2px(F)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/Window;->setLayout(II)V

    return-void
.end method

.method static synthetic lambda$askForMe$1(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    .line 76
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/living/emo/adapter/InteractAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic lambda$onBindViewHolder$0$InteractAdapter(Lcom/living/emo/bean/InteractBean;Landroid/view/View;)V
    .locals 2

    .line 55
    invoke-virtual {p1}, Lcom/living/emo/bean/InteractBean;->getDetails()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    .line 56
    invoke-virtual {p1}, Lcom/living/emo/bean/InteractBean;->getImgRes()I

    move-result p1

    const p2, 0x7f080237

    if-ne p1, p2, :cond_0

    .line 57
    iget-object p1, p0, Lcom/living/emo/adapter/InteractAdapter;->mActivity:Landroid/app/Activity;

    new-instance p2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/living/emo/adapter/InteractAdapter;->mActivity:Landroid/app/Activity;

    const-class v1, Lcom/living/emo/activity/RecognitionActivity;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 60
    :cond_0
    invoke-static {}, Lcom/living/emo/MyApplication;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x0

    const-string v0, "No details"

    invoke-static {p1, v0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 62
    :cond_1
    invoke-direct {p0, p1}, Lcom/living/emo/adapter/InteractAdapter;->askForMe(Lcom/living/emo/bean/InteractBean;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 29
    check-cast p1, Lcom/living/emo/adapter/InteractAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/living/emo/adapter/InteractAdapter;->onBindViewHolder(Lcom/living/emo/adapter/InteractAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/living/emo/adapter/InteractAdapter$ViewHolder;I)V
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/living/emo/adapter/InteractAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/living/emo/bean/InteractBean;

    .line 51
    iget-object v0, p1, Lcom/living/emo/adapter/InteractAdapter$ViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/living/emo/bean/InteractBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-object v0, p1, Lcom/living/emo/adapter/InteractAdapter$ViewHolder;->mImage:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/living/emo/bean/InteractBean;->getImgRes()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 53
    iget-object v0, p1, Lcom/living/emo/adapter/InteractAdapter$ViewHolder;->mDesc:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/living/emo/bean/InteractBean;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    iget-object p1, p1, Lcom/living/emo/adapter/InteractAdapter$ViewHolder;->mDetails:Landroid/widget/ImageButton;

    new-instance v0, Lcom/living/emo/adapter/-$$Lambda$InteractAdapter$hJjq0lrqbH2e2DqZ-mPpHwtKtx0;

    invoke-direct {v0, p0, p2}, Lcom/living/emo/adapter/-$$Lambda$InteractAdapter$hJjq0lrqbH2e2DqZ-mPpHwtKtx0;-><init>(Lcom/living/emo/adapter/InteractAdapter;Lcom/living/emo/bean/InteractBean;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/living/emo/adapter/InteractAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/living/emo/adapter/InteractAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/living/emo/adapter/InteractAdapter$ViewHolder;
    .locals 2

    .line 43
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/living/emo/adapter/InteractAdapter;->mContext:Landroid/content/Context;

    .line 44
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c00dd

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 45
    new-instance p2, Lcom/living/emo/adapter/InteractAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/living/emo/adapter/InteractAdapter$ViewHolder;-><init>(Lcom/living/emo/adapter/InteractAdapter;Landroid/view/View;)V

    return-object p2
.end method
