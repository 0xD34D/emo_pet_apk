.class public final synthetic Lcom/living/emo/view/-$$Lambda$RecognitionDeleteView$5yENkWIiJF2wxb94N_FI6s1jTxk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/living/emo/view/RecognitionDeleteView$OnClickListener;

.field public final synthetic f$1:Landroid/app/Dialog;


# direct methods
.method public synthetic constructor <init>(Lcom/living/emo/view/RecognitionDeleteView$OnClickListener;Landroid/app/Dialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/living/emo/view/-$$Lambda$RecognitionDeleteView$5yENkWIiJF2wxb94N_FI6s1jTxk;->f$0:Lcom/living/emo/view/RecognitionDeleteView$OnClickListener;

    iput-object p2, p0, Lcom/living/emo/view/-$$Lambda$RecognitionDeleteView$5yENkWIiJF2wxb94N_FI6s1jTxk;->f$1:Landroid/app/Dialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/living/emo/view/-$$Lambda$RecognitionDeleteView$5yENkWIiJF2wxb94N_FI6s1jTxk;->f$0:Lcom/living/emo/view/RecognitionDeleteView$OnClickListener;

    iget-object v1, p0, Lcom/living/emo/view/-$$Lambda$RecognitionDeleteView$5yENkWIiJF2wxb94N_FI6s1jTxk;->f$1:Landroid/app/Dialog;

    invoke-static {v0, v1, p1}, Lcom/living/emo/view/RecognitionDeleteView;->lambda$showDialog$1(Lcom/living/emo/view/RecognitionDeleteView$OnClickListener;Landroid/app/Dialog;Landroid/view/View;)V

    return-void
.end method
