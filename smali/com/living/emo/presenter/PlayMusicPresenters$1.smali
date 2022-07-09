.class Lcom/living/emo/presenter/PlayMusicPresenters$1;
.super Ljava/lang/Object;
.source "PlayMusicPresenters.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/living/emo/presenter/PlayMusicPresenters;->loadResources()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/living/emo/presenter/PlayMusicPresenters;


# direct methods
.method constructor <init>(Lcom/living/emo/presenter/PlayMusicPresenters;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/living/emo/presenter/PlayMusicPresenters$1;->this$0:Lcom/living/emo/presenter/PlayMusicPresenters;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/living/emo/presenter/PlayMusicPresenters$1;->this$0:Lcom/living/emo/presenter/PlayMusicPresenters;

    invoke-static {v0}, Lcom/living/emo/presenter/PlayMusicPresenters;->access$000(Lcom/living/emo/presenter/PlayMusicPresenters;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    goto :goto_0

    .line 81
    :cond_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    :goto_0
    return-void
.end method
