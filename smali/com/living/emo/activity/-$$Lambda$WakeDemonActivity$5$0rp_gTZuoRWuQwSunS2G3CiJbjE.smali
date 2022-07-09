.class public final synthetic Lcom/living/emo/activity/-$$Lambda$WakeDemonActivity$5$0rp_gTZuoRWuQwSunS2G3CiJbjE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/living/emo/activity/WakeDemonActivity$5;


# direct methods
.method public synthetic constructor <init>(Lcom/living/emo/activity/WakeDemonActivity$5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/living/emo/activity/-$$Lambda$WakeDemonActivity$5$0rp_gTZuoRWuQwSunS2G3CiJbjE;->f$0:Lcom/living/emo/activity/WakeDemonActivity$5;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/living/emo/activity/-$$Lambda$WakeDemonActivity$5$0rp_gTZuoRWuQwSunS2G3CiJbjE;->f$0:Lcom/living/emo/activity/WakeDemonActivity$5;

    invoke-virtual {v0}, Lcom/living/emo/activity/WakeDemonActivity$5;->lambda$gameReady$0$WakeDemonActivity$5()V

    return-void
.end method
