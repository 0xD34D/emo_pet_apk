.class Lcom/living/emo/activity/DrumActivity$2;
.super Ljava/lang/Object;
.source "DrumActivity.java"

# interfaces
.implements Lcom/living/emo/bean/DrumGameBean$DrumGameResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/living/emo/activity/DrumActivity;->onMessageEvent(Lcom/living/emo/event/MessageEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/living/emo/activity/DrumActivity;


# direct methods
.method constructor <init>(Lcom/living/emo/activity/DrumActivity;)V
    .locals 0

    .line 264
    iput-object p1, p0, Lcom/living/emo/activity/DrumActivity$2;->this$0:Lcom/living/emo/activity/DrumActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public animError()V
    .locals 0

    return-void
.end method

.method public animSuccess()V
    .locals 0

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

.method public gameOver()V
    .locals 2

    .line 297
    iget-object v0, p0, Lcom/living/emo/activity/DrumActivity$2;->this$0:Lcom/living/emo/activity/DrumActivity;

    invoke-virtual {v0}, Lcom/living/emo/activity/DrumActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/living/emo/activity/DrumActivity$2;->this$0:Lcom/living/emo/activity/DrumActivity;

    invoke-virtual {v0}, Lcom/living/emo/activity/DrumActivity;->finish()V

    .line 299
    iget-object v0, p0, Lcom/living/emo/activity/DrumActivity$2;->this$0:Lcom/living/emo/activity/DrumActivity;

    invoke-static {v0}, Lcom/living/emo/activity/DrumActivity;->access$600(Lcom/living/emo/activity/DrumActivity;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/living/emo/activity/DrumActivity$2;->this$0:Lcom/living/emo/activity/DrumActivity;

    invoke-static {v0}, Lcom/living/emo/activity/DrumActivity;->access$600(Lcom/living/emo/activity/DrumActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 301
    iget-object v0, p0, Lcom/living/emo/activity/DrumActivity$2;->this$0:Lcom/living/emo/activity/DrumActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/living/emo/activity/DrumActivity;->access$602(Lcom/living/emo/activity/DrumActivity;Landroid/webkit/WebView;)Landroid/webkit/WebView;

    .line 304
    :cond_0
    invoke-static {}, Lcom/living/emo/activity/DrumActivity;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gameOver:exitActivity "

    invoke-static {v0, v1}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public gameReady()V
    .locals 4

    .line 267
    iget-object v0, p0, Lcom/living/emo/activity/DrumActivity$2;->this$0:Lcom/living/emo/activity/DrumActivity;

    invoke-static {v0}, Lcom/living/emo/activity/DrumActivity;->access$500(Lcom/living/emo/activity/DrumActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/living/emo/activity/DrumActivity$2;->this$0:Lcom/living/emo/activity/DrumActivity;

    invoke-static {v1}, Lcom/living/emo/activity/DrumActivity;->access$400(Lcom/living/emo/activity/DrumActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 268
    iget-object v0, p0, Lcom/living/emo/activity/DrumActivity$2;->this$0:Lcom/living/emo/activity/DrumActivity;

    invoke-static {v0}, Lcom/living/emo/activity/DrumActivity;->access$500(Lcom/living/emo/activity/DrumActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/living/emo/activity/-$$Lambda$DrumActivity$2$TZ1TIp-a9IqQ9Ni9ppS15u9l3Jg;

    invoke-direct {v1, p0}, Lcom/living/emo/activity/-$$Lambda$DrumActivity$2$TZ1TIp-a9IqQ9Ni9ppS15u9l3Jg;-><init>(Lcom/living/emo/activity/DrumActivity$2;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public synthetic lambda$gameReady$0$DrumActivity$2()V
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/living/emo/activity/DrumActivity$2;->this$0:Lcom/living/emo/activity/DrumActivity;

    invoke-static {v0}, Lcom/living/emo/activity/DrumActivity;->access$000(Lcom/living/emo/activity/DrumActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/living/emo/activity/DrumActivity$2;->this$0:Lcom/living/emo/activity/DrumActivity;

    invoke-static {v0}, Lcom/living/emo/activity/DrumActivity;->access$000(Lcom/living/emo/activity/DrumActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public legShaking()V
    .locals 0

    return-void
.end method

.method public startGame()V
    .locals 0

    return-void
.end method
