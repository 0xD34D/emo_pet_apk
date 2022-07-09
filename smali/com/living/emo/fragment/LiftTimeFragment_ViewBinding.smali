.class public Lcom/living/emo/fragment/LiftTimeFragment_ViewBinding;
.super Ljava/lang/Object;
.source "LiftTimeFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/living/emo/fragment/LiftTimeFragment;


# direct methods
.method public constructor <init>(Lcom/living/emo/fragment/LiftTimeFragment;Landroid/view/View;)V
    .locals 3

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/living/emo/fragment/LiftTimeFragment_ViewBinding;->target:Lcom/living/emo/fragment/LiftTimeFragment;

    .line 21
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0901ba

    const-string v2, "field \'mDanceList\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/living/emo/fragment/LiftTimeFragment;->mDanceList:Landroid/widget/ImageView;

    .line 22
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0901b7

    const-string v2, "field \'mAchievment\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/living/emo/fragment/LiftTimeFragment;->mAchievment:Landroid/widget/ImageView;

    .line 23
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0901bd

    const-string v2, "field \'mUpcoming\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p1, Lcom/living/emo/fragment/LiftTimeFragment;->mUpcoming:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/living/emo/fragment/LiftTimeFragment_ViewBinding;->target:Lcom/living/emo/fragment/LiftTimeFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 31
    iput-object v1, p0, Lcom/living/emo/fragment/LiftTimeFragment_ViewBinding;->target:Lcom/living/emo/fragment/LiftTimeFragment;

    .line 33
    iput-object v1, v0, Lcom/living/emo/fragment/LiftTimeFragment;->mDanceList:Landroid/widget/ImageView;

    .line 34
    iput-object v1, v0, Lcom/living/emo/fragment/LiftTimeFragment;->mAchievment:Landroid/widget/ImageView;

    .line 35
    iput-object v1, v0, Lcom/living/emo/fragment/LiftTimeFragment;->mUpcoming:Landroid/widget/ImageView;

    return-void

    .line 30
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
