.class public Lcom/living/emo/view/UpdateDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "UpdateDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/living/emo/view/UpdateDialog$onDialogClickListener;
    }
.end annotation


# instance fields
.field private mCancelOff:Landroid/widget/ImageButton;

.field private mContinueOff:Landroid/widget/ImageButton;

.field private mListener:Lcom/living/emo/view/PowerOffSureDialog$onDialogClickListener;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method private initView()V
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/living/emo/view/UpdateDialog;->mView:Landroid/view/View;

    const v1, 0x7f0900db

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/living/emo/view/UpdateDialog;->mCancelOff:Landroid/widget/ImageButton;

    .line 39
    iget-object v0, p0, Lcom/living/emo/view/UpdateDialog;->mView:Landroid/view/View;

    const v1, 0x7f0900dc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/living/emo/view/UpdateDialog;->mContinueOff:Landroid/widget/ImageButton;

    .line 40
    iget-object v0, p0, Lcom/living/emo/view/UpdateDialog;->mCancelOff:Landroid/widget/ImageButton;

    new-instance v1, Lcom/living/emo/view/-$$Lambda$UpdateDialog$A9VQe-8Hikl2FbZ19nPTzAeaPzM;

    invoke-direct {v1, p0}, Lcom/living/emo/view/-$$Lambda$UpdateDialog$A9VQe-8Hikl2FbZ19nPTzAeaPzM;-><init>(Lcom/living/emo/view/UpdateDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    iget-object v0, p0, Lcom/living/emo/view/UpdateDialog;->mContinueOff:Landroid/widget/ImageButton;

    new-instance v1, Lcom/living/emo/view/-$$Lambda$UpdateDialog$k_PE0N_qtW34m7e8UDXLh5hDHdA;

    invoke-direct {v1, p0}, Lcom/living/emo/view/-$$Lambda$UpdateDialog$k_PE0N_qtW34m7e8UDXLh5hDHdA;-><init>(Lcom/living/emo/view/UpdateDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$initView$0$UpdateDialog(Landroid/view/View;)V
    .locals 0

    .line 41
    iget-object p1, p0, Lcom/living/emo/view/UpdateDialog;->mListener:Lcom/living/emo/view/PowerOffSureDialog$onDialogClickListener;

    if-eqz p1, :cond_0

    .line 42
    invoke-interface {p1}, Lcom/living/emo/view/PowerOffSureDialog$onDialogClickListener;->onCancelClick()V

    .line 44
    :cond_0
    invoke-virtual {p0}, Lcom/living/emo/view/UpdateDialog;->dismiss()V

    return-void
.end method

.method public synthetic lambda$initView$1$UpdateDialog(Landroid/view/View;)V
    .locals 0

    .line 47
    iget-object p1, p0, Lcom/living/emo/view/UpdateDialog;->mListener:Lcom/living/emo/view/PowerOffSureDialog$onDialogClickListener;

    if-eqz p1, :cond_0

    .line 48
    invoke-interface {p1}, Lcom/living/emo/view/PowerOffSureDialog$onDialogClickListener;->onSureClick()V

    .line 50
    :cond_0
    invoke-virtual {p0}, Lcom/living/emo/view/UpdateDialog;->dismiss()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lcom/living/emo/view/UpdateDialog;->getDialog()Landroid/app/Dialog;

    move-result-object p3

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const p3, 0x7f0c005f

    const/4 v0, 0x0

    .line 30
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/living/emo/view/UpdateDialog;->mView:Landroid/view/View;

    .line 31
    invoke-virtual {p0}, Lcom/living/emo/view/UpdateDialog;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, p2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 32
    invoke-virtual {p0, v0}, Lcom/living/emo/view/UpdateDialog;->setCancelable(Z)V

    .line 33
    invoke-direct {p0}, Lcom/living/emo/view/UpdateDialog;->initView()V

    .line 34
    iget-object p1, p0, Lcom/living/emo/view/UpdateDialog;->mView:Landroid/view/View;

    return-object p1
.end method

.method public setDialogClickListener(Lcom/living/emo/view/PowerOffSureDialog$onDialogClickListener;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/living/emo/view/UpdateDialog;->mListener:Lcom/living/emo/view/PowerOffSureDialog$onDialogClickListener;

    return-void
.end method
