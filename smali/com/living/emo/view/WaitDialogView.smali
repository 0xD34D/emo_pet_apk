.class public Lcom/living/emo/view/WaitDialogView;
.super Ljava/lang/Object;
.source "WaitDialogView.java"


# static fields
.field private static sProgressDialog:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dismiss()V
    .locals 1

    .line 21
    sget-object v0, Lcom/living/emo/view/WaitDialogView;->sProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 22
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    .line 23
    sput-object v0, Lcom/living/emo/view/WaitDialogView;->sProgressDialog:Landroid/app/ProgressDialog;

    :cond_0
    return-void
.end method

.method public static show(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 12
    sget-object v0, Lcom/living/emo/view/WaitDialogView;->sProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 13
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/living/emo/view/WaitDialogView;->sProgressDialog:Landroid/app/ProgressDialog;

    .line 15
    :cond_0
    sget-object p0, Lcom/living/emo/view/WaitDialogView;->sProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 16
    sget-object p0, Lcom/living/emo/view/WaitDialogView;->sProgressDialog:Landroid/app/ProgressDialog;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 17
    sget-object p0, Lcom/living/emo/view/WaitDialogView;->sProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method
