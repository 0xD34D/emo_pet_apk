.class Lcom/living/emo/activity/AmusementActivity$TimerInterval;
.super Ljava/lang/Object;
.source "AmusementActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/living/emo/activity/AmusementActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimerInterval"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/living/emo/activity/AmusementActivity;


# direct methods
.method private constructor <init>(Lcom/living/emo/activity/AmusementActivity;)V
    .locals 0

    .line 482
    iput-object p1, p0, Lcom/living/emo/activity/AmusementActivity$TimerInterval;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/living/emo/activity/AmusementActivity;Lcom/living/emo/activity/AmusementActivity$1;)V
    .locals 0

    .line 482
    invoke-direct {p0, p1}, Lcom/living/emo/activity/AmusementActivity$TimerInterval;-><init>(Lcom/living/emo/activity/AmusementActivity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 487
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity$TimerInterval;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {v0}, Lcom/living/emo/activity/AmusementActivity;->access$200(Lcom/living/emo/activity/AmusementActivity;)Lcom/living/emo/interfaces/IPlayerControlPresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity$TimerInterval;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {v0}, Lcom/living/emo/activity/AmusementActivity;->access$1900(Lcom/living/emo/activity/AmusementActivity;)Lcom/living/emo/interfaces/IPlayerControlPresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity$TimerInterval;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {v0}, Lcom/living/emo/activity/AmusementActivity;->access$200(Lcom/living/emo/activity/AmusementActivity;)Lcom/living/emo/interfaces/IPlayerControlPresenter;

    move-result-object v1

    invoke-interface {v1}, Lcom/living/emo/interfaces/IPlayerControlPresenter;->isPlaying()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/living/emo/activity/AmusementActivity;->access$3902(Lcom/living/emo/activity/AmusementActivity;Z)Z

    .line 489
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity$TimerInterval;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {v0}, Lcom/living/emo/activity/AmusementActivity;->access$1900(Lcom/living/emo/activity/AmusementActivity;)Lcom/living/emo/interfaces/IPlayerControlPresenter;

    move-result-object v1

    invoke-interface {v1}, Lcom/living/emo/interfaces/IPlayerControlPresenter;->isPlaying()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/living/emo/activity/AmusementActivity;->access$4002(Lcom/living/emo/activity/AmusementActivity;Z)Z

    .line 492
    :cond_0
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity$TimerInterval;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {v0}, Lcom/living/emo/activity/AmusementActivity;->access$3900(Lcom/living/emo/activity/AmusementActivity;)Z

    move-result v0

    const/4 v1, 0x1

    const-wide/16 v2, 0x1388

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity$TimerInterval;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {v0}, Lcom/living/emo/activity/AmusementActivity;->access$4000(Lcom/living/emo/activity/AmusementActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity$TimerInterval;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {v0}, Lcom/living/emo/activity/AmusementActivity;->access$700(Lcom/living/emo/activity/AmusementActivity;)F

    move-result v0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_2

    .line 493
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity$TimerInterval;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {v0}, Lcom/living/emo/activity/AmusementActivity;->access$4100(Lcom/living/emo/activity/AmusementActivity;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 494
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity$TimerInterval;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {v0}, Lcom/living/emo/activity/AmusementActivity;->access$1200(Lcom/living/emo/activity/AmusementActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v4, p0, Lcom/living/emo/activity/AmusementActivity$TimerInterval;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {v4}, Lcom/living/emo/activity/AmusementActivity;->access$4200(Lcom/living/emo/activity/AmusementActivity;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 495
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity$TimerInterval;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {v0, v1}, Lcom/living/emo/activity/AmusementActivity;->access$4102(Lcom/living/emo/activity/AmusementActivity;Z)Z

    goto :goto_0

    .line 497
    :cond_2
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity$TimerInterval;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {v0}, Lcom/living/emo/activity/AmusementActivity;->access$3900(Lcom/living/emo/activity/AmusementActivity;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity$TimerInterval;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {v0}, Lcom/living/emo/activity/AmusementActivity;->access$4000(Lcom/living/emo/activity/AmusementActivity;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity$TimerInterval;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {v0}, Lcom/living/emo/activity/AmusementActivity;->access$700(Lcom/living/emo/activity/AmusementActivity;)F

    move-result v0

    cmpg-float v0, v0, v4

    if-gtz v0, :cond_5

    .line 499
    :cond_4
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity$TimerInterval;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {v0}, Lcom/living/emo/activity/AmusementActivity;->access$4100(Lcom/living/emo/activity/AmusementActivity;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 500
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity$TimerInterval;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {v0}, Lcom/living/emo/activity/AmusementActivity;->access$1200(Lcom/living/emo/activity/AmusementActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v4, p0, Lcom/living/emo/activity/AmusementActivity$TimerInterval;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {v4}, Lcom/living/emo/activity/AmusementActivity;->access$4200(Lcom/living/emo/activity/AmusementActivity;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 501
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity$TimerInterval;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {v0}, Lcom/living/emo/activity/AmusementActivity;->access$1200(Lcom/living/emo/activity/AmusementActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v4, p0, Lcom/living/emo/activity/AmusementActivity$TimerInterval;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {v4}, Lcom/living/emo/activity/AmusementActivity;->access$4300(Lcom/living/emo/activity/AmusementActivity;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 502
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity$TimerInterval;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {v0, v5}, Lcom/living/emo/activity/AmusementActivity;->access$4102(Lcom/living/emo/activity/AmusementActivity;Z)Z

    .line 506
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity$TimerInterval;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {v0}, Lcom/living/emo/activity/AmusementActivity;->access$900(Lcom/living/emo/activity/AmusementActivity;)Z

    move-result v0

    const-string v2, "run:isTask "

    if-eqz v0, :cond_6

    .line 508
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity$TimerInterval;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {v0}, Lcom/living/emo/activity/AmusementActivity;->access$4400(Lcom/living/emo/activity/AmusementActivity;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 509
    invoke-static {}, Lcom/living/emo/activity/AmusementActivity;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/living/emo/activity/AmusementActivity$TimerInterval;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {v2}, Lcom/living/emo/activity/AmusementActivity;->access$4400(Lcom/living/emo/activity/AmusementActivity;)Z

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/living/emo/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity$TimerInterval;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {v0}, Lcom/living/emo/activity/AmusementActivity;->access$4700(Lcom/living/emo/activity/AmusementActivity;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    iget-object v3, p0, Lcom/living/emo/activity/AmusementActivity$TimerInterval;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {v3}, Lcom/living/emo/activity/AmusementActivity;->access$4600(Lcom/living/emo/activity/AmusementActivity;)Ljava/lang/Runnable;

    move-result-object v3

    const-wide/16 v4, 0xa

    const-wide/16 v6, 0x14

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v2 .. v8}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/living/emo/activity/AmusementActivity;->access$4502(Lcom/living/emo/activity/AmusementActivity;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    .line 511
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity$TimerInterval;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {v0, v1}, Lcom/living/emo/activity/AmusementActivity;->access$4402(Lcom/living/emo/activity/AmusementActivity;Z)Z

    goto :goto_1

    .line 514
    :cond_6
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity$TimerInterval;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {v0}, Lcom/living/emo/activity/AmusementActivity;->access$4400(Lcom/living/emo/activity/AmusementActivity;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 515
    invoke-static {}, Lcom/living/emo/activity/AmusementActivity;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/living/emo/activity/AmusementActivity$TimerInterval;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {v2}, Lcom/living/emo/activity/AmusementActivity;->access$4400(Lcom/living/emo/activity/AmusementActivity;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/living/emo/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity$TimerInterval;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {v0}, Lcom/living/emo/activity/AmusementActivity;->access$4500(Lcom/living/emo/activity/AmusementActivity;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 517
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity$TimerInterval;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {v0, v5}, Lcom/living/emo/activity/AmusementActivity;->access$4402(Lcom/living/emo/activity/AmusementActivity;Z)Z

    :cond_7
    :goto_1
    return-void
.end method
