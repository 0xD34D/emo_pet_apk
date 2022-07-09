.class public final synthetic Lcom/living/emo/activity/-$$Lambda$ConnectActivity$bYTB08qXAdWAWigf_tPJZ5TkNgA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/living/emo/activity/ConnectActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/living/emo/activity/ConnectActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/living/emo/activity/-$$Lambda$ConnectActivity$bYTB08qXAdWAWigf_tPJZ5TkNgA;->f$0:Lcom/living/emo/activity/ConnectActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/living/emo/activity/-$$Lambda$ConnectActivity$bYTB08qXAdWAWigf_tPJZ5TkNgA;->f$0:Lcom/living/emo/activity/ConnectActivity;

    invoke-virtual {v0}, Lcom/living/emo/activity/ConnectActivity;->lambda$sendConfig$3$ConnectActivity()V

    return-void
.end method
