.class Lcom/living/emo/activity/DiscActivity$TimerInterval;
.super Ljava/lang/Object;
.source "DiscActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/living/emo/activity/DiscActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimerInterval"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/living/emo/activity/DiscActivity;


# direct methods
.method private constructor <init>(Lcom/living/emo/activity/DiscActivity;)V
    .locals 0

    .line 262
    iput-object p1, p0, Lcom/living/emo/activity/DiscActivity$TimerInterval;->this$0:Lcom/living/emo/activity/DiscActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/living/emo/activity/DiscActivity;Lcom/living/emo/activity/DiscActivity$1;)V
    .locals 0

    .line 262
    invoke-direct {p0, p1}, Lcom/living/emo/activity/DiscActivity$TimerInterval;-><init>(Lcom/living/emo/activity/DiscActivity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 267
    iget-object v0, p0, Lcom/living/emo/activity/DiscActivity$TimerInterval;->this$0:Lcom/living/emo/activity/DiscActivity;

    invoke-static {v0}, Lcom/living/emo/activity/DiscActivity;->access$400(Lcom/living/emo/activity/DiscActivity;)Lcom/living/emo/presenter/DiscControlPresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/living/emo/activity/DiscActivity$TimerInterval;->this$0:Lcom/living/emo/activity/DiscActivity;

    invoke-static {v0}, Lcom/living/emo/activity/DiscActivity;->access$1600(Lcom/living/emo/activity/DiscActivity;)Lcom/living/emo/presenter/DiscControlPresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/living/emo/activity/DiscActivity$TimerInterval;->this$0:Lcom/living/emo/activity/DiscActivity;

    invoke-static {v0}, Lcom/living/emo/activity/DiscActivity;->access$400(Lcom/living/emo/activity/DiscActivity;)Lcom/living/emo/presenter/DiscControlPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/living/emo/presenter/DiscControlPresenter;->isPlaying()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/living/emo/activity/DiscActivity;->access$1002(Lcom/living/emo/activity/DiscActivity;Z)Z

    .line 269
    iget-object v0, p0, Lcom/living/emo/activity/DiscActivity$TimerInterval;->this$0:Lcom/living/emo/activity/DiscActivity;

    invoke-static {v0}, Lcom/living/emo/activity/DiscActivity;->access$1600(Lcom/living/emo/activity/DiscActivity;)Lcom/living/emo/presenter/DiscControlPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/living/emo/presenter/DiscControlPresenter;->isPlaying()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/living/emo/activity/DiscActivity;->access$1102(Lcom/living/emo/activity/DiscActivity;Z)Z

    .line 271
    :cond_0
    invoke-static {}, Lcom/living/emo/activity/DiscActivity;->access$1300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TimerInterval:run: RunnableisMusic1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/living/emo/activity/DiscActivity$TimerInterval;->this$0:Lcom/living/emo/activity/DiscActivity;

    invoke-static {v2}, Lcom/living/emo/activity/DiscActivity;->access$1000(Lcom/living/emo/activity/DiscActivity;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "   isMusic2:    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/living/emo/activity/DiscActivity$TimerInterval;->this$0:Lcom/living/emo/activity/DiscActivity;

    invoke-static {v2}, Lcom/living/emo/activity/DiscActivity;->access$1100(Lcom/living/emo/activity/DiscActivity;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "    mVol: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/living/emo/activity/DiscActivity$TimerInterval;->this$0:Lcom/living/emo/activity/DiscActivity;

    invoke-static {v2}, Lcom/living/emo/activity/DiscActivity;->access$1200(Lcom/living/emo/activity/DiscActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/living/emo/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lcom/living/emo/activity/DiscActivity$TimerInterval;->this$0:Lcom/living/emo/activity/DiscActivity;

    invoke-static {v0}, Lcom/living/emo/activity/DiscActivity;->access$1000(Lcom/living/emo/activity/DiscActivity;)Z

    move-result v0

    const/4 v1, 0x1

    const-wide/16 v2, 0x1388

    const/4 v4, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/living/emo/activity/DiscActivity$TimerInterval;->this$0:Lcom/living/emo/activity/DiscActivity;

    invoke-static {v0}, Lcom/living/emo/activity/DiscActivity;->access$1100(Lcom/living/emo/activity/DiscActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/living/emo/activity/DiscActivity$TimerInterval;->this$0:Lcom/living/emo/activity/DiscActivity;

    invoke-static {v0}, Lcom/living/emo/activity/DiscActivity;->access$1200(Lcom/living/emo/activity/DiscActivity;)I

    move-result v0

    if-lez v0, :cond_2

    .line 275
    iget-object v0, p0, Lcom/living/emo/activity/DiscActivity$TimerInterval;->this$0:Lcom/living/emo/activity/DiscActivity;

    invoke-static {v0}, Lcom/living/emo/activity/DiscActivity;->access$1700(Lcom/living/emo/activity/DiscActivity;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 276
    iget-object v0, p0, Lcom/living/emo/activity/DiscActivity$TimerInterval;->this$0:Lcom/living/emo/activity/DiscActivity;

    invoke-static {v0}, Lcom/living/emo/activity/DiscActivity;->access$300(Lcom/living/emo/activity/DiscActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v5, p0, Lcom/living/emo/activity/DiscActivity$TimerInterval;->this$0:Lcom/living/emo/activity/DiscActivity;

    invoke-static {v5}, Lcom/living/emo/activity/DiscActivity;->access$1800(Lcom/living/emo/activity/DiscActivity;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v0, v5, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 277
    iget-object v0, p0, Lcom/living/emo/activity/DiscActivity$TimerInterval;->this$0:Lcom/living/emo/activity/DiscActivity;

    invoke-static {v0, v1}, Lcom/living/emo/activity/DiscActivity;->access$1702(Lcom/living/emo/activity/DiscActivity;Z)Z

    goto :goto_0

    .line 279
    :cond_2
    iget-object v0, p0, Lcom/living/emo/activity/DiscActivity$TimerInterval;->this$0:Lcom/living/emo/activity/DiscActivity;

    invoke-static {v0}, Lcom/living/emo/activity/DiscActivity;->access$1000(Lcom/living/emo/activity/DiscActivity;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/living/emo/activity/DiscActivity$TimerInterval;->this$0:Lcom/living/emo/activity/DiscActivity;

    invoke-static {v0}, Lcom/living/emo/activity/DiscActivity;->access$1100(Lcom/living/emo/activity/DiscActivity;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/living/emo/activity/DiscActivity$TimerInterval;->this$0:Lcom/living/emo/activity/DiscActivity;

    invoke-static {v0}, Lcom/living/emo/activity/DiscActivity;->access$1200(Lcom/living/emo/activity/DiscActivity;)I

    move-result v0

    if-gtz v0, :cond_5

    .line 281
    :cond_4
    iget-object v0, p0, Lcom/living/emo/activity/DiscActivity$TimerInterval;->this$0:Lcom/living/emo/activity/DiscActivity;

    invoke-static {v0}, Lcom/living/emo/activity/DiscActivity;->access$1700(Lcom/living/emo/activity/DiscActivity;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 282
    iget-object v0, p0, Lcom/living/emo/activity/DiscActivity$TimerInterval;->this$0:Lcom/living/emo/activity/DiscActivity;

    invoke-static {v0}, Lcom/living/emo/activity/DiscActivity;->access$300(Lcom/living/emo/activity/DiscActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v5, p0, Lcom/living/emo/activity/DiscActivity$TimerInterval;->this$0:Lcom/living/emo/activity/DiscActivity;

    invoke-static {v5}, Lcom/living/emo/activity/DiscActivity;->access$1800(Lcom/living/emo/activity/DiscActivity;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 283
    iget-object v0, p0, Lcom/living/emo/activity/DiscActivity$TimerInterval;->this$0:Lcom/living/emo/activity/DiscActivity;

    invoke-static {v0}, Lcom/living/emo/activity/DiscActivity;->access$300(Lcom/living/emo/activity/DiscActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v5, p0, Lcom/living/emo/activity/DiscActivity$TimerInterval;->this$0:Lcom/living/emo/activity/DiscActivity;

    invoke-static {v5}, Lcom/living/emo/activity/DiscActivity;->access$1500(Lcom/living/emo/activity/DiscActivity;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v0, v5, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 284
    iget-object v0, p0, Lcom/living/emo/activity/DiscActivity$TimerInterval;->this$0:Lcom/living/emo/activity/DiscActivity;

    invoke-static {v0, v4}, Lcom/living/emo/activity/DiscActivity;->access$1702(Lcom/living/emo/activity/DiscActivity;Z)Z

    .line 288
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/living/emo/activity/DiscActivity$TimerInterval;->this$0:Lcom/living/emo/activity/DiscActivity;

    invoke-static {v0}, Lcom/living/emo/activity/DiscActivity;->access$1400(Lcom/living/emo/activity/DiscActivity;)Z

    move-result v0

    const-string v2, "run:isTask "

    if-eqz v0, :cond_6

    .line 290
    iget-object v0, p0, Lcom/living/emo/activity/DiscActivity$TimerInterval;->this$0:Lcom/living/emo/activity/DiscActivity;

    invoke-static {v0}, Lcom/living/emo/activity/DiscActivity;->access$1900(Lcom/living/emo/activity/DiscActivity;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 291
    invoke-static {}, Lcom/living/emo/activity/DiscActivity;->access$1300()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/living/emo/activity/DiscActivity$TimerInterval;->this$0:Lcom/living/emo/activity/DiscActivity;

    invoke-static {v2}, Lcom/living/emo/activity/DiscActivity;->access$1900(Lcom/living/emo/activity/DiscActivity;)Z

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/living/emo/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Lcom/living/emo/activity/DiscActivity$TimerInterval;->this$0:Lcom/living/emo/activity/DiscActivity;

    invoke-static {v0}, Lcom/living/emo/activity/DiscActivity;->access$2200(Lcom/living/emo/activity/DiscActivity;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    iget-object v3, p0, Lcom/living/emo/activity/DiscActivity$TimerInterval;->this$0:Lcom/living/emo/activity/DiscActivity;

    invoke-static {v3}, Lcom/living/emo/activity/DiscActivity;->access$2100(Lcom/living/emo/activity/DiscActivity;)Ljava/lang/Runnable;

    move-result-object v3

    const-wide/16 v4, 0xa

    const-wide/16 v6, 0x14

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v2 .. v8}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/living/emo/activity/DiscActivity;->access$2002(Lcom/living/emo/activity/DiscActivity;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    .line 293
    iget-object v0, p0, Lcom/living/emo/activity/DiscActivity$TimerInterval;->this$0:Lcom/living/emo/activity/DiscActivity;

    invoke-static {v0, v1}, Lcom/living/emo/activity/DiscActivity;->access$1902(Lcom/living/emo/activity/DiscActivity;Z)Z

    goto :goto_1

    .line 296
    :cond_6
    iget-object v0, p0, Lcom/living/emo/activity/DiscActivity$TimerInterval;->this$0:Lcom/living/emo/activity/DiscActivity;

    invoke-static {v0}, Lcom/living/emo/activity/DiscActivity;->access$1900(Lcom/living/emo/activity/DiscActivity;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 297
    iget-object v0, p0, Lcom/living/emo/activity/DiscActivity$TimerInterval;->this$0:Lcom/living/emo/activity/DiscActivity;

    invoke-static {v0}, Lcom/living/emo/activity/DiscActivity;->access$2000(Lcom/living/emo/activity/DiscActivity;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 298
    invoke-static {}, Lcom/living/emo/activity/DiscActivity;->access$1300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/living/emo/activity/DiscActivity$TimerInterval;->this$0:Lcom/living/emo/activity/DiscActivity;

    invoke-static {v2}, Lcom/living/emo/activity/DiscActivity;->access$1900(Lcom/living/emo/activity/DiscActivity;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/living/emo/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    iget-object v0, p0, Lcom/living/emo/activity/DiscActivity$TimerInterval;->this$0:Lcom/living/emo/activity/DiscActivity;

    invoke-static {v0}, Lcom/living/emo/activity/DiscActivity;->access$2000(Lcom/living/emo/activity/DiscActivity;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 301
    :cond_7
    iget-object v0, p0, Lcom/living/emo/activity/DiscActivity$TimerInterval;->this$0:Lcom/living/emo/activity/DiscActivity;

    invoke-static {v0, v4}, Lcom/living/emo/activity/DiscActivity;->access$1902(Lcom/living/emo/activity/DiscActivity;Z)Z

    :cond_8
    :goto_1
    return-void
.end method
