.class public Lcom/living/emo/view/PhotoDialogView;
.super Ljava/lang/Object;
.source "PhotoDialogView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/living/emo/view/PhotoDialogView$OnClickListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$showDialog$0(Landroid/app/Dialog;Lcom/living/emo/view/PhotoDialogView$OnClickListener;Landroid/view/View;)V
    .locals 0

    .line 22
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 23
    invoke-interface {p1, p0}, Lcom/living/emo/view/PhotoDialogView$OnClickListener;->onCancel(Landroid/app/Dialog;)V

    return-void
.end method

.method static synthetic lambda$showDialog$1(Lcom/living/emo/view/PhotoDialogView$OnClickListener;Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    .line 26
    invoke-interface {p0, p1}, Lcom/living/emo/view/PhotoDialogView$OnClickListener;->onOk(Landroid/app/Dialog;)V

    return-void
.end method

.method public static showDialog(Landroid/content/Context;IIILcom/living/emo/view/PhotoDialogView$OnClickListener;)V
    .locals 2

    .line 17
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f1100ef

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x0

    .line 18
    invoke-static {p0, p1, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    .line 19
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    .line 20
    invoke-virtual {p0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    .line 21
    new-instance p3, Lcom/living/emo/view/-$$Lambda$PhotoDialogView$sv7lqRWRS_ZLcxunHsB-VGhw-Hg;

    invoke-direct {p3, v0, p4}, Lcom/living/emo/view/-$$Lambda$PhotoDialogView$sv7lqRWRS_ZLcxunHsB-VGhw-Hg;-><init>(Landroid/app/Dialog;Lcom/living/emo/view/PhotoDialogView$OnClickListener;)V

    invoke-virtual {p1, p3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    new-instance p1, Lcom/living/emo/view/-$$Lambda$PhotoDialogView$KueFXZfIdYlhOFVTFWVASDRmBLg;

    invoke-direct {p1, p4, v0}, Lcom/living/emo/view/-$$Lambda$PhotoDialogView$KueFXZfIdYlhOFVTFWVASDRmBLg;-><init>(Lcom/living/emo/view/PhotoDialogView$OnClickListener;Landroid/app/Dialog;)V

    invoke-virtual {p2, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    const/4 p0, 0x0

    .line 29
    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 30
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
