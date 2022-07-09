.class Lcom/living/emo/activity/MemoryActivity$2;
.super Ljava/lang/Object;
.source "MemoryActivity.java"

# interfaces
.implements Lcom/living/emo/bean/MemoryBean$MemoryResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/living/emo/activity/MemoryActivity;->onMessageEvent(Lcom/living/emo/event/MessageEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/living/emo/activity/MemoryActivity;


# direct methods
.method constructor <init>(Lcom/living/emo/activity/MemoryActivity;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/living/emo/activity/MemoryActivity$2;->this$0:Lcom/living/emo/activity/MemoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dance()V
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/living/emo/activity/MemoryActivity$2;->this$0:Lcom/living/emo/activity/MemoryActivity;

    invoke-static {v0}, Lcom/living/emo/activity/MemoryActivity;->access$400(Lcom/living/emo/activity/MemoryActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/living/emo/activity/MemoryActivity$2;->this$0:Lcom/living/emo/activity/MemoryActivity;

    invoke-static {v0}, Lcom/living/emo/activity/MemoryActivity;->access$500(Lcom/living/emo/activity/MemoryActivity;)Landroid/webkit/WebView;

    move-result-object v0

    const-string v1, "javascript:nowRepeat()"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/living/emo/activity/MemoryActivity$2;->this$0:Lcom/living/emo/activity/MemoryActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/living/emo/activity/MemoryActivity;->access$402(Lcom/living/emo/activity/MemoryActivity;Z)Z

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/living/emo/activity/MemoryActivity$2;->this$0:Lcom/living/emo/activity/MemoryActivity;

    invoke-static {v0}, Lcom/living/emo/activity/MemoryActivity;->access$600(Lcom/living/emo/activity/MemoryActivity;)Lcom/living/emo/presenter/PlayMusicPresenters;

    move-result-object v0

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v1}, Lcom/living/emo/presenter/PlayMusicPresenters;->setVol(F)Lcom/living/emo/presenter/PlayMusicPresenters;

    return-void
.end method

.method public danceError()V
    .locals 0

    return-void
.end method

.method public error()V
    .locals 0

    return-void
.end method

.method public gameOver()V
    .locals 2

    .line 191
    iget-object v0, p0, Lcom/living/emo/activity/MemoryActivity$2;->this$0:Lcom/living/emo/activity/MemoryActivity;

    invoke-virtual {v0}, Lcom/living/emo/activity/MemoryActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/living/emo/activity/MemoryActivity$2;->this$0:Lcom/living/emo/activity/MemoryActivity;

    invoke-virtual {v0}, Lcom/living/emo/activity/MemoryActivity;->finish()V

    .line 193
    iget-object v0, p0, Lcom/living/emo/activity/MemoryActivity$2;->this$0:Lcom/living/emo/activity/MemoryActivity;

    invoke-static {v0}, Lcom/living/emo/activity/MemoryActivity;->access$500(Lcom/living/emo/activity/MemoryActivity;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/living/emo/activity/MemoryActivity$2;->this$0:Lcom/living/emo/activity/MemoryActivity;

    invoke-static {v0}, Lcom/living/emo/activity/MemoryActivity;->access$500(Lcom/living/emo/activity/MemoryActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 195
    iget-object v0, p0, Lcom/living/emo/activity/MemoryActivity$2;->this$0:Lcom/living/emo/activity/MemoryActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/living/emo/activity/MemoryActivity;->access$502(Lcom/living/emo/activity/MemoryActivity;Landroid/webkit/WebView;)Landroid/webkit/WebView;

    :cond_0
    return-void
.end method

.method public gameReady()V
    .locals 4

    .line 154
    iget-object v0, p0, Lcom/living/emo/activity/MemoryActivity$2;->this$0:Lcom/living/emo/activity/MemoryActivity;

    invoke-static {v0}, Lcom/living/emo/activity/MemoryActivity;->access$300(Lcom/living/emo/activity/MemoryActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/living/emo/activity/MemoryActivity$2;->this$0:Lcom/living/emo/activity/MemoryActivity;

    invoke-static {v1}, Lcom/living/emo/activity/MemoryActivity;->access$200(Lcom/living/emo/activity/MemoryActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 155
    iget-object v0, p0, Lcom/living/emo/activity/MemoryActivity$2;->this$0:Lcom/living/emo/activity/MemoryActivity;

    invoke-static {v0}, Lcom/living/emo/activity/MemoryActivity;->access$300(Lcom/living/emo/activity/MemoryActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/living/emo/activity/-$$Lambda$MemoryActivity$2$kyANJIXVDcPMh-A6G0KU55uD5RM;

    invoke-direct {v1, p0}, Lcom/living/emo/activity/-$$Lambda$MemoryActivity$2$kyANJIXVDcPMh-A6G0KU55uD5RM;-><init>(Lcom/living/emo/activity/MemoryActivity$2;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public synthetic lambda$gameReady$0$MemoryActivity$2()V
    .locals 3

    .line 156
    iget-object v0, p0, Lcom/living/emo/activity/MemoryActivity$2;->this$0:Lcom/living/emo/activity/MemoryActivity;

    invoke-static {v0}, Lcom/living/emo/activity/MemoryActivity;->access$000(Lcom/living/emo/activity/MemoryActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/living/emo/activity/MemoryActivity$2;->this$0:Lcom/living/emo/activity/MemoryActivity;

    invoke-static {v0}, Lcom/living/emo/activity/MemoryActivity;->access$000(Lcom/living/emo/activity/MemoryActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/living/emo/activity/MemoryActivity$2;->this$0:Lcom/living/emo/activity/MemoryActivity;

    invoke-static {v0}, Lcom/living/emo/activity/MemoryActivity;->access$600(Lcom/living/emo/activity/MemoryActivity;)Lcom/living/emo/presenter/PlayMusicPresenters;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/living/emo/presenter/PlayMusicPresenters;->setLoop(Z)Lcom/living/emo/presenter/PlayMusicPresenters;

    move-result-object v0

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v1}, Lcom/living/emo/presenter/PlayMusicPresenters;->setVol(F)Lcom/living/emo/presenter/PlayMusicPresenters;

    move-result-object v0

    new-instance v1, Lcom/living/emo/bean/MemoryMusicBean;

    const-string v2, "musics/emo_dance_beat_song.mp3"

    invoke-direct {v1, v2}, Lcom/living/emo/bean/MemoryMusicBean;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/living/emo/presenter/PlayMusicPresenters;->setResources(Lcom/living/emo/bean/MemoryMusicBean;)V

    .line 160
    iget-object v0, p0, Lcom/living/emo/activity/MemoryActivity$2;->this$0:Lcom/living/emo/activity/MemoryActivity;

    invoke-static {v0}, Lcom/living/emo/activity/MemoryActivity;->access$600(Lcom/living/emo/activity/MemoryActivity;)Lcom/living/emo/presenter/PlayMusicPresenters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/living/emo/presenter/PlayMusicPresenters;->play()V

    return-void
.end method

.method public startGame()V
    .locals 2

    .line 180
    invoke-static {}, Lcom/living/emo/activity/MemoryActivity;->access$700()Ljava/lang/String;

    move-result-object v0

    const-string v1, "startGame: 11111111111111"

    invoke-static {v0, v1}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/living/emo/activity/MemoryActivity$2;->this$0:Lcom/living/emo/activity/MemoryActivity;

    invoke-static {v0}, Lcom/living/emo/activity/MemoryActivity;->access$500(Lcom/living/emo/activity/MemoryActivity;)Landroid/webkit/WebView;

    move-result-object v0

    const-string v1, "javascript:startGame()"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
