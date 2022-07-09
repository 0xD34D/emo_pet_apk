.class public final synthetic Lcom/living/emo/adapter/-$$Lambda$DiscBtnGroupAdapter$DiIckZcZsPAsG8tCcoAUcBxr1Ps;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/living/emo/adapter/DiscBtnGroupAdapter;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/living/emo/adapter/DiscBtnGroupAdapter;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/living/emo/adapter/-$$Lambda$DiscBtnGroupAdapter$DiIckZcZsPAsG8tCcoAUcBxr1Ps;->f$0:Lcom/living/emo/adapter/DiscBtnGroupAdapter;

    iput p2, p0, Lcom/living/emo/adapter/-$$Lambda$DiscBtnGroupAdapter$DiIckZcZsPAsG8tCcoAUcBxr1Ps;->f$1:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/living/emo/adapter/-$$Lambda$DiscBtnGroupAdapter$DiIckZcZsPAsG8tCcoAUcBxr1Ps;->f$0:Lcom/living/emo/adapter/DiscBtnGroupAdapter;

    iget v1, p0, Lcom/living/emo/adapter/-$$Lambda$DiscBtnGroupAdapter$DiIckZcZsPAsG8tCcoAUcBxr1Ps;->f$1:I

    invoke-virtual {v0, v1, p1}, Lcom/living/emo/adapter/DiscBtnGroupAdapter;->lambda$onBindViewHolder$0$DiscBtnGroupAdapter(ILandroid/view/View;)V

    return-void
.end method
