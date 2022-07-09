.class public Lcom/living/emo/fragment/InterConnectFragment;
.super Landroidx/fragment/app/Fragment;
.source "InterConnectFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/living/emo/fragment/InterConnectFragment$OnClickListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "InterConnectFragment"


# instance fields
.field private interConnect:Landroid/view/View;

.field private onClickListener:Lcom/living/emo/fragment/InterConnectFragment$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/living/emo/fragment/InterConnectFragment;)Lcom/living/emo/fragment/InterConnectFragment$OnClickListener;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/living/emo/fragment/InterConnectFragment;->onClickListener:Lcom/living/emo/fragment/InterConnectFragment$OnClickListener;

    return-object p0
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 22
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 23
    check-cast p1, Lcom/living/emo/fragment/InterConnectFragment$OnClickListener;

    iput-object p1, p0, Lcom/living/emo/fragment/InterConnectFragment;->onClickListener:Lcom/living/emo/fragment/InterConnectFragment$OnClickListener;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 29
    iget-object p3, p0, Lcom/living/emo/fragment/InterConnectFragment;->interConnect:Landroid/view/View;

    if-nez p3, :cond_0

    const p3, 0x7f0c006b

    const/4 v0, 0x0

    .line 30
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/living/emo/fragment/InterConnectFragment;->interConnect:Landroid/view/View;

    .line 34
    :cond_0
    iget-object p1, p0, Lcom/living/emo/fragment/InterConnectFragment;->interConnect:Landroid/view/View;

    const p2, 0x7f0902c5

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 35
    new-instance p2, Lcom/living/emo/fragment/InterConnectFragment$1;

    invoke-direct {p2, p0}, Lcom/living/emo/fragment/InterConnectFragment$1;-><init>(Lcom/living/emo/fragment/InterConnectFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    iget-object p1, p0, Lcom/living/emo/fragment/InterConnectFragment;->interConnect:Landroid/view/View;

    return-object p1
.end method
