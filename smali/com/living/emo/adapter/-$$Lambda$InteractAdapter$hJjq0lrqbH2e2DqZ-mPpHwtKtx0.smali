.class public final synthetic Lcom/living/emo/adapter/-$$Lambda$InteractAdapter$hJjq0lrqbH2e2DqZ-mPpHwtKtx0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/living/emo/adapter/InteractAdapter;

.field public final synthetic f$1:Lcom/living/emo/bean/InteractBean;


# direct methods
.method public synthetic constructor <init>(Lcom/living/emo/adapter/InteractAdapter;Lcom/living/emo/bean/InteractBean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/living/emo/adapter/-$$Lambda$InteractAdapter$hJjq0lrqbH2e2DqZ-mPpHwtKtx0;->f$0:Lcom/living/emo/adapter/InteractAdapter;

    iput-object p2, p0, Lcom/living/emo/adapter/-$$Lambda$InteractAdapter$hJjq0lrqbH2e2DqZ-mPpHwtKtx0;->f$1:Lcom/living/emo/bean/InteractBean;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/living/emo/adapter/-$$Lambda$InteractAdapter$hJjq0lrqbH2e2DqZ-mPpHwtKtx0;->f$0:Lcom/living/emo/adapter/InteractAdapter;

    iget-object v1, p0, Lcom/living/emo/adapter/-$$Lambda$InteractAdapter$hJjq0lrqbH2e2DqZ-mPpHwtKtx0;->f$1:Lcom/living/emo/bean/InteractBean;

    invoke-virtual {v0, v1, p1}, Lcom/living/emo/adapter/InteractAdapter;->lambda$onBindViewHolder$0$InteractAdapter(Lcom/living/emo/bean/InteractBean;Landroid/view/View;)V

    return-void
.end method
