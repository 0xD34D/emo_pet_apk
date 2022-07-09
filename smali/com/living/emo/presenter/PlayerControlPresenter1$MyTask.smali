.class Lcom/living/emo/presenter/PlayerControlPresenter1$MyTask;
.super Ljava/lang/Object;
.source "PlayerControlPresenter1.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/living/emo/presenter/PlayerControlPresenter1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/living/emo/presenter/PlayerControlPresenter1;


# direct methods
.method private constructor <init>(Lcom/living/emo/presenter/PlayerControlPresenter1;)V
    .locals 0

    .line 313
    iput-object p1, p0, Lcom/living/emo/presenter/PlayerControlPresenter1$MyTask;->this$0:Lcom/living/emo/presenter/PlayerControlPresenter1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/living/emo/presenter/PlayerControlPresenter1;Lcom/living/emo/presenter/PlayerControlPresenter1$1;)V
    .locals 0

    .line 313
    invoke-direct {p0, p1}, Lcom/living/emo/presenter/PlayerControlPresenter1$MyTask;-><init>(Lcom/living/emo/presenter/PlayerControlPresenter1;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 317
    iget-object v0, p0, Lcom/living/emo/presenter/PlayerControlPresenter1$MyTask;->this$0:Lcom/living/emo/presenter/PlayerControlPresenter1;

    invoke-static {v0}, Lcom/living/emo/presenter/PlayerControlPresenter1;->access$500(Lcom/living/emo/presenter/PlayerControlPresenter1;)Ljava/lang/String;

    move-result-object v0

    .line 318
    iget-object v1, p0, Lcom/living/emo/presenter/PlayerControlPresenter1$MyTask;->this$0:Lcom/living/emo/presenter/PlayerControlPresenter1;

    invoke-static {v1}, Lcom/living/emo/presenter/PlayerControlPresenter1;->access$600(Lcom/living/emo/presenter/PlayerControlPresenter1;)I

    move-result v1

    .line 319
    iget-object v2, p0, Lcom/living/emo/presenter/PlayerControlPresenter1$MyTask;->this$0:Lcom/living/emo/presenter/PlayerControlPresenter1;

    invoke-static {v2}, Lcom/living/emo/presenter/PlayerControlPresenter1;->access$700(Lcom/living/emo/presenter/PlayerControlPresenter1;)Lcom/living/emo/interfaces/IPlayerControlView;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/living/emo/interfaces/IPlayerControlView;->onChangeSeekBar(Ljava/lang/String;I)V

    return-void
.end method
