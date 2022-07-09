.class public final synthetic Lcom/living/emo/adapter/-$$Lambda$RecognitionAdapter$v7g7NCV7HrdHmfPVaWy5h_rpDMc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/living/emo/adapter/RecognitionAdapter;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/living/emo/bean/RecognitionBean;


# direct methods
.method public synthetic constructor <init>(Lcom/living/emo/adapter/RecognitionAdapter;ILcom/living/emo/bean/RecognitionBean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/living/emo/adapter/-$$Lambda$RecognitionAdapter$v7g7NCV7HrdHmfPVaWy5h_rpDMc;->f$0:Lcom/living/emo/adapter/RecognitionAdapter;

    iput p2, p0, Lcom/living/emo/adapter/-$$Lambda$RecognitionAdapter$v7g7NCV7HrdHmfPVaWy5h_rpDMc;->f$1:I

    iput-object p3, p0, Lcom/living/emo/adapter/-$$Lambda$RecognitionAdapter$v7g7NCV7HrdHmfPVaWy5h_rpDMc;->f$2:Lcom/living/emo/bean/RecognitionBean;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/living/emo/adapter/-$$Lambda$RecognitionAdapter$v7g7NCV7HrdHmfPVaWy5h_rpDMc;->f$0:Lcom/living/emo/adapter/RecognitionAdapter;

    iget v1, p0, Lcom/living/emo/adapter/-$$Lambda$RecognitionAdapter$v7g7NCV7HrdHmfPVaWy5h_rpDMc;->f$1:I

    iget-object v2, p0, Lcom/living/emo/adapter/-$$Lambda$RecognitionAdapter$v7g7NCV7HrdHmfPVaWy5h_rpDMc;->f$2:Lcom/living/emo/bean/RecognitionBean;

    invoke-virtual {v0, v1, v2, p1}, Lcom/living/emo/adapter/RecognitionAdapter;->lambda$onBindViewHolder$1$RecognitionAdapter(ILcom/living/emo/bean/RecognitionBean;Landroid/view/View;)V

    return-void
.end method
