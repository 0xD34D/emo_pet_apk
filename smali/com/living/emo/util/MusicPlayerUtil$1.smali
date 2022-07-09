.class Lcom/living/emo/util/MusicPlayerUtil$1;
.super Ljava/lang/Object;
.source "MusicPlayerUtil.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/living/emo/util/MusicPlayerUtil;->createMediaplayerFromAssets(Ljava/lang/String;)Landroid/media/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/living/emo/util/MusicPlayerUtil;


# direct methods
.method constructor <init>(Lcom/living/emo/util/MusicPlayerUtil;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/living/emo/util/MusicPlayerUtil$1;->this$0:Lcom/living/emo/util/MusicPlayerUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    .line 171
    iget-object p1, p0, Lcom/living/emo/util/MusicPlayerUtil$1;->this$0:Lcom/living/emo/util/MusicPlayerUtil;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/living/emo/util/MusicPlayerUtil;->access$002(Lcom/living/emo/util/MusicPlayerUtil;Z)Z

    .line 172
    invoke-static {}, Lcom/living/emo/util/MusicPlayerUtil;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v1, "onCompletion: \u64ad\u653e\u5b8c\u6210"

    invoke-static {p1, v1}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iget-object p1, p0, Lcom/living/emo/util/MusicPlayerUtil$1;->this$0:Lcom/living/emo/util/MusicPlayerUtil;

    invoke-static {p1}, Lcom/living/emo/util/MusicPlayerUtil;->access$200(Lcom/living/emo/util/MusicPlayerUtil;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object v1, p0, Lcom/living/emo/util/MusicPlayerUtil$1;->this$0:Lcom/living/emo/util/MusicPlayerUtil;

    invoke-static {v1}, Lcom/living/emo/util/MusicPlayerUtil;->access$300(Lcom/living/emo/util/MusicPlayerUtil;)I

    move-result v1

    if-gt p1, v1, :cond_0

    .line 175
    iget-object p1, p0, Lcom/living/emo/util/MusicPlayerUtil$1;->this$0:Lcom/living/emo/util/MusicPlayerUtil;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/living/emo/util/MusicPlayerUtil;->access$302(Lcom/living/emo/util/MusicPlayerUtil;I)I

    goto :goto_0

    .line 177
    :cond_0
    iget-object p1, p0, Lcom/living/emo/util/MusicPlayerUtil$1;->this$0:Lcom/living/emo/util/MusicPlayerUtil;

    invoke-static {p1}, Lcom/living/emo/util/MusicPlayerUtil;->access$300(Lcom/living/emo/util/MusicPlayerUtil;)I

    move-result v1

    add-int/2addr v1, v0

    invoke-static {p1, v1}, Lcom/living/emo/util/MusicPlayerUtil;->access$302(Lcom/living/emo/util/MusicPlayerUtil;I)I

    .line 178
    invoke-static {}, Lcom/living/emo/util/MusicPlayerUtil;->access$100()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCompletion: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/living/emo/util/MusicPlayerUtil$1;->this$0:Lcom/living/emo/util/MusicPlayerUtil;

    invoke-static {v1}, Lcom/living/emo/util/MusicPlayerUtil;->access$300(Lcom/living/emo/util/MusicPlayerUtil;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    :goto_0
    iget-object p1, p0, Lcom/living/emo/util/MusicPlayerUtil$1;->this$0:Lcom/living/emo/util/MusicPlayerUtil;

    invoke-static {p1}, Lcom/living/emo/util/MusicPlayerUtil;->access$400(Lcom/living/emo/util/MusicPlayerUtil;)Landroid/media/MediaPlayer;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 181
    iget-object p1, p0, Lcom/living/emo/util/MusicPlayerUtil$1;->this$0:Lcom/living/emo/util/MusicPlayerUtil;

    invoke-static {p1}, Lcom/living/emo/util/MusicPlayerUtil;->access$400(Lcom/living/emo/util/MusicPlayerUtil;)Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 182
    iget-object p1, p0, Lcom/living/emo/util/MusicPlayerUtil$1;->this$0:Lcom/living/emo/util/MusicPlayerUtil;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/living/emo/util/MusicPlayerUtil;->access$402(Lcom/living/emo/util/MusicPlayerUtil;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 183
    iget-object p1, p0, Lcom/living/emo/util/MusicPlayerUtil$1;->this$0:Lcom/living/emo/util/MusicPlayerUtil;

    invoke-static {p1}, Lcom/living/emo/util/MusicPlayerUtil;->access$500(Lcom/living/emo/util/MusicPlayerUtil;)V

    .line 184
    iget-object p1, p0, Lcom/living/emo/util/MusicPlayerUtil$1;->this$0:Lcom/living/emo/util/MusicPlayerUtil;

    invoke-virtual {p1}, Lcom/living/emo/util/MusicPlayerUtil;->play()V

    .line 185
    iget-object p1, p0, Lcom/living/emo/util/MusicPlayerUtil$1;->this$0:Lcom/living/emo/util/MusicPlayerUtil;

    invoke-virtual {p1}, Lcom/living/emo/util/MusicPlayerUtil;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/living/emo/util/MusicPlayerUtil;->access$600(Lcom/living/emo/util/MusicPlayerUtil;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
