.class Lcom/living/emo/presenter/DiscControlPresenter$1;
.super Ljava/lang/Object;
.source "DiscControlPresenter.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/living/emo/presenter/DiscControlPresenter;->loadResources()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/living/emo/presenter/DiscControlPresenter;


# direct methods
.method constructor <init>(Lcom/living/emo/presenter/DiscControlPresenter;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/living/emo/presenter/DiscControlPresenter$1;->this$0:Lcom/living/emo/presenter/DiscControlPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 175
    iget-object p1, p0, Lcom/living/emo/presenter/DiscControlPresenter$1;->this$0:Lcom/living/emo/presenter/DiscControlPresenter;

    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/living/emo/presenter/DiscControlPresenter;->access$002(Lcom/living/emo/presenter/DiscControlPresenter;I)I

    .line 176
    iget-object p1, p0, Lcom/living/emo/presenter/DiscControlPresenter$1;->this$0:Lcom/living/emo/presenter/DiscControlPresenter;

    invoke-virtual {p1}, Lcom/living/emo/presenter/DiscControlPresenter;->notificationChange()V

    .line 177
    iget-object p1, p0, Lcom/living/emo/presenter/DiscControlPresenter$1;->this$0:Lcom/living/emo/presenter/DiscControlPresenter;

    invoke-virtual {p1}, Lcom/living/emo/presenter/DiscControlPresenter;->reset()V

    .line 178
    iget-object p1, p0, Lcom/living/emo/presenter/DiscControlPresenter$1;->this$0:Lcom/living/emo/presenter/DiscControlPresenter;

    invoke-static {p1}, Lcom/living/emo/presenter/DiscControlPresenter;->access$100(Lcom/living/emo/presenter/DiscControlPresenter;)V

    return-void
.end method
