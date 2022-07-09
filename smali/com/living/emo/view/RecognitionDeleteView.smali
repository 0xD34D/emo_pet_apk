.class public Lcom/living/emo/view/RecognitionDeleteView;
.super Ljava/lang/Object;
.source "RecognitionDeleteView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/living/emo/view/RecognitionDeleteView$OnClickListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$showDialog$0(Landroid/app/Dialog;Lcom/living/emo/view/RecognitionDeleteView$OnClickListener;Landroid/view/View;)V
    .locals 0

    .line 21
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 22
    invoke-interface {p1, p0}, Lcom/living/emo/view/RecognitionDeleteView$OnClickListener;->onCancel(Landroid/app/Dialog;)V

    return-void
.end method

.method static synthetic lambda$showDialog$1(Lcom/living/emo/view/RecognitionDeleteView$OnClickListener;Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    .line 25
    invoke-interface {p0, p1}, Lcom/living/emo/view/RecognitionDeleteView$OnClickListener;->onOk(Landroid/app/Dialog;)V

    return-void
.end method

.method public static showDialog(Landroid/content/Context;IIILcom/living/emo/view/RecognitionDeleteView$OnClickListener;)V
    .locals 2

    .line 16
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f1100ef

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x0

    .line 17
    invoke-static {p0, p1, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    .line 18
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    .line 19
    invoke-virtual {p0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    .line 20
    new-instance p3, Lcom/living/emo/view/-$$Lambda$RecognitionDeleteView$H86bfIjlQfwb_Ybg877r6U_zpVU;

    invoke-direct {p3, v0, p4}, Lcom/living/emo/view/-$$Lambda$RecognitionDeleteView$H86bfIjlQfwb_Ybg877r6U_zpVU;-><init>(Landroid/app/Dialog;Lcom/living/emo/view/RecognitionDeleteView$OnClickListener;)V

    invoke-virtual {p1, p3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    new-instance p1, Lcom/living/emo/view/-$$Lambda$RecognitionDeleteView$5yENkWIiJF2wxb94N_FI6s1jTxk;

    invoke-direct {p1, p4, v0}, Lcom/living/emo/view/-$$Lambda$RecognitionDeleteView$5yENkWIiJF2wxb94N_FI6s1jTxk;-><init>(Lcom/living/emo/view/RecognitionDeleteView$OnClickListener;Landroid/app/Dialog;)V

    invoke-virtual {p2, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    const/4 p0, 0x0

    .line 28
    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 29
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
