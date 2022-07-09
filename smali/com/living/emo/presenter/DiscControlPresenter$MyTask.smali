.class Lcom/living/emo/presenter/DiscControlPresenter$MyTask;
.super Ljava/lang/Object;
.source "DiscControlPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/living/emo/presenter/DiscControlPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/living/emo/presenter/DiscControlPresenter;


# direct methods
.method private constructor <init>(Lcom/living/emo/presenter/DiscControlPresenter;)V
    .locals 0

    .line 305
    iput-object p1, p0, Lcom/living/emo/presenter/DiscControlPresenter$MyTask;->this$0:Lcom/living/emo/presenter/DiscControlPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/living/emo/presenter/DiscControlPresenter;Lcom/living/emo/presenter/DiscControlPresenter$1;)V
    .locals 0

    .line 305
    invoke-direct {p0, p1}, Lcom/living/emo/presenter/DiscControlPresenter$MyTask;-><init>(Lcom/living/emo/presenter/DiscControlPresenter;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 309
    iget-object v0, p0, Lcom/living/emo/presenter/DiscControlPresenter$MyTask;->this$0:Lcom/living/emo/presenter/DiscControlPresenter;

    invoke-static {v0}, Lcom/living/emo/presenter/DiscControlPresenter;->access$300(Lcom/living/emo/presenter/DiscControlPresenter;)Ljava/lang/String;

    move-result-object v0

    .line 310
    iget-object v1, p0, Lcom/living/emo/presenter/DiscControlPresenter$MyTask;->this$0:Lcom/living/emo/presenter/DiscControlPresenter;

    invoke-static {v1}, Lcom/living/emo/presenter/DiscControlPresenter;->access$400(Lcom/living/emo/presenter/DiscControlPresenter;)I

    move-result v1

    .line 311
    iget-object v2, p0, Lcom/living/emo/presenter/DiscControlPresenter$MyTask;->this$0:Lcom/living/emo/presenter/DiscControlPresenter;

    invoke-static {v2}, Lcom/living/emo/presenter/DiscControlPresenter;->access$500(Lcom/living/emo/presenter/DiscControlPresenter;)Lcom/living/emo/interfaces/IPlayerControlView;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/living/emo/interfaces/IPlayerControlView;->onChangeSeekBar(Ljava/lang/String;I)V

    return-void
.end method
