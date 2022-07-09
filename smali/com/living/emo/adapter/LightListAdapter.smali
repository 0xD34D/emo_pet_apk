.class public Lcom/living/emo/adapter/LightListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "LightListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/living/emo/adapter/LightListAdapter$OnCheckedChangeListener;,
        Lcom/living/emo/adapter/LightListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/living/emo/adapter/LightListAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCallBack:Lcom/living/emo/adapter/LightListAdapter$OnCheckedChangeListener;

.field private mContext:Landroid/content/Context;

.field mData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/living/emo/blebean/response/LightResponse$DataBean$LightBean$StateBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "zxl::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/living/emo/adapter/LightListAdapter;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/living/emo/adapter/LightListAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/living/emo/adapter/LightListAdapter;->mData:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/living/emo/adapter/LightListAdapter;->mCallBack:Lcom/living/emo/adapter/LightListAdapter$OnCheckedChangeListener;

    .line 35
    iput-object p1, p0, Lcom/living/emo/adapter/LightListAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public synthetic lambda$onBindViewHolder$0$LightListAdapter(ILandroid/view/View;)V
    .locals 1

    .line 64
    sget-object p2, Lcom/living/emo/adapter/LightListAdapter;->TAG:Ljava/lang/String;

    const-string v0, "onCheckedChanged: radio_btn_off"

    invoke-static {p2, v0}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object p2, p0, Lcom/living/emo/adapter/LightListAdapter;->mCallBack:Lcom/living/emo/adapter/LightListAdapter$OnCheckedChangeListener;

    if-eqz p2, :cond_0

    .line 66
    invoke-interface {p2, p1}, Lcom/living/emo/adapter/LightListAdapter$OnCheckedChangeListener;->setOnOffLight(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$onBindViewHolder$1$LightListAdapter(ILandroid/view/View;)V
    .locals 0

    .line 74
    iget-object p2, p0, Lcom/living/emo/adapter/LightListAdapter;->mCallBack:Lcom/living/emo/adapter/LightListAdapter$OnCheckedChangeListener;

    if-eqz p2, :cond_0

    .line 75
    invoke-interface {p2, p1}, Lcom/living/emo/adapter/LightListAdapter$OnCheckedChangeListener;->setOnOffLight(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$onBindViewHolder$2$LightListAdapter(ILandroid/view/View;)V
    .locals 0

    .line 81
    iget-object p2, p0, Lcom/living/emo/adapter/LightListAdapter;->mCallBack:Lcom/living/emo/adapter/LightListAdapter$OnCheckedChangeListener;

    invoke-interface {p2, p1}, Lcom/living/emo/adapter/LightListAdapter$OnCheckedChangeListener;->setRename(I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 27
    check-cast p1, Lcom/living/emo/adapter/LightListAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/living/emo/adapter/LightListAdapter;->onBindViewHolder(Lcom/living/emo/adapter/LightListAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/living/emo/adapter/LightListAdapter$ViewHolder;I)V
    .locals 7

    .line 47
    iget-object v0, p1, Lcom/living/emo/adapter/LightListAdapter$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f09027d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 48
    iget-object v1, p1, Lcom/living/emo/adapter/LightListAdapter$ViewHolder;->itemView:Landroid/view/View;

    const v2, 0x7f09025d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 49
    iget-object v2, p1, Lcom/living/emo/adapter/LightListAdapter$ViewHolder;->itemView:Landroid/view/View;

    const v3, 0x7f09025c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    const/4 v3, 0x1

    .line 50
    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 51
    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 53
    iget-object v4, p0, Lcom/living/emo/adapter/LightListAdapter;->mData:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v3

    if-lt v4, p2, :cond_2

    .line 54
    iget-object v4, p1, Lcom/living/emo/adapter/LightListAdapter$ViewHolder;->mLightOnIv:Landroid/widget/ImageView;

    const v5, 0x7f080253

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 55
    iget-object v4, p0, Lcom/living/emo/adapter/LightListAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/living/emo/blebean/response/LightResponse$DataBean$LightBean$StateBean;

    .line 56
    iget-object v5, p1, Lcom/living/emo/adapter/LightListAdapter$ViewHolder;->mLightNumIv:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 57
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 58
    iget-object v0, p1, Lcom/living/emo/adapter/LightListAdapter$ViewHolder;->mLightNumIv:Landroid/widget/TextView;

    invoke-virtual {v4}, Lcom/living/emo/blebean/response/LightResponse$DataBean$LightBean$StateBean;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    invoke-virtual {v4}, Lcom/living/emo/blebean/response/LightResponse$DataBean$LightBean$StateBean;->getOn()I

    move-result v0

    if-ne v0, v3, :cond_0

    const v0, 0x7f080123

    .line 60
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    const v0, 0x7f08011f

    .line 61
    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 62
    invoke-virtual {v1, v6}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 63
    new-instance v0, Lcom/living/emo/adapter/-$$Lambda$LightListAdapter$y03DGTulGdzW-1skBWQHF3aBjNY;

    invoke-direct {v0, p0, p2}, Lcom/living/emo/adapter/-$$Lambda$LightListAdapter$y03DGTulGdzW-1skBWQHF3aBjNY;-><init>(Lcom/living/emo/adapter/LightListAdapter;I)V

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 69
    :cond_0
    invoke-virtual {v4}, Lcom/living/emo/blebean/response/LightResponse$DataBean$LightBean$StateBean;->getOn()I

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f080124

    .line 70
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    const v0, 0x7f08011e

    .line 71
    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 72
    invoke-virtual {v2, v6}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 73
    new-instance v0, Lcom/living/emo/adapter/-$$Lambda$LightListAdapter$NhnlT_w7pULbj936w0b-9SL0ERI;

    invoke-direct {v0, p0, p2}, Lcom/living/emo/adapter/-$$Lambda$LightListAdapter$NhnlT_w7pULbj936w0b-9SL0ERI;-><init>(Lcom/living/emo/adapter/LightListAdapter;I)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    :cond_1
    :goto_0
    iget-object p1, p1, Lcom/living/emo/adapter/LightListAdapter$ViewHolder;->mLightNumIv:Landroid/widget/TextView;

    new-instance v0, Lcom/living/emo/adapter/-$$Lambda$LightListAdapter$PZVjVKOgpD0dRSAPdjFt7fASmn8;

    invoke-direct {v0, p0, p2}, Lcom/living/emo/adapter/-$$Lambda$LightListAdapter$PZVjVKOgpD0dRSAPdjFt7fASmn8;-><init>(Lcom/living/emo/adapter/LightListAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 86
    :cond_2
    iget-object p2, p1, Lcom/living/emo/adapter/LightListAdapter$ViewHolder;->mLightOnIv:Landroid/widget/ImageView;

    const v1, 0x7f080252

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 87
    iget-object p1, p1, Lcom/living/emo/adapter/LightListAdapter$ViewHolder;->mLightNumIv:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 88
    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/living/emo/adapter/LightListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/living/emo/adapter/LightListAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/living/emo/adapter/LightListAdapter$ViewHolder;
    .locals 2

    .line 41
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c00df

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 42
    new-instance p2, Lcom/living/emo/adapter/LightListAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/living/emo/adapter/LightListAdapter$ViewHolder;-><init>(Lcom/living/emo/adapter/LightListAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setLightData(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/living/emo/blebean/response/LightResponse$DataBean$LightBean$StateBean;",
            ">;)V"
        }
    .end annotation

    .line 98
    sget-object v0, Lcom/living/emo/adapter/LightListAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Number of initial lights\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/living/emo/adapter/LightListAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/living/emo/adapter/LightListAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 100
    iget-object v0, p0, Lcom/living/emo/adapter/LightListAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 101
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-eqz p1, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/living/emo/adapter/LightListAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public setOnCheckedChangeListener(Lcom/living/emo/adapter/LightListAdapter$OnCheckedChangeListener;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/living/emo/adapter/LightListAdapter;->mCallBack:Lcom/living/emo/adapter/LightListAdapter$OnCheckedChangeListener;

    return-void
.end method
