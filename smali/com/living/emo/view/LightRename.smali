.class public Lcom/living/emo/view/LightRename;
.super Landroidx/fragment/app/DialogFragment;
.source "LightRename.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/living/emo/view/LightRename$onDialogClickListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/living/emo/view/LightRename$onDialogClickListener;

.field private mView:Landroid/view/View;

.field private name:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    const-string v0, ""

    .line 35
    iput-object v0, p0, Lcom/living/emo/view/LightRename;->title:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/living/emo/view/LightRename;->name:Ljava/lang/String;

    return-void
.end method

.method public static HideKeyboard(Landroid/view/View;)V
    .locals 2

    .line 143
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 144
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    invoke-virtual {p0}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method private initView()V
    .locals 7

    .line 61
    iget-object v0, p0, Lcom/living/emo/view/LightRename;->mView:Landroid/view/View;

    const v1, 0x7f0900e9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 62
    iget-object v1, p0, Lcom/living/emo/view/LightRename;->mView:Landroid/view/View;

    const v2, 0x7f0900da

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 63
    iget-object v2, p0, Lcom/living/emo/view/LightRename;->mView:Landroid/view/View;

    const v3, 0x7f0900e8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 64
    iget-object v3, p0, Lcom/living/emo/view/LightRename;->mView:Landroid/view/View;

    const v4, 0x7f0900ea

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    .line 65
    iget-object v4, p0, Lcom/living/emo/view/LightRename;->mView:Landroid/view/View;

    const v5, 0x7f0900eb

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 66
    iget-object v5, p0, Lcom/living/emo/view/LightRename;->title:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 67
    iget-object v5, p0, Lcom/living/emo/view/LightRename;->title:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    :cond_0
    iget-object v4, p0, Lcom/living/emo/view/LightRename;->name:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 70
    iget-object v4, p0, Lcom/living/emo/view/LightRename;->name:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v4, 0x0

    .line 71
    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 v4, 0x8

    .line 73
    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 75
    :goto_0
    iget-object v4, p0, Lcom/living/emo/view/LightRename;->mView:Landroid/view/View;

    const v5, 0x7f0900e5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    .line 76
    new-instance v5, Lcom/living/emo/view/-$$Lambda$LightRename$Lj_bzNn8XJbPGppsf-Z4_2j4x_c;

    invoke-direct {v5, v0}, Lcom/living/emo/view/-$$Lambda$LightRename$Lj_bzNn8XJbPGppsf-Z4_2j4x_c;-><init>(Landroid/widget/EditText;)V

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    new-instance v5, Lcom/living/emo/view/-$$Lambda$LightRename$BSBGx22lch6JSYOWA5QfVwQjUnQ;

    invoke-direct {v5, p0}, Lcom/living/emo/view/-$$Lambda$LightRename$BSBGx22lch6JSYOWA5QfVwQjUnQ;-><init>(Lcom/living/emo/view/LightRename;)V

    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    new-instance v1, Lcom/living/emo/view/-$$Lambda$LightRename$_D7sAiLi0-3Dfa-x-TEqSntT3zc;

    invoke-direct {v1, p0, v0}, Lcom/living/emo/view/-$$Lambda$LightRename$_D7sAiLi0-3Dfa-x-TEqSntT3zc;-><init>(Lcom/living/emo/view/LightRename;Landroid/widget/EditText;)V

    invoke-virtual {v3, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object v1, p0, Lcom/living/emo/view/LightRename;->mView:Landroid/view/View;

    sget-object v3, Lcom/living/emo/view/-$$Lambda$LightRename$Nt9PGAaaR-ns6BScSrF_PkVG8aU;->INSTANCE:Lcom/living/emo/view/-$$Lambda$LightRename$Nt9PGAaaR-ns6BScSrF_PkVG8aU;

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    new-instance v1, Lcom/living/emo/view/-$$Lambda$LightRename$N_pZo13lYOMNh1HjCl4UEr-JxfY;

    invoke-direct {v1, v0}, Lcom/living/emo/view/-$$Lambda$LightRename$N_pZo13lYOMNh1HjCl4UEr-JxfY;-><init>(Landroid/widget/EditText;)V

    invoke-virtual {v4, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    new-instance v1, Lcom/living/emo/view/LightRename$1;

    invoke-direct {v1, p0, v0, v2}, Lcom/living/emo/view/LightRename$1;-><init>(Lcom/living/emo/view/LightRename;Landroid/widget/EditText;Landroid/widget/RelativeLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method static synthetic lambda$initView$0(Landroid/widget/EditText;Landroid/view/View;)V
    .locals 0

    const-string p1, ""

    .line 77
    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic lambda$initView$3(Landroid/view/View;)V
    .locals 0

    .line 91
    invoke-static {p0}, Lcom/living/emo/view/LightRename;->HideKeyboard(Landroid/view/View;)V

    return-void
.end method

.method static synthetic lambda$initView$4(Landroid/widget/EditText;Landroid/view/View;)V
    .locals 0

    const-string p1, ""

    .line 94
    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$initView$1$LightRename(Landroid/view/View;)V
    .locals 1

    .line 80
    iget-object p1, p0, Lcom/living/emo/view/LightRename;->mListener:Lcom/living/emo/view/LightRename$onDialogClickListener;

    if-eqz p1, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/living/emo/view/LightRename;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/living/emo/view/LightRename$onDialogClickListener;->onCancelClick(Landroid/app/Dialog;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$initView$2$LightRename(Landroid/widget/EditText;Landroid/view/View;)V
    .locals 1

    .line 85
    iget-object p2, p0, Lcom/living/emo/view/LightRename;->mListener:Lcom/living/emo/view/LightRename$onDialogClickListener;

    if-eqz p2, :cond_0

    .line 86
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 87
    iget-object p2, p0, Lcom/living/emo/view/LightRename;->mListener:Lcom/living/emo/view/LightRename$onDialogClickListener;

    invoke-virtual {p0}, Lcom/living/emo/view/LightRename;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Lcom/living/emo/view/LightRename$onDialogClickListener;->onOkClick(Landroid/app/Dialog;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lcom/living/emo/view/LightRename;->getDialog()Landroid/app/Dialog;

    move-result-object p3

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const p3, 0x7f0c005b

    const/4 v0, 0x0

    .line 44
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/living/emo/view/LightRename;->mView:Landroid/view/View;

    .line 45
    invoke-virtual {p0}, Lcom/living/emo/view/LightRename;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, p2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 46
    invoke-virtual {p0}, Lcom/living/emo/view/LightRename;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 47
    invoke-virtual {p0}, Lcom/living/emo/view/LightRename;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 48
    invoke-direct {p0}, Lcom/living/emo/view/LightRename;->initView()V

    .line 49
    iget-object p1, p0, Lcom/living/emo/view/LightRename;->mView:Landroid/view/View;

    return-object p1
.end method

.method public setDialogClickListener(Lcom/living/emo/view/LightRename$onDialogClickListener;)V
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/living/emo/view/LightRename;->mListener:Lcom/living/emo/view/LightRename$onDialogClickListener;

    if-nez v0, :cond_0

    .line 154
    iput-object p1, p0, Lcom/living/emo/view/LightRename;->mListener:Lcom/living/emo/view/LightRename$onDialogClickListener;

    :cond_0
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/living/emo/view/LightRename;->name:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/living/emo/view/LightRename;->title:Ljava/lang/String;

    return-void
.end method
