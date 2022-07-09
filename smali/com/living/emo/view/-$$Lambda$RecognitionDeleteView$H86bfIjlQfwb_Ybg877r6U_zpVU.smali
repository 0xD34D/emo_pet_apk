.class public final synthetic Lcom/living/emo/view/-$$Lambda$RecognitionDeleteView$H86bfIjlQfwb_Ybg877r6U_zpVU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/app/Dialog;

.field public final synthetic f$1:Lcom/living/emo/view/RecognitionDeleteView$OnClickListener;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Dialog;Lcom/living/emo/view/RecognitionDeleteView$OnClickListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/living/emo/view/-$$Lambda$RecognitionDeleteView$H86bfIjlQfwb_Ybg877r6U_zpVU;->f$0:Landroid/app/Dialog;

    iput-object p2, p0, Lcom/living/emo/view/-$$Lambda$RecognitionDeleteView$H86bfIjlQfwb_Ybg877r6U_zpVU;->f$1:Lcom/living/emo/view/RecognitionDeleteView$OnClickListener;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/living/emo/view/-$$Lambda$RecognitionDeleteView$H86bfIjlQfwb_Ybg877r6U_zpVU;->f$0:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/living/emo/view/-$$Lambda$RecognitionDeleteView$H86bfIjlQfwb_Ybg877r6U_zpVU;->f$1:Lcom/living/emo/view/RecognitionDeleteView$OnClickListener;

    invoke-static {v0, v1, p1}, Lcom/living/emo/view/RecognitionDeleteView;->lambda$showDialog$0(Landroid/app/Dialog;Lcom/living/emo/view/RecognitionDeleteView$OnClickListener;Landroid/view/View;)V

    return-void
.end method
