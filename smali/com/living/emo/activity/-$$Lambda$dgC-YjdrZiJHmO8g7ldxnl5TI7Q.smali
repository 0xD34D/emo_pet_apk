.class public final synthetic Lcom/living/emo/activity/-$$Lambda$dgC-YjdrZiJHmO8g7ldxnl5TI7Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/living/emo/activity/LudoGameActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/living/emo/activity/LudoGameActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/living/emo/activity/-$$Lambda$dgC-YjdrZiJHmO8g7ldxnl5TI7Q;->f$0:Lcom/living/emo/activity/LudoGameActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/living/emo/activity/-$$Lambda$dgC-YjdrZiJHmO8g7ldxnl5TI7Q;->f$0:Lcom/living/emo/activity/LudoGameActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
