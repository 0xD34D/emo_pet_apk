.class public Lcom/living/emo/adapter/BleDeviceAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "BleDeviceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/living/emo/adapter/BleDeviceAdapter$OnClickListener;,
        Lcom/living/emo/adapter/BleDeviceAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/living/emo/adapter/BleDeviceAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private currPosition:I

.field private listener:Lcom/living/emo/adapter/BleDeviceAdapter$OnClickListener;

.field private mBleDeviceArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/clj/fastble/data/BleDevice;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/living/emo/adapter/BleDeviceAdapter;->mBleDeviceArrayList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/living/emo/adapter/BleDeviceAdapter;->currPosition:I

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/living/emo/adapter/BleDeviceAdapter;->mBleDeviceArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public synthetic lambda$onBindViewHolder$0$BleDeviceAdapter(ILandroid/view/View;)V
    .locals 1

    .line 50
    iput p1, p0, Lcom/living/emo/adapter/BleDeviceAdapter;->currPosition:I

    .line 51
    iget-object p2, p0, Lcom/living/emo/adapter/BleDeviceAdapter;->listener:Lcom/living/emo/adapter/BleDeviceAdapter$OnClickListener;

    if-eqz p2, :cond_0

    .line 52
    iget-object v0, p0, Lcom/living/emo/adapter/BleDeviceAdapter;->mBleDeviceArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/clj/fastble/data/BleDevice;

    invoke-interface {p2, p1}, Lcom/living/emo/adapter/BleDeviceAdapter$OnClickListener;->click(Lcom/clj/fastble/data/BleDevice;)V

    .line 54
    :cond_0
    invoke-virtual {p0}, Lcom/living/emo/adapter/BleDeviceAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 18
    check-cast p1, Lcom/living/emo/adapter/BleDeviceAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/living/emo/adapter/BleDeviceAdapter;->onBindViewHolder(Lcom/living/emo/adapter/BleDeviceAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/living/emo/adapter/BleDeviceAdapter$ViewHolder;I)V
    .locals 3

    .line 41
    iget v0, p0, Lcom/living/emo/adapter/BleDeviceAdapter;->currPosition:I

    if-ne p2, v0, :cond_0

    .line 42
    iget-object v0, p1, Lcom/living/emo/adapter/BleDeviceAdapter$ViewHolder;->mBleName:Landroid/widget/TextView;

    const v1, 0x7f08015a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 43
    iget-object v0, p1, Lcom/living/emo/adapter/BleDeviceAdapter$ViewHolder;->mBleName:Landroid/widget/TextView;

    invoke-static {}, Lcom/living/emo/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600d2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 45
    :cond_0
    iget-object v0, p1, Lcom/living/emo/adapter/BleDeviceAdapter$ViewHolder;->mBleName:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 46
    iget-object v0, p1, Lcom/living/emo/adapter/BleDeviceAdapter$ViewHolder;->mBleName:Landroid/widget/TextView;

    invoke-static {}, Lcom/living/emo/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600d1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 48
    :goto_0
    iget-object v0, p1, Lcom/living/emo/adapter/BleDeviceAdapter$ViewHolder;->mBleName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/living/emo/adapter/BleDeviceAdapter;->mBleDeviceArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/clj/fastble/data/BleDevice;

    invoke-virtual {v1}, Lcom/clj/fastble/data/BleDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-object p1, p1, Lcom/living/emo/adapter/BleDeviceAdapter$ViewHolder;->mBleName:Landroid/widget/TextView;

    new-instance v0, Lcom/living/emo/adapter/-$$Lambda$BleDeviceAdapter$MIoE1EwZ948AJLd4H1fUTc3iHKE;

    invoke-direct {v0, p0, p2}, Lcom/living/emo/adapter/-$$Lambda$BleDeviceAdapter$MIoE1EwZ948AJLd4H1fUTc3iHKE;-><init>(Lcom/living/emo/adapter/BleDeviceAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/living/emo/adapter/BleDeviceAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/living/emo/adapter/BleDeviceAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/living/emo/adapter/BleDeviceAdapter$ViewHolder;
    .locals 2

    .line 28
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c00d8

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 29
    new-instance p2, Lcom/living/emo/adapter/BleDeviceAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/living/emo/adapter/BleDeviceAdapter$ViewHolder;-><init>(Lcom/living/emo/adapter/BleDeviceAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setOnClickListener(Lcom/living/emo/adapter/BleDeviceAdapter$OnClickListener;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/living/emo/adapter/BleDeviceAdapter;->listener:Lcom/living/emo/adapter/BleDeviceAdapter$OnClickListener;

    return-void
.end method

.method public update(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/clj/fastble/data/BleDevice;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lcom/living/emo/adapter/BleDeviceAdapter;->currPosition:I

    .line 34
    iget-object v0, p0, Lcom/living/emo/adapter/BleDeviceAdapter;->mBleDeviceArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 35
    iget-object v0, p0, Lcom/living/emo/adapter/BleDeviceAdapter;->mBleDeviceArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 36
    invoke-virtual {p0}, Lcom/living/emo/adapter/BleDeviceAdapter;->notifyDataSetChanged()V

    return-void
.end method
