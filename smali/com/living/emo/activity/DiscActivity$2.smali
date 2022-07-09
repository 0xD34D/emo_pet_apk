.class Lcom/living/emo/activity/DiscActivity$2;
.super Ljava/lang/Object;
.source "DiscActivity.java"

# interfaces
.implements Lcom/living/emo/bean/AmusementBean$AmusementResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/living/emo/activity/DiscActivity;->onMessageEvent(Lcom/living/emo/event/MessageEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/living/emo/activity/DiscActivity;


# direct methods
.method constructor <init>(Lcom/living/emo/activity/DiscActivity;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/living/emo/activity/DiscActivity$2;->this$0:Lcom/living/emo/activity/DiscActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public GameOver()V
    .locals 2

    const-string v0, "jks"

    const-string v1, "this is back"

    .line 219
    invoke-static {v0, v1}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/living/emo/activity/DiscActivity$2;->this$0:Lcom/living/emo/activity/DiscActivity;

    invoke-virtual {v0}, Lcom/living/emo/activity/DiscActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/living/emo/activity/DiscActivity$2;->this$0:Lcom/living/emo/activity/DiscActivity;

    invoke-virtual {v0}, Lcom/living/emo/activity/DiscActivity;->finish()V

    .line 222
    iget-object v0, p0, Lcom/living/emo/activity/DiscActivity$2;->this$0:Lcom/living/emo/activity/DiscActivity;

    invoke-static {v0}, Lcom/living/emo/activity/DiscActivity;->access$800(Lcom/living/emo/activity/DiscActivity;)V

    :cond_0
    return-void
.end method

.method public dance()V
    .locals 0

    return-void
.end method

.method public dazzling()V
    .locals 0

    return-void
.end method

.method public error()V
    .locals 0

    return-void
.end method

.method public gameReady()V
    .locals 4

    .line 179
    iget-object v0, p0, Lcom/living/emo/activity/DiscActivity$2;->this$0:Lcom/living/emo/activity/DiscActivity;

    invoke-static {v0}, Lcom/living/emo/activity/DiscActivity;->access$300(Lcom/living/emo/activity/DiscActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/living/emo/activity/DiscActivity$2$1;

    invoke-direct {v1, p0}, Lcom/living/emo/activity/DiscActivity$2$1;-><init>(Lcom/living/emo/activity/DiscActivity$2;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public legShaking()V
    .locals 0

    return-void
.end method

.method public stay()V
    .locals 0

    return-void
.end method
