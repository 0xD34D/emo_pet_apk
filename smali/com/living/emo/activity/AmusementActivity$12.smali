.class Lcom/living/emo/activity/AmusementActivity$12;
.super Ljava/lang/Object;
.source "AmusementActivity.java"

# interfaces
.implements Lcom/living/emo/presenter/TouchPresenter$TouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/living/emo/activity/AmusementActivity;->initTouchEvents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mIsPlaying:Z

.field final synthetic this$0:Lcom/living/emo/activity/AmusementActivity;


# direct methods
.method constructor <init>(Lcom/living/emo/activity/AmusementActivity;)V
    .locals 0

    .line 718
    iput-object p1, p0, Lcom/living/emo/activity/AmusementActivity$12;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlaySound()V
    .locals 2

    .line 740
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity$12;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {v0}, Lcom/living/emo/activity/AmusementActivity;->access$5400(Lcom/living/emo/activity/AmusementActivity;)Lcom/living/emo/presenter/SoundsPresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 741
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity$12;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {v0}, Lcom/living/emo/activity/AmusementActivity;->access$5400(Lcom/living/emo/activity/AmusementActivity;)Lcom/living/emo/presenter/SoundsPresenter;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/living/emo/presenter/SoundsPresenter;->play(I)V

    :cond_0
    return-void
.end method

.method public onTouchDownAcion()V
    .locals 5

    .line 724
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity$12;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {v0}, Lcom/living/emo/activity/AmusementActivity;->access$1900(Lcom/living/emo/activity/AmusementActivity;)Lcom/living/emo/interfaces/IPlayerControlPresenter;

    move-result-object v0

    invoke-interface {v0}, Lcom/living/emo/interfaces/IPlayerControlPresenter;->isPlaying()Z

    move-result v0

    iput-boolean v0, p0, Lcom/living/emo/activity/AmusementActivity$12;->mIsPlaying:Z

    .line 725
    invoke-static {}, Lcom/living/emo/activity/AmusementActivity;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "==mRightTouch===onTouchDownAcion====="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/living/emo/activity/AmusementActivity$12;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {v3}, Lcom/living/emo/activity/AmusementActivity;->access$1900(Lcom/living/emo/activity/AmusementActivity;)Lcom/living/emo/interfaces/IPlayerControlPresenter;

    move-result-object v3

    invoke-interface {v3}, Lcom/living/emo/interfaces/IPlayerControlPresenter;->isPlaying()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/living/emo/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity$12;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {v0}, Lcom/living/emo/activity/AmusementActivity;->access$1900(Lcom/living/emo/activity/AmusementActivity;)Lcom/living/emo/interfaces/IPlayerControlPresenter;

    move-result-object v1

    iget-object v3, p0, Lcom/living/emo/activity/AmusementActivity$12;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {v3}, Lcom/living/emo/activity/AmusementActivity;->access$3200(Lcom/living/emo/activity/AmusementActivity;)Lcom/living/emo/animation/ImageButtonAnimation;

    move-result-object v3

    iget-object v4, p0, Lcom/living/emo/activity/AmusementActivity$12;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {v4}, Lcom/living/emo/activity/AmusementActivity;->access$3300(Lcom/living/emo/activity/AmusementActivity;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-static {v0, v1, v3, v4}, Lcom/living/emo/activity/AmusementActivity;->access$5200(Lcom/living/emo/activity/AmusementActivity;Lcom/living/emo/interfaces/IPlayerControlPresenter;Lcom/living/emo/animation/ImageButtonAnimation;Landroid/widget/ImageView;)V

    .line 727
    invoke-static {}, Lcom/living/emo/activity/AmusementActivity;->access$100()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/living/emo/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onTouchUpAcion()V
    .locals 5

    .line 733
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity$12;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {v0}, Lcom/living/emo/activity/AmusementActivity;->access$1900(Lcom/living/emo/activity/AmusementActivity;)Lcom/living/emo/interfaces/IPlayerControlPresenter;

    move-result-object v1

    iget-object v2, p0, Lcom/living/emo/activity/AmusementActivity$12;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {v2}, Lcom/living/emo/activity/AmusementActivity;->access$3200(Lcom/living/emo/activity/AmusementActivity;)Lcom/living/emo/animation/ImageButtonAnimation;

    move-result-object v2

    iget-object v3, p0, Lcom/living/emo/activity/AmusementActivity$12;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {v3}, Lcom/living/emo/activity/AmusementActivity;->access$3300(Lcom/living/emo/activity/AmusementActivity;)Landroid/widget/ImageView;

    move-result-object v3

    iget-boolean v4, p0, Lcom/living/emo/activity/AmusementActivity$12;->mIsPlaying:Z

    invoke-static {v0, v1, v2, v3, v4}, Lcom/living/emo/activity/AmusementActivity;->access$5300(Lcom/living/emo/activity/AmusementActivity;Lcom/living/emo/interfaces/IPlayerControlPresenter;Lcom/living/emo/animation/ImageButtonAnimation;Landroid/widget/ImageView;Z)V

    .line 734
    invoke-static {}, Lcom/living/emo/activity/AmusementActivity;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "==mRightTouch====onTouchUpAcion======="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/living/emo/activity/AmusementActivity$12;->mIsPlaying:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/living/emo/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
