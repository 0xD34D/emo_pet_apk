.class Lcom/living/emo/presenter/PlayerControlPresenter1$1;
.super Ljava/lang/Object;
.source "PlayerControlPresenter1.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/living/emo/presenter/PlayerControlPresenter1;->initMediaPlayer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/living/emo/presenter/PlayerControlPresenter1;


# direct methods
.method constructor <init>(Lcom/living/emo/presenter/PlayerControlPresenter1;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/living/emo/presenter/PlayerControlPresenter1$1;->this$0:Lcom/living/emo/presenter/PlayerControlPresenter1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 87
    invoke-static {}, Lcom/living/emo/presenter/PlayerControlPresenter1;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "--------------setOnCompletionListener-------------------"

    invoke-static {p1, v0}, Lcom/living/emo/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object p1, p0, Lcom/living/emo/presenter/PlayerControlPresenter1$1;->this$0:Lcom/living/emo/presenter/PlayerControlPresenter1;

    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/living/emo/presenter/PlayerControlPresenter1;->access$102(Lcom/living/emo/presenter/PlayerControlPresenter1;I)I

    .line 89
    iget-object p1, p0, Lcom/living/emo/presenter/PlayerControlPresenter1$1;->this$0:Lcom/living/emo/presenter/PlayerControlPresenter1;

    invoke-virtual {p1}, Lcom/living/emo/presenter/PlayerControlPresenter1;->notificationChange()V

    .line 90
    iget-object p1, p0, Lcom/living/emo/presenter/PlayerControlPresenter1$1;->this$0:Lcom/living/emo/presenter/PlayerControlPresenter1;

    invoke-static {p1}, Lcom/living/emo/presenter/PlayerControlPresenter1;->access$200(Lcom/living/emo/presenter/PlayerControlPresenter1;)V

    .line 91
    iget-object p1, p0, Lcom/living/emo/presenter/PlayerControlPresenter1$1;->this$0:Lcom/living/emo/presenter/PlayerControlPresenter1;

    invoke-virtual {p1}, Lcom/living/emo/presenter/PlayerControlPresenter1;->reset()V

    .line 92
    iget-object p1, p0, Lcom/living/emo/presenter/PlayerControlPresenter1$1;->this$0:Lcom/living/emo/presenter/PlayerControlPresenter1;

    invoke-static {p1}, Lcom/living/emo/presenter/PlayerControlPresenter1;->access$300(Lcom/living/emo/presenter/PlayerControlPresenter1;)V

    return-void
.end method
