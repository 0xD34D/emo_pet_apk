.class Lcom/living/emo/activity/WakeDemonActivity$5;
.super Ljava/lang/Object;
.source "WakeDemonActivity.java"

# interfaces
.implements Lcom/living/emo/bean/WakeDemonBean$WakeDemonResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/living/emo/activity/WakeDemonActivity;->onMessageEvent(Lcom/living/emo/event/MessageEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/living/emo/activity/WakeDemonActivity;


# direct methods
.method constructor <init>(Lcom/living/emo/activity/WakeDemonActivity;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/living/emo/activity/WakeDemonActivity$5;->this$0:Lcom/living/emo/activity/WakeDemonActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error()V
    .locals 0

    return-void
.end method

.method public gameOver()V
    .locals 3

    .line 121
    iget-object v0, p0, Lcom/living/emo/activity/WakeDemonActivity$5;->this$0:Lcom/living/emo/activity/WakeDemonActivity;

    invoke-static {v0}, Lcom/living/emo/activity/WakeDemonActivity;->access$800(Lcom/living/emo/activity/WakeDemonActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 122
    iget-object v0, p0, Lcom/living/emo/activity/WakeDemonActivity$5;->this$0:Lcom/living/emo/activity/WakeDemonActivity;

    invoke-static {v0}, Lcom/living/emo/activity/WakeDemonActivity;->access$900(Lcom/living/emo/activity/WakeDemonActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 123
    iget-object v0, p0, Lcom/living/emo/activity/WakeDemonActivity$5;->this$0:Lcom/living/emo/activity/WakeDemonActivity;

    invoke-static {v0}, Lcom/living/emo/activity/WakeDemonActivity;->access$1000(Lcom/living/emo/activity/WakeDemonActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 124
    iget-object v0, p0, Lcom/living/emo/activity/WakeDemonActivity$5;->this$0:Lcom/living/emo/activity/WakeDemonActivity;

    invoke-static {v0}, Lcom/living/emo/activity/WakeDemonActivity;->access$400(Lcom/living/emo/activity/WakeDemonActivity;)Lcom/living/emo/util/AudioUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/living/emo/util/AudioUtil;->stopPlay()V

    .line 125
    iget-object v0, p0, Lcom/living/emo/activity/WakeDemonActivity$5;->this$0:Lcom/living/emo/activity/WakeDemonActivity;

    invoke-static {v0}, Lcom/living/emo/activity/WakeDemonActivity;->access$400(Lcom/living/emo/activity/WakeDemonActivity;)Lcom/living/emo/util/AudioUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/living/emo/activity/WakeDemonActivity$5;->this$0:Lcom/living/emo/activity/WakeDemonActivity;

    const/high16 v2, 0x7f0f0000

    invoke-virtual {v0, v1, v2}, Lcom/living/emo/util/AudioUtil;->play(Landroid/content/Context;I)V

    return-void
.end method

.method public gameReady()V
    .locals 4

    .line 103
    iget-object v0, p0, Lcom/living/emo/activity/WakeDemonActivity$5;->this$0:Lcom/living/emo/activity/WakeDemonActivity;

    invoke-static {v0}, Lcom/living/emo/activity/WakeDemonActivity;->access$700(Lcom/living/emo/activity/WakeDemonActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/living/emo/activity/WakeDemonActivity$5;->this$0:Lcom/living/emo/activity/WakeDemonActivity;

    invoke-static {v1}, Lcom/living/emo/activity/WakeDemonActivity;->access$600(Lcom/living/emo/activity/WakeDemonActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 104
    iget-object v0, p0, Lcom/living/emo/activity/WakeDemonActivity$5;->this$0:Lcom/living/emo/activity/WakeDemonActivity;

    invoke-static {v0}, Lcom/living/emo/activity/WakeDemonActivity;->access$700(Lcom/living/emo/activity/WakeDemonActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/living/emo/activity/-$$Lambda$WakeDemonActivity$5$0rp_gTZuoRWuQwSunS2G3CiJbjE;

    invoke-direct {v1, p0}, Lcom/living/emo/activity/-$$Lambda$WakeDemonActivity$5$0rp_gTZuoRWuQwSunS2G3CiJbjE;-><init>(Lcom/living/emo/activity/WakeDemonActivity$5;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public synthetic lambda$gameReady$0$WakeDemonActivity$5()V
    .locals 3

    .line 105
    iget-object v0, p0, Lcom/living/emo/activity/WakeDemonActivity$5;->this$0:Lcom/living/emo/activity/WakeDemonActivity;

    invoke-static {v0}, Lcom/living/emo/activity/WakeDemonActivity;->access$100(Lcom/living/emo/activity/WakeDemonActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/living/emo/activity/WakeDemonActivity$5;->this$0:Lcom/living/emo/activity/WakeDemonActivity;

    invoke-static {v0}, Lcom/living/emo/activity/WakeDemonActivity;->access$100(Lcom/living/emo/activity/WakeDemonActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/living/emo/activity/WakeDemonActivity$5;->this$0:Lcom/living/emo/activity/WakeDemonActivity;

    invoke-static {v0}, Lcom/living/emo/activity/WakeDemonActivity;->access$400(Lcom/living/emo/activity/WakeDemonActivity;)Lcom/living/emo/util/AudioUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/living/emo/activity/WakeDemonActivity$5;->this$0:Lcom/living/emo/activity/WakeDemonActivity;

    const v2, 0x7f0f0002

    invoke-virtual {v0, v1, v2}, Lcom/living/emo/util/AudioUtil;->play(Landroid/content/Context;I)V

    return-void
.end method

.method public startGame()V
    .locals 3

    .line 114
    iget-object v0, p0, Lcom/living/emo/activity/WakeDemonActivity$5;->this$0:Lcom/living/emo/activity/WakeDemonActivity;

    invoke-static {v0}, Lcom/living/emo/activity/WakeDemonActivity;->access$800(Lcom/living/emo/activity/WakeDemonActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 115
    iget-object v0, p0, Lcom/living/emo/activity/WakeDemonActivity$5;->this$0:Lcom/living/emo/activity/WakeDemonActivity;

    invoke-static {v0}, Lcom/living/emo/activity/WakeDemonActivity;->access$900(Lcom/living/emo/activity/WakeDemonActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 116
    iget-object v0, p0, Lcom/living/emo/activity/WakeDemonActivity$5;->this$0:Lcom/living/emo/activity/WakeDemonActivity;

    invoke-static {v0}, Lcom/living/emo/activity/WakeDemonActivity;->access$1000(Lcom/living/emo/activity/WakeDemonActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method
