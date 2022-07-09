.class public Lcom/living/emo/fragment/LightFragment_ViewBinding;
.super Ljava/lang/Object;
.source "LightFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/living/emo/fragment/LightFragment;


# direct methods
.method public constructor <init>(Lcom/living/emo/fragment/LightFragment;Landroid/view/View;)V
    .locals 3

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/living/emo/fragment/LightFragment_ViewBinding;->target:Lcom/living/emo/fragment/LightFragment;

    .line 22
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f090264

    const-string v2, "field \'mLightList\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/living/emo/fragment/LightFragment;->mLightList:Landroidx/recyclerview/widget/RecyclerView;

    .line 23
    const-class v0, Landroid/widget/ImageButton;

    const v1, 0x7f0901ad

    const-string v2, "field \'mRefresh\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p1, Lcom/living/emo/fragment/LightFragment;->mRefresh:Landroid/widget/ImageButton;

    .line 24
    const-class v0, Landroid/widget/ImageButton;

    const v1, 0x7f0901ae

    const-string v2, "field \'mUnbind\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p1, Lcom/living/emo/fragment/LightFragment;->mUnbind:Landroid/widget/ImageButton;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 30
    iget-object v0, p0, Lcom/living/emo/fragment/LightFragment_ViewBinding;->target:Lcom/living/emo/fragment/LightFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 32
    iput-object v1, p0, Lcom/living/emo/fragment/LightFragment_ViewBinding;->target:Lcom/living/emo/fragment/LightFragment;

    .line 34
    iput-object v1, v0, Lcom/living/emo/fragment/LightFragment;->mLightList:Landroidx/recyclerview/widget/RecyclerView;

    .line 35
    iput-object v1, v0, Lcom/living/emo/fragment/LightFragment;->mRefresh:Landroid/widget/ImageButton;

    .line 36
    iput-object v1, v0, Lcom/living/emo/fragment/LightFragment;->mUnbind:Landroid/widget/ImageButton;

    return-void

    .line 31
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
