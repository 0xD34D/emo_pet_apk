.class public Lcom/living/emo/fragment/NavToolFragment_ViewBinding;
.super Ljava/lang/Object;
.source "NavToolFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/living/emo/fragment/NavToolFragment;


# direct methods
.method public constructor <init>(Lcom/living/emo/fragment/NavToolFragment;Landroid/view/View;)V
    .locals 3

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/living/emo/fragment/NavToolFragment_ViewBinding;->target:Lcom/living/emo/fragment/NavToolFragment;

    .line 22
    const-class v0, Landroid/widget/RadioGroup;

    const v1, 0x7f09020d

    const-string v2, "field \'mRadioGroup\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p1, Lcom/living/emo/fragment/NavToolFragment;->mRadioGroup:Landroid/widget/RadioGroup;

    .line 23
    const-class v0, Landroid/widget/FrameLayout;

    const v1, 0x7f09020c

    const-string v2, "field \'mFrameLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p1, Lcom/living/emo/fragment/NavToolFragment;->mFrameLayout:Landroid/widget/FrameLayout;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/living/emo/fragment/NavToolFragment_ViewBinding;->target:Lcom/living/emo/fragment/NavToolFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 31
    iput-object v1, p0, Lcom/living/emo/fragment/NavToolFragment_ViewBinding;->target:Lcom/living/emo/fragment/NavToolFragment;

    .line 33
    iput-object v1, v0, Lcom/living/emo/fragment/NavToolFragment;->mRadioGroup:Landroid/widget/RadioGroup;

    .line 34
    iput-object v1, v0, Lcom/living/emo/fragment/NavToolFragment;->mFrameLayout:Landroid/widget/FrameLayout;

    return-void

    .line 30
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
