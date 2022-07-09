.class public Lcom/living/emo/fragment/SettingConnectFragment;
.super Landroidx/fragment/app/Fragment;
.source "SettingConnectFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/living/emo/fragment/SettingConnectFragment$OnChangeFragment;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "SettingConnectFragment"


# instance fields
.field private account:Landroid/widget/EditText;

.field private eye:Landroid/widget/ImageButton;

.field private is_password:Z

.field private mChangeFragment:Lcom/living/emo/fragment/SettingConnectFragment$OnChangeFragment;

.field private password:Landroid/widget/EditText;

.field private setup_back_fragment:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/living/emo/fragment/SettingConnectFragment;->is_password:Z

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 39
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 40
    check-cast p1, Lcom/living/emo/fragment/SettingConnectFragment$OnChangeFragment;

    iput-object p1, p0, Lcom/living/emo/fragment/SettingConnectFragment;->mChangeFragment:Lcom/living/emo/fragment/SettingConnectFragment$OnChangeFragment;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 45
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090086

    if-eq p1, v0, :cond_1

    const v0, 0x7f0902d2

    if-eq p1, v0, :cond_0

    goto :goto_1

    .line 59
    :cond_0
    iget-object p1, p0, Lcom/living/emo/fragment/SettingConnectFragment;->mChangeFragment:Lcom/living/emo/fragment/SettingConnectFragment$OnChangeFragment;

    invoke-interface {p1}, Lcom/living/emo/fragment/SettingConnectFragment$OnChangeFragment;->switchFragment()V

    goto :goto_1

    .line 49
    :cond_1
    iget-object p1, p0, Lcom/living/emo/fragment/SettingConnectFragment;->password:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result p1

    .line 50
    iget-object v0, p0, Lcom/living/emo/fragment/SettingConnectFragment;->password:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getInputType()I

    move-result v0

    const/16 v1, 0x81

    if-eq v0, v1, :cond_2

    .line 51
    iget-object v0, p0, Lcom/living/emo/fragment/SettingConnectFragment;->password:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0

    .line 53
    :cond_2
    iget-object v0, p0, Lcom/living/emo/fragment/SettingConnectFragment;->password:Landroid/widget/EditText;

    const/16 v1, 0x91

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 55
    :goto_0
    iget-object v0, p0, Lcom/living/emo/fragment/SettingConnectFragment;->password:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    :goto_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c007a

    const/4 v0, 0x0

    .line 27
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090086

    .line 28
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Lcom/living/emo/fragment/SettingConnectFragment;->eye:Landroid/widget/ImageButton;

    const p2, 0x7f090377

    .line 29
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/living/emo/fragment/SettingConnectFragment;->password:Landroid/widget/EditText;

    const p2, 0x7f09036d

    .line 30
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/living/emo/fragment/SettingConnectFragment;->account:Landroid/widget/EditText;

    const p2, 0x7f0902d2

    .line 31
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Lcom/living/emo/fragment/SettingConnectFragment;->setup_back_fragment:Landroid/widget/ImageButton;

    .line 32
    invoke-virtual {p2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    iget-object p2, p0, Lcom/living/emo/fragment/SettingConnectFragment;->eye:Landroid/widget/ImageButton;

    invoke-virtual {p2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method
