.class public final synthetic Lcom/living/emo/activity/-$$Lambda$MemoryActivity$TellNative$JmS__s_srNJJwLrcO2SFp5BmUUs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/living/emo/activity/MemoryActivity$TellNative;


# direct methods
.method public synthetic constructor <init>(Lcom/living/emo/activity/MemoryActivity$TellNative;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/living/emo/activity/-$$Lambda$MemoryActivity$TellNative$JmS__s_srNJJwLrcO2SFp5BmUUs;->f$0:Lcom/living/emo/activity/MemoryActivity$TellNative;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/living/emo/activity/-$$Lambda$MemoryActivity$TellNative$JmS__s_srNJJwLrcO2SFp5BmUUs;->f$0:Lcom/living/emo/activity/MemoryActivity$TellNative;

    invoke-virtual {v0}, Lcom/living/emo/activity/MemoryActivity$TellNative;->lambda$gameOver$1$MemoryActivity$TellNative()V

    return-void
.end method
