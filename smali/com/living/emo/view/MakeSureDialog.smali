.class public Lcom/living/emo/view/MakeSureDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "MakeSureDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/living/emo/view/MakeSureDialog$onDialogClickListener;
    }
.end annotation


# instance fields
.field private content:Ljava/lang/String;

.field private mContent:Landroid/widget/TextView;

.field private mListener:Lcom/living/emo/view/MakeSureDialog$onDialogClickListener;

.field private mTvCancel:Landroid/widget/TextView;

.field private mTvContinue:Landroid/widget/TextView;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/living/emo/view/MakeSureDialog;)Lcom/living/emo/view/MakeSureDialog$onDialogClickListener;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/living/emo/view/MakeSureDialog;->mListener:Lcom/living/emo/view/MakeSureDialog$onDialogClickListener;

    return-object p0
.end method

.method private initView()V
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/living/emo/view/MakeSureDialog;->mView:Landroid/view/View;

    const v1, 0x7f09033f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/living/emo/view/MakeSureDialog;->mTvContinue:Landroid/widget/TextView;

    .line 38
    iget-object v0, p0, Lcom/living/emo/view/MakeSureDialog;->mView:Landroid/view/View;

    const v1, 0x7f09033e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/living/emo/view/MakeSureDialog;->mTvCancel:Landroid/widget/TextView;

    .line 39
    iget-object v0, p0, Lcom/living/emo/view/MakeSureDialog;->mView:Landroid/view/View;

    const v1, 0x7f090340

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/living/emo/view/MakeSureDialog;->mContent:Landroid/widget/TextView;

    .line 40
    invoke-virtual {p0}, Lcom/living/emo/view/MakeSureDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10005e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/living/emo/view/MakeSureDialog;->content:Ljava/lang/String;

    .line 41
    iget-object v1, p0, Lcom/living/emo/view/MakeSureDialog;->mContent:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    iget-object v0, p0, Lcom/living/emo/view/MakeSureDialog;->mTvContinue:Landroid/widget/TextView;

    new-instance v1, Lcom/living/emo/view/MakeSureDialog$1;

    invoke-direct {v1, p0}, Lcom/living/emo/view/MakeSureDialog$1;-><init>(Lcom/living/emo/view/MakeSureDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    iget-object v0, p0, Lcom/living/emo/view/MakeSureDialog;->mTvCancel:Landroid/widget/TextView;

    new-instance v1, Lcom/living/emo/view/MakeSureDialog$2;

    invoke-direct {v1, p0}, Lcom/living/emo/view/MakeSureDialog$2;-><init>(Lcom/living/emo/view/MakeSureDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lcom/living/emo/view/MakeSureDialog;->getDialog()Landroid/app/Dialog;

    move-result-object p3

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const p3, 0x7f0c005a

    const/4 v0, 0x0

    .line 30
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/living/emo/view/MakeSureDialog;->mView:Landroid/view/View;

    .line 31
    invoke-virtual {p0}, Lcom/living/emo/view/MakeSureDialog;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, p2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 32
    invoke-direct {p0}, Lcom/living/emo/view/MakeSureDialog;->initView()V

    .line 33
    iget-object p1, p0, Lcom/living/emo/view/MakeSureDialog;->mView:Landroid/view/View;

    return-object p1
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/living/emo/view/MakeSureDialog;->content:Ljava/lang/String;

    return-void
.end method

.method public setDialogClickListener(Lcom/living/emo/view/MakeSureDialog$onDialogClickListener;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/living/emo/view/MakeSureDialog;->mListener:Lcom/living/emo/view/MakeSureDialog$onDialogClickListener;

    return-void
.end method
