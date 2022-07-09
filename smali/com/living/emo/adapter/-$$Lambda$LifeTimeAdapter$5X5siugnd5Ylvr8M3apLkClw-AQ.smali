.class public final synthetic Lcom/living/emo/adapter/-$$Lambda$LifeTimeAdapter$5X5siugnd5Ylvr8M3apLkClw-AQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/living/emo/adapter/LifeTimeAdapter;

.field public final synthetic f$1:Lcom/living/emo/adapter/LifeTimeAdapter$ViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/living/emo/adapter/LifeTimeAdapter;Lcom/living/emo/adapter/LifeTimeAdapter$ViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/living/emo/adapter/-$$Lambda$LifeTimeAdapter$5X5siugnd5Ylvr8M3apLkClw-AQ;->f$0:Lcom/living/emo/adapter/LifeTimeAdapter;

    iput-object p2, p0, Lcom/living/emo/adapter/-$$Lambda$LifeTimeAdapter$5X5siugnd5Ylvr8M3apLkClw-AQ;->f$1:Lcom/living/emo/adapter/LifeTimeAdapter$ViewHolder;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/living/emo/adapter/-$$Lambda$LifeTimeAdapter$5X5siugnd5Ylvr8M3apLkClw-AQ;->f$0:Lcom/living/emo/adapter/LifeTimeAdapter;

    iget-object v1, p0, Lcom/living/emo/adapter/-$$Lambda$LifeTimeAdapter$5X5siugnd5Ylvr8M3apLkClw-AQ;->f$1:Lcom/living/emo/adapter/LifeTimeAdapter$ViewHolder;

    invoke-virtual {v0, v1, p1}, Lcom/living/emo/adapter/LifeTimeAdapter;->lambda$onCreateViewHolder$0$LifeTimeAdapter(Lcom/living/emo/adapter/LifeTimeAdapter$ViewHolder;Landroid/view/View;)V

    return-void
.end method
