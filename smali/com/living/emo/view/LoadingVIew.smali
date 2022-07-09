.class public Lcom/living/emo/view/LoadingVIew;
.super Landroidx/fragment/app/DialogFragment;
.source "LoadingVIew.java"


# static fields
.field private static sLoadingVIew:Lcom/living/emo/view/LoadingVIew;


# instance fields
.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static dismissDialog()V
    .locals 1

    .line 60
    sget-object v0, Lcom/living/emo/view/LoadingVIew;->sLoadingVIew:Lcom/living/emo/view/LoadingVIew;

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {v0}, Lcom/living/emo/view/LoadingVIew;->dismiss()V

    :cond_0
    return-void
.end method

.method public static showDialog(Landroidx/fragment/app/FragmentManager;)V
    .locals 2

    .line 52
    sget-object v0, Lcom/living/emo/view/LoadingVIew;->sLoadingVIew:Lcom/living/emo/view/LoadingVIew;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lcom/living/emo/view/LoadingVIew;

    invoke-direct {v0}, Lcom/living/emo/view/LoadingVIew;-><init>()V

    sput-object v0, Lcom/living/emo/view/LoadingVIew;->sLoadingVIew:Lcom/living/emo/view/LoadingVIew;

    .line 55
    :cond_0
    sget-object v0, Lcom/living/emo/view/LoadingVIew;->sLoadingVIew:Lcom/living/emo/view/LoadingVIew;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/living/emo/view/LoadingVIew;->setCancelable(Z)V

    .line 56
    sget-object v0, Lcom/living/emo/view/LoadingVIew;->sLoadingVIew:Lcom/living/emo/view/LoadingVIew;

    const-string v1, "loading"

    invoke-virtual {v0, p0, v1}, Lcom/living/emo/view/LoadingVIew;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcom/living/emo/view/LoadingVIew;->getDialog()Landroid/app/Dialog;

    move-result-object p3

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const p3, 0x7f0c0059

    const/4 v0, 0x0

    .line 29
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/living/emo/view/LoadingVIew;->mView:Landroid/view/View;

    const/4 p1, 0x2

    const p2, 0x7f1100ee

    .line 30
    invoke-virtual {p0, p1, p2}, Lcom/living/emo/view/LoadingVIew;->setStyle(II)V

    .line 31
    iget-object p1, p0, Lcom/living/emo/view/LoadingVIew;->mView:Landroid/view/View;

    return-object p1
.end method

.method public onStart()V
    .locals 3

    .line 36
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    .line 37
    invoke-virtual {p0}, Lcom/living/emo/view/LoadingVIew;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x0

    .line 38
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    const/high16 v1, 0x42c80000    # 100.0f

    .line 39
    invoke-static {v1}, Lcom/youth/banner/util/BannerUtils;->dp2px(F)F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 v2, 0x11

    .line 40
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 41
    invoke-static {v1}, Lcom/youth/banner/util/BannerUtils;->dp2px(F)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 42
    invoke-virtual {p0}, Lcom/living/emo/view/LoadingVIew;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 43
    invoke-virtual {p0}, Lcom/living/emo/view/LoadingVIew;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 44
    invoke-virtual {p0}, Lcom/living/emo/view/LoadingVIew;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
