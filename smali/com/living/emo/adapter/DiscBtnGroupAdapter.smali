.class public Lcom/living/emo/adapter/DiscBtnGroupAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "DiscBtnGroupAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/living/emo/adapter/DiscBtnGroupAdapter$OnClickListener;,
        Lcom/living/emo/adapter/DiscBtnGroupAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/living/emo/adapter/DiscBtnGroupAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private listener:Lcom/living/emo/adapter/DiscBtnGroupAdapter$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "zxl::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/living/emo/adapter/DiscBtnGroupAdapter;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/living/emo/adapter/DiscBtnGroupAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/living/emo/adapter/DiscBtnGroupAdapter;->listener:Lcom/living/emo/adapter/DiscBtnGroupAdapter$OnClickListener;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method public synthetic lambda$onBindViewHolder$0$DiscBtnGroupAdapter(ILandroid/view/View;)V
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/living/emo/adapter/DiscBtnGroupAdapter;->listener:Lcom/living/emo/adapter/DiscBtnGroupAdapter$OnClickListener;

    if-eqz v0, :cond_0

    .line 30
    invoke-interface {v0, p2, p1}, Lcom/living/emo/adapter/DiscBtnGroupAdapter$OnClickListener;->onClick(Landroid/view/View;I)V

    .line 31
    sget-object p2, Lcom/living/emo/adapter/DiscBtnGroupAdapter;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBindViewHolder:-----> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 14
    check-cast p1, Lcom/living/emo/adapter/DiscBtnGroupAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/living/emo/adapter/DiscBtnGroupAdapter;->onBindViewHolder(Lcom/living/emo/adapter/DiscBtnGroupAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/living/emo/adapter/DiscBtnGroupAdapter$ViewHolder;I)V
    .locals 1

    .line 27
    iget-object p1, p1, Lcom/living/emo/adapter/DiscBtnGroupAdapter$ViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f090275

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 28
    new-instance v0, Lcom/living/emo/adapter/-$$Lambda$DiscBtnGroupAdapter$DiIckZcZsPAsG8tCcoAUcBxr1Ps;

    invoke-direct {v0, p0, p2}, Lcom/living/emo/adapter/-$$Lambda$DiscBtnGroupAdapter$DiIckZcZsPAsG8tCcoAUcBxr1Ps;-><init>(Lcom/living/emo/adapter/DiscBtnGroupAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/living/emo/adapter/DiscBtnGroupAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/living/emo/adapter/DiscBtnGroupAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/living/emo/adapter/DiscBtnGroupAdapter$ViewHolder;
    .locals 2

    .line 21
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c00d9

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 22
    new-instance p2, Lcom/living/emo/adapter/DiscBtnGroupAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/living/emo/adapter/DiscBtnGroupAdapter$ViewHolder;-><init>(Lcom/living/emo/adapter/DiscBtnGroupAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setOnclickListener(Lcom/living/emo/adapter/DiscBtnGroupAdapter$OnClickListener;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/living/emo/adapter/DiscBtnGroupAdapter;->listener:Lcom/living/emo/adapter/DiscBtnGroupAdapter$OnClickListener;

    return-void
.end method
