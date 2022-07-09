.class Lcom/living/emo/activity/DiscActivity$7;
.super Ljava/lang/Object;
.source "DiscActivity.java"

# interfaces
.implements Lcom/living/emo/presenter/TouchPresenter$TouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/living/emo/activity/DiscActivity;->initTouchEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mIsPlaying:Z

.field final synthetic this$0:Lcom/living/emo/activity/DiscActivity;


# direct methods
.method constructor <init>(Lcom/living/emo/activity/DiscActivity;)V
    .locals 0

    .line 383
    iput-object p1, p0, Lcom/living/emo/activity/DiscActivity$7;->this$0:Lcom/living/emo/activity/DiscActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlaySound()V
    .locals 2

    .line 400
    iget-object v0, p0, Lcom/living/emo/activity/DiscActivity$7;->this$0:Lcom/living/emo/activity/DiscActivity;

    invoke-static {v0}, Lcom/living/emo/activity/DiscActivity;->access$2700(Lcom/living/emo/activity/DiscActivity;)Lcom/living/emo/presenter/SoundsPresenter;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/living/emo/presenter/SoundsPresenter;->play(I)V

    return-void
.end method

.method public onTouchDownAcion()V
    .locals 4

    .line 389
    iget-object v0, p0, Lcom/living/emo/activity/DiscActivity$7;->this$0:Lcom/living/emo/activity/DiscActivity;

    invoke-static {v0}, Lcom/living/emo/activity/DiscActivity;->access$400(Lcom/living/emo/activity/DiscActivity;)Lcom/living/emo/presenter/DiscControlPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/living/emo/presenter/DiscControlPresenter;->isPlaying()Z

    move-result v0

    iput-boolean v0, p0, Lcom/living/emo/activity/DiscActivity$7;->mIsPlaying:Z

    .line 390
    iget-object v0, p0, Lcom/living/emo/activity/DiscActivity$7;->this$0:Lcom/living/emo/activity/DiscActivity;

    invoke-static {v0}, Lcom/living/emo/activity/DiscActivity;->access$400(Lcom/living/emo/activity/DiscActivity;)Lcom/living/emo/presenter/DiscControlPresenter;

    move-result-object v1

    iget-object v2, p0, Lcom/living/emo/activity/DiscActivity$7;->this$0:Lcom/living/emo/activity/DiscActivity;

    invoke-static {v2}, Lcom/living/emo/activity/DiscActivity;->access$600(Lcom/living/emo/activity/DiscActivity;)Lcom/living/emo/animation/ImageButtonAnimation;

    move-result-object v2

    iget-object v3, p0, Lcom/living/emo/activity/DiscActivity$7;->this$0:Lcom/living/emo/activity/DiscActivity;

    invoke-static {v3}, Lcom/living/emo/activity/DiscActivity;->access$700(Lcom/living/emo/activity/DiscActivity;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/living/emo/activity/DiscActivity;->access$2500(Lcom/living/emo/activity/DiscActivity;Lcom/living/emo/interfaces/IPlayerControlPresenter;Lcom/living/emo/animation/ImageButtonAnimation;Landroid/widget/ImageView;)V

    return-void
.end method

.method public onTouchUpAcion()V
    .locals 5

    .line 395
    iget-object v0, p0, Lcom/living/emo/activity/DiscActivity$7;->this$0:Lcom/living/emo/activity/DiscActivity;

    invoke-static {v0}, Lcom/living/emo/activity/DiscActivity;->access$400(Lcom/living/emo/activity/DiscActivity;)Lcom/living/emo/presenter/DiscControlPresenter;

    move-result-object v1

    iget-object v2, p0, Lcom/living/emo/activity/DiscActivity$7;->this$0:Lcom/living/emo/activity/DiscActivity;

    invoke-static {v2}, Lcom/living/emo/activity/DiscActivity;->access$600(Lcom/living/emo/activity/DiscActivity;)Lcom/living/emo/animation/ImageButtonAnimation;

    move-result-object v2

    iget-object v3, p0, Lcom/living/emo/activity/DiscActivity$7;->this$0:Lcom/living/emo/activity/DiscActivity;

    invoke-static {v3}, Lcom/living/emo/activity/DiscActivity;->access$700(Lcom/living/emo/activity/DiscActivity;)Landroid/widget/ImageView;

    move-result-object v3

    iget-boolean v4, p0, Lcom/living/emo/activity/DiscActivity$7;->mIsPlaying:Z

    invoke-static {v0, v1, v2, v3, v4}, Lcom/living/emo/activity/DiscActivity;->access$2600(Lcom/living/emo/activity/DiscActivity;Lcom/living/emo/interfaces/IPlayerControlPresenter;Lcom/living/emo/animation/ImageButtonAnimation;Landroid/widget/ImageView;Z)V

    return-void
.end method
