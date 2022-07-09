.class public Lcom/living/emo/adapter/AlertAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "AlertAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/living/emo/adapter/AlertAdapter$OnClickItemListener;,
        Lcom/living/emo/adapter/AlertAdapter$ViewHolder;,
        Lcom/living/emo/adapter/AlertAdapter$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/living/emo/adapter/AlertAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private defaultValue:I

.field private mCallBack:Lcom/living/emo/adapter/AlertAdapter$OnClickItemListener;

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/living/emo/bean/AlarmBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/living/emo/adapter/AlertAdapter;->mData:Ljava/util/List;

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/living/emo/adapter/AlertAdapter;->mCallBack:Lcom/living/emo/adapter/AlertAdapter$OnClickItemListener;

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Lcom/living/emo/adapter/AlertAdapter;->defaultValue:I

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/living/emo/adapter/AlertAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic lambda$onCreateViewHolder$0$AlertAdapter(Landroid/view/View;)V
    .locals 1

    .line 30
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/living/emo/adapter/AlertAdapter$ViewHolder;

    .line 31
    invoke-virtual {p1}, Lcom/living/emo/adapter/AlertAdapter$ViewHolder;->getAdapterPosition()I

    move-result p1

    .line 32
    iput p1, p0, Lcom/living/emo/adapter/AlertAdapter;->defaultValue:I

    .line 33
    iget-object v0, p0, Lcom/living/emo/adapter/AlertAdapter;->mCallBack:Lcom/living/emo/adapter/AlertAdapter$OnClickItemListener;

    if-eqz v0, :cond_0

    .line 34
    invoke-interface {v0, p1}, Lcom/living/emo/adapter/AlertAdapter$OnClickItemListener;->onClickItem(I)V

    .line 36
    :cond_0
    invoke-virtual {p0}, Lcom/living/emo/adapter/AlertAdapter;->notifyDataSetChanged()V

    .line 37
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCreateViewHolder: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/living/emo/adapter/AlertAdapter;->defaultValue:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ee"

    invoke-static {v0, p1}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 19
    check-cast p1, Lcom/living/emo/adapter/AlertAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/living/emo/adapter/AlertAdapter;->onBindViewHolder(Lcom/living/emo/adapter/AlertAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/living/emo/adapter/AlertAdapter$ViewHolder;I)V
    .locals 3

    .line 46
    iget-object v0, p0, Lcom/living/emo/adapter/AlertAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/living/emo/bean/AlarmBean;

    .line 47
    iget v1, p0, Lcom/living/emo/adapter/AlertAdapter;->defaultValue:I

    if-ne p2, v1, :cond_0

    .line 48
    sget-object v1, Lcom/living/emo/adapter/AlertAdapter$State;->PRESS:Lcom/living/emo/adapter/AlertAdapter$State;

    invoke-virtual {v0}, Lcom/living/emo/bean/AlarmBean;->getTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/living/emo/adapter/AlertAdapter$ViewHolder;->updateUi(Lcom/living/emo/adapter/AlertAdapter$State;Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :cond_0
    sget-object v1, Lcom/living/emo/adapter/AlertAdapter$State;->NORMAL:Lcom/living/emo/adapter/AlertAdapter$State;

    invoke-virtual {v0}, Lcom/living/emo/bean/AlarmBean;->getTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/living/emo/adapter/AlertAdapter$ViewHolder;->updateUi(Lcom/living/emo/adapter/AlertAdapter$State;Ljava/lang/String;)V

    .line 52
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "position"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "    data:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/living/emo/bean/AlarmBean;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "alarmBean"

    invoke-static {p2, p1}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/living/emo/adapter/AlertAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/living/emo/adapter/AlertAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/living/emo/adapter/AlertAdapter$ViewHolder;
    .locals 2

    .line 26
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c00d7

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 27
    new-instance p2, Lcom/living/emo/adapter/AlertAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/living/emo/adapter/AlertAdapter$ViewHolder;-><init>(Lcom/living/emo/adapter/AlertAdapter;Landroid/view/View;)V

    .line 28
    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 29
    new-instance v0, Lcom/living/emo/adapter/-$$Lambda$AlertAdapter$A_S0UA2Mhlz7xHIFCrroncpulYw;

    invoke-direct {v0, p0}, Lcom/living/emo/adapter/-$$Lambda$AlertAdapter$A_S0UA2Mhlz7xHIFCrroncpulYw;-><init>(Lcom/living/emo/adapter/AlertAdapter;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method

.method public setAddAlarm(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/living/emo/bean/AlarmBean;",
            ">;)V"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/living/emo/adapter/AlertAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 62
    iget-object v0, p0, Lcom/living/emo/adapter/AlertAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 63
    invoke-virtual {p0}, Lcom/living/emo/adapter/AlertAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setDefaultValue(I)V
    .locals 0

    .line 67
    iput p1, p0, Lcom/living/emo/adapter/AlertAdapter;->defaultValue:I

    .line 68
    invoke-virtual {p0}, Lcom/living/emo/adapter/AlertAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setOnClickItemListener(Lcom/living/emo/adapter/AlertAdapter$OnClickItemListener;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/living/emo/adapter/AlertAdapter;->mCallBack:Lcom/living/emo/adapter/AlertAdapter$OnClickItemListener;

    return-void
.end method
