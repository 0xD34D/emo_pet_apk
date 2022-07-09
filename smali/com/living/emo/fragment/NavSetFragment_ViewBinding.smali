.class public Lcom/living/emo/fragment/NavSetFragment_ViewBinding;
.super Ljava/lang/Object;
.source "NavSetFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/living/emo/fragment/NavSetFragment;


# direct methods
.method public constructor <init>(Lcom/living/emo/fragment/NavSetFragment;Landroid/view/View;)V
    .locals 3

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/living/emo/fragment/NavSetFragment_ViewBinding;->target:Lcom/living/emo/fragment/NavSetFragment;

    .line 23
    const-class v0, Landroid/widget/FrameLayout;

    const v1, 0x7f09020c

    const-string v2, "field \'mFrameLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/living/emo/fragment/NavSetFragment;->mFrameLayout:Landroid/widget/FrameLayout;

    .line 24
    const-class v0, Landroid/widget/RadioGroup;

    const v1, 0x7f09020d

    const-string v2, "field \'mRadioGroup\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p1, Lcom/living/emo/fragment/NavSetFragment;->mRadioGroup:Landroid/widget/RadioGroup;

    .line 25
    const-class v0, Landroid/widget/RadioButton;

    const v1, 0x7f0902c8

    const-string v2, "field \'mPreference\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioButton;

    iput-object p2, p1, Lcom/living/emo/fragment/NavSetFragment;->mPreference:Landroid/widget/RadioButton;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/living/emo/fragment/NavSetFragment_ViewBinding;->target:Lcom/living/emo/fragment/NavSetFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 33
    iput-object v1, p0, Lcom/living/emo/fragment/NavSetFragment_ViewBinding;->target:Lcom/living/emo/fragment/NavSetFragment;

    .line 35
    iput-object v1, v0, Lcom/living/emo/fragment/NavSetFragment;->mFrameLayout:Landroid/widget/FrameLayout;

    .line 36
    iput-object v1, v0, Lcom/living/emo/fragment/NavSetFragment;->mRadioGroup:Landroid/widget/RadioGroup;

    .line 37
    iput-object v1, v0, Lcom/living/emo/fragment/NavSetFragment;->mPreference:Landroid/widget/RadioButton;

    return-void

    .line 32
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
