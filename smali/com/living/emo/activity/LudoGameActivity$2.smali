.class Lcom/living/emo/activity/LudoGameActivity$2;
.super Ljava/lang/Object;
.source "LudoGameActivity.java"

# interfaces
.implements Lcom/living/emo/bean/LudoGameBean$LudoGameResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/living/emo/activity/LudoGameActivity;->onMessageEvent(Lcom/living/emo/event/MessageEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/living/emo/activity/LudoGameActivity;


# direct methods
.method constructor <init>(Lcom/living/emo/activity/LudoGameActivity;)V
    .locals 0

    .line 323
    iput-object p1, p0, Lcom/living/emo/activity/LudoGameActivity$2;->this$0:Lcom/living/emo/activity/LudoGameActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public animError()V
    .locals 2

    .line 336
    iget-object v0, p0, Lcom/living/emo/activity/LudoGameActivity$2;->this$0:Lcom/living/emo/activity/LudoGameActivity;

    const-string v1, "emo If you have something to do, you should drive in first\uff01"

    invoke-virtual {v0, v1}, Lcom/living/emo/activity/LudoGameActivity;->showToast(Ljava/lang/String;)V

    .line 337
    iget-object v0, p0, Lcom/living/emo/activity/LudoGameActivity$2;->this$0:Lcom/living/emo/activity/LudoGameActivity;

    invoke-virtual {v0}, Lcom/living/emo/activity/LudoGameActivity;->finish()V

    return-void
.end method

.method public animSuccess()V
    .locals 3

    .line 342
    iget-object v0, p0, Lcom/living/emo/activity/LudoGameActivity$2;->this$0:Lcom/living/emo/activity/LudoGameActivity;

    invoke-static {v0}, Lcom/living/emo/activity/LudoGameActivity;->access$900(Lcom/living/emo/activity/LudoGameActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "animSuccess"

    const-string v1, "animSuccess: \u5f00\u59cb\u6267\u884c\u56de\u8c03"

    .line 343
    invoke-static {v0, v1}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    iget-object v0, p0, Lcom/living/emo/activity/LudoGameActivity$2;->this$0:Lcom/living/emo/activity/LudoGameActivity;

    invoke-static {v0}, Lcom/living/emo/activity/LudoGameActivity;->access$1400(Lcom/living/emo/activity/LudoGameActivity;)Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:listenToEMO(\'dicenum"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/living/emo/activity/LudoGameActivity$2;->this$0:Lcom/living/emo/activity/LudoGameActivity;

    invoke-static {v2}, Lcom/living/emo/activity/LudoGameActivity;->access$200(Lcom/living/emo/activity/LudoGameActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 345
    iget-object v0, p0, Lcom/living/emo/activity/LudoGameActivity$2;->this$0:Lcom/living/emo/activity/LudoGameActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/living/emo/activity/LudoGameActivity;->access$902(Lcom/living/emo/activity/LudoGameActivity;Z)Z

    :cond_0
    return-void
.end method

.method public error()V
    .locals 1

    .line 356
    iget-object v0, p0, Lcom/living/emo/activity/LudoGameActivity$2;->this$0:Lcom/living/emo/activity/LudoGameActivity;

    invoke-virtual {v0}, Lcom/living/emo/activity/LudoGameActivity;->finish()V

    return-void
.end method

.method public gameOver()V
    .locals 2

    .line 361
    iget-object v0, p0, Lcom/living/emo/activity/LudoGameActivity$2;->this$0:Lcom/living/emo/activity/LudoGameActivity;

    invoke-virtual {v0}, Lcom/living/emo/activity/LudoGameActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/living/emo/activity/LudoGameActivity$2;->this$0:Lcom/living/emo/activity/LudoGameActivity;

    invoke-virtual {v0}, Lcom/living/emo/activity/LudoGameActivity;->finish()V

    .line 363
    iget-object v0, p0, Lcom/living/emo/activity/LudoGameActivity$2;->this$0:Lcom/living/emo/activity/LudoGameActivity;

    invoke-static {v0}, Lcom/living/emo/activity/LudoGameActivity;->access$1400(Lcom/living/emo/activity/LudoGameActivity;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/living/emo/activity/LudoGameActivity$2;->this$0:Lcom/living/emo/activity/LudoGameActivity;

    invoke-static {v0}, Lcom/living/emo/activity/LudoGameActivity;->access$1400(Lcom/living/emo/activity/LudoGameActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 365
    iget-object v0, p0, Lcom/living/emo/activity/LudoGameActivity$2;->this$0:Lcom/living/emo/activity/LudoGameActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/living/emo/activity/LudoGameActivity;->access$1402(Lcom/living/emo/activity/LudoGameActivity;Landroid/webkit/WebView;)Landroid/webkit/WebView;

    :cond_0
    return-void
.end method

.method public gameReady()V
    .locals 4

    .line 326
    iget-object v0, p0, Lcom/living/emo/activity/LudoGameActivity$2;->this$0:Lcom/living/emo/activity/LudoGameActivity;

    invoke-static {v0}, Lcom/living/emo/activity/LudoGameActivity;->access$1000(Lcom/living/emo/activity/LudoGameActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/living/emo/activity/LudoGameActivity$2;->this$0:Lcom/living/emo/activity/LudoGameActivity;

    invoke-static {v1}, Lcom/living/emo/activity/LudoGameActivity;->access$1300(Lcom/living/emo/activity/LudoGameActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 327
    iget-object v0, p0, Lcom/living/emo/activity/LudoGameActivity$2;->this$0:Lcom/living/emo/activity/LudoGameActivity;

    invoke-static {v0}, Lcom/living/emo/activity/LudoGameActivity;->access$1000(Lcom/living/emo/activity/LudoGameActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/living/emo/activity/-$$Lambda$LudoGameActivity$2$KLubr-mfvLsMXIIsbhb46o_uGP8;

    invoke-direct {v1, p0}, Lcom/living/emo/activity/-$$Lambda$LudoGameActivity$2$KLubr-mfvLsMXIIsbhb46o_uGP8;-><init>(Lcom/living/emo/activity/LudoGameActivity$2;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public synthetic lambda$gameReady$0$LudoGameActivity$2()V
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/living/emo/activity/LudoGameActivity$2;->this$0:Lcom/living/emo/activity/LudoGameActivity;

    invoke-static {v0}, Lcom/living/emo/activity/LudoGameActivity;->access$000(Lcom/living/emo/activity/LudoGameActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/living/emo/activity/LudoGameActivity$2;->this$0:Lcom/living/emo/activity/LudoGameActivity;

    invoke-static {v0}, Lcom/living/emo/activity/LudoGameActivity;->access$000(Lcom/living/emo/activity/LudoGameActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public startGame()V
    .locals 2

    .line 351
    iget-object v0, p0, Lcom/living/emo/activity/LudoGameActivity$2;->this$0:Lcom/living/emo/activity/LudoGameActivity;

    invoke-static {v0}, Lcom/living/emo/activity/LudoGameActivity;->access$1400(Lcom/living/emo/activity/LudoGameActivity;)Landroid/webkit/WebView;

    move-result-object v0

    const-string v1, "javascript:startGame()"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
