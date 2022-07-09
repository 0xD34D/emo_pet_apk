.class public final synthetic Lcom/living/emo/activity/-$$Lambda$MemoryActivity$2$kyANJIXVDcPMh-A6G0KU55uD5RM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/living/emo/activity/MemoryActivity$2;


# direct methods
.method public synthetic constructor <init>(Lcom/living/emo/activity/MemoryActivity$2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/living/emo/activity/-$$Lambda$MemoryActivity$2$kyANJIXVDcPMh-A6G0KU55uD5RM;->f$0:Lcom/living/emo/activity/MemoryActivity$2;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/living/emo/activity/-$$Lambda$MemoryActivity$2$kyANJIXVDcPMh-A6G0KU55uD5RM;->f$0:Lcom/living/emo/activity/MemoryActivity$2;

    invoke-virtual {v0}, Lcom/living/emo/activity/MemoryActivity$2;->lambda$gameReady$0$MemoryActivity$2()V

    return-void
.end method
