.class public Lcom/living/emo/adapter/RecognitionAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "RecognitionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/living/emo/adapter/RecognitionAdapter$onItemClickListener;,
        Lcom/living/emo/adapter/RecognitionAdapter$ViewHolder;,
        Lcom/living/emo/adapter/RecognitionAdapter$AddViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final FACE_ADD:I = 0x0

.field private static final FACE_PEOPLE:I = 0x1


# instance fields
.field private currPosition:I

.field private mData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/living/emo/bean/RecognitionBean;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/living/emo/adapter/RecognitionAdapter$onItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/living/emo/adapter/RecognitionAdapter;->mData:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/living/emo/adapter/RecognitionAdapter;->mListener:Lcom/living/emo/adapter/RecognitionAdapter$onItemClickListener;

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lcom/living/emo/adapter/RecognitionAdapter;->currPosition:I

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/living/emo/adapter/RecognitionAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public synthetic lambda$onBindViewHolder$0$RecognitionAdapter(ILandroid/view/View;)V
    .locals 1

    .line 46
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "AddViewHolder: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TAG"

    invoke-static {p2, p1}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iget-object p1, p0, Lcom/living/emo/adapter/RecognitionAdapter;->mListener:Lcom/living/emo/adapter/RecognitionAdapter$onItemClickListener;

    if-eqz p1, :cond_0

    .line 48
    iget-object p2, p0, Lcom/living/emo/adapter/RecognitionAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-interface {p1, p2}, Lcom/living/emo/adapter/RecognitionAdapter$onItemClickListener;->addClick(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$onBindViewHolder$1$RecognitionAdapter(ILcom/living/emo/bean/RecognitionBean;Landroid/view/View;)V
    .locals 0

    .line 64
    iput p1, p0, Lcom/living/emo/adapter/RecognitionAdapter;->currPosition:I

    .line 65
    invoke-virtual {p0}, Lcom/living/emo/adapter/RecognitionAdapter;->notifyDataSetChanged()V

    .line 66
    iget-object p3, p0, Lcom/living/emo/adapter/RecognitionAdapter;->mListener:Lcom/living/emo/adapter/RecognitionAdapter$onItemClickListener;

    if-eqz p3, :cond_0

    .line 67
    invoke-interface {p3, p2}, Lcom/living/emo/adapter/RecognitionAdapter$onItemClickListener;->ViewClick(Lcom/living/emo/bean/RecognitionBean;)V

    .line 69
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "ViewHolder: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TAG"

    invoke-static {p2, p1}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 5

    .line 44
    instance-of v0, p1, Lcom/living/emo/adapter/RecognitionAdapter$AddViewHolder;

    if-eqz v0, :cond_0

    .line 45
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/living/emo/adapter/-$$Lambda$RecognitionAdapter$OoK_HSRuzxRRCue0H_kdj4MnXkQ;

    invoke-direct {v0, p0, p2}, Lcom/living/emo/adapter/-$$Lambda$RecognitionAdapter$OoK_HSRuzxRRCue0H_kdj4MnXkQ;-><init>(Lcom/living/emo/adapter/RecognitionAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 51
    :cond_0
    instance-of v0, p1, Lcom/living/emo/adapter/RecognitionAdapter$ViewHolder;

    if-eqz v0, :cond_3

    .line 52
    iget v0, p0, Lcom/living/emo/adapter/RecognitionAdapter;->currPosition:I

    if-ne v0, p2, :cond_1

    .line 53
    move-object v0, p1

    check-cast v0, Lcom/living/emo/adapter/RecognitionAdapter$ViewHolder;

    iget-object v0, v0, Lcom/living/emo/adapter/RecognitionAdapter$ViewHolder;->mFaceName:Landroid/widget/TextView;

    const v1, 0x7f0802ed

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 55
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/living/emo/adapter/RecognitionAdapter$ViewHolder;

    iget-object v0, v0, Lcom/living/emo/adapter/RecognitionAdapter$ViewHolder;->mFaceName:Landroid/widget/TextView;

    const v1, 0x7f0802ec

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 57
    :goto_0
    iget-object v0, p0, Lcom/living/emo/adapter/RecognitionAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/living/emo/bean/RecognitionBean;

    .line 58
    invoke-virtual {v0}, Lcom/living/emo/bean/RecognitionBean;->getName()Ljava/lang/String;

    move-result-object v1

    .line 59
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xc

    if-le v2, v3, :cond_2

    .line 60
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    const/16 v4, 0x9

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "..."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 62
    :cond_2
    move-object v2, p1

    check-cast v2, Lcom/living/emo/adapter/RecognitionAdapter$ViewHolder;

    iget-object v2, v2, Lcom/living/emo/adapter/RecognitionAdapter$ViewHolder;->mFaceName:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/living/emo/adapter/-$$Lambda$RecognitionAdapter$v7g7NCV7HrdHmfPVaWy5h_rpDMc;

    invoke-direct {v1, p0, p2, v0}, Lcom/living/emo/adapter/-$$Lambda$RecognitionAdapter$v7g7NCV7HrdHmfPVaWy5h_rpDMc;-><init>(Lcom/living/emo/adapter/RecognitionAdapter;ILcom/living/emo/bean/RecognitionBean;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "viewType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tag"

    invoke-static {v1, v0}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 34
    new-instance p2, Lcom/living/emo/adapter/RecognitionAdapter$AddViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f0c00db

    invoke-static {p1, v1, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/living/emo/adapter/RecognitionAdapter$AddViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    .line 36
    :cond_0
    new-instance p2, Lcom/living/emo/adapter/RecognitionAdapter$ViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f0c00dc

    invoke-static {p1, v1, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/living/emo/adapter/RecognitionAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public setData(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/living/emo/bean/RecognitionBean;",
            ">;)V"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/living/emo/adapter/RecognitionAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 82
    iget-object v0, p0, Lcom/living/emo/adapter/RecognitionAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 p1, 0x0

    .line 83
    iput p1, p0, Lcom/living/emo/adapter/RecognitionAdapter;->currPosition:I

    .line 84
    invoke-virtual {p0}, Lcom/living/emo/adapter/RecognitionAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setOnItemClickListener(Lcom/living/emo/adapter/RecognitionAdapter$onItemClickListener;)V
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/living/emo/adapter/RecognitionAdapter;->mListener:Lcom/living/emo/adapter/RecognitionAdapter$onItemClickListener;

    if-nez v0, :cond_0

    .line 114
    iput-object p1, p0, Lcom/living/emo/adapter/RecognitionAdapter;->mListener:Lcom/living/emo/adapter/RecognitionAdapter$onItemClickListener;

    :cond_0
    return-void
.end method
