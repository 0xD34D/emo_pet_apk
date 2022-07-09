.class Lcom/living/emo/activity/DiscActivity$2$1;
.super Ljava/lang/Object;
.source "DiscActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/living/emo/activity/DiscActivity$2;->gameReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/living/emo/activity/DiscActivity$2;


# direct methods
.method constructor <init>(Lcom/living/emo/activity/DiscActivity$2;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/living/emo/activity/DiscActivity$2$1;->this$1:Lcom/living/emo/activity/DiscActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 182
    iget-object v0, p0, Lcom/living/emo/activity/DiscActivity$2$1;->this$1:Lcom/living/emo/activity/DiscActivity$2;

    iget-object v0, v0, Lcom/living/emo/activity/DiscActivity$2;->this$0:Lcom/living/emo/activity/DiscActivity;

    invoke-static {v0}, Lcom/living/emo/activity/DiscActivity;->access$000(Lcom/living/emo/activity/DiscActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 183
    iget-object v0, p0, Lcom/living/emo/activity/DiscActivity$2$1;->this$1:Lcom/living/emo/activity/DiscActivity$2;

    iget-object v0, v0, Lcom/living/emo/activity/DiscActivity$2;->this$0:Lcom/living/emo/activity/DiscActivity;

    invoke-static {v0}, Lcom/living/emo/activity/DiscActivity;->access$300(Lcom/living/emo/activity/DiscActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/living/emo/activity/DiscActivity$2$1;->this$1:Lcom/living/emo/activity/DiscActivity$2;

    iget-object v1, v1, Lcom/living/emo/activity/DiscActivity$2;->this$0:Lcom/living/emo/activity/DiscActivity;

    invoke-static {v1}, Lcom/living/emo/activity/DiscActivity;->access$200(Lcom/living/emo/activity/DiscActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 184
    iget-object v0, p0, Lcom/living/emo/activity/DiscActivity$2$1;->this$1:Lcom/living/emo/activity/DiscActivity$2;

    iget-object v0, v0, Lcom/living/emo/activity/DiscActivity$2;->this$0:Lcom/living/emo/activity/DiscActivity;

    invoke-static {v0}, Lcom/living/emo/activity/DiscActivity;->access$400(Lcom/living/emo/activity/DiscActivity;)Lcom/living/emo/presenter/DiscControlPresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/living/emo/activity/DiscActivity$2$1;->this$1:Lcom/living/emo/activity/DiscActivity$2;

    iget-object v0, v0, Lcom/living/emo/activity/DiscActivity$2;->this$0:Lcom/living/emo/activity/DiscActivity;

    invoke-static {v0}, Lcom/living/emo/activity/DiscActivity;->access$500(Lcom/living/emo/activity/DiscActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/living/emo/activity/DiscActivity$2$1;->this$1:Lcom/living/emo/activity/DiscActivity$2;

    iget-object v0, v0, Lcom/living/emo/activity/DiscActivity$2;->this$0:Lcom/living/emo/activity/DiscActivity;

    invoke-static {v0}, Lcom/living/emo/activity/DiscActivity;->access$400(Lcom/living/emo/activity/DiscActivity;)Lcom/living/emo/presenter/DiscControlPresenter;

    move-result-object v0

    iget-object v1, p0, Lcom/living/emo/activity/DiscActivity$2$1;->this$1:Lcom/living/emo/activity/DiscActivity$2;

    iget-object v1, v1, Lcom/living/emo/activity/DiscActivity$2;->this$0:Lcom/living/emo/activity/DiscActivity;

    invoke-static {v1}, Lcom/living/emo/activity/DiscActivity;->access$500(Lcom/living/emo/activity/DiscActivity;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/living/emo/bean/MusicBean$DataBean;

    invoke-virtual {v0, v1}, Lcom/living/emo/presenter/DiscControlPresenter;->setData(Lcom/living/emo/bean/MusicBean$DataBean;)V

    .line 186
    iget-object v0, p0, Lcom/living/emo/activity/DiscActivity$2$1;->this$1:Lcom/living/emo/activity/DiscActivity$2;

    iget-object v0, v0, Lcom/living/emo/activity/DiscActivity$2;->this$0:Lcom/living/emo/activity/DiscActivity;

    iget-object v1, p0, Lcom/living/emo/activity/DiscActivity$2$1;->this$1:Lcom/living/emo/activity/DiscActivity$2;

    iget-object v1, v1, Lcom/living/emo/activity/DiscActivity$2;->this$0:Lcom/living/emo/activity/DiscActivity;

    invoke-static {v1}, Lcom/living/emo/activity/DiscActivity;->access$400(Lcom/living/emo/activity/DiscActivity;)Lcom/living/emo/presenter/DiscControlPresenter;

    move-result-object v1

    iget-object v2, p0, Lcom/living/emo/activity/DiscActivity$2$1;->this$1:Lcom/living/emo/activity/DiscActivity$2;

    iget-object v2, v2, Lcom/living/emo/activity/DiscActivity$2;->this$0:Lcom/living/emo/activity/DiscActivity;

    invoke-static {v2}, Lcom/living/emo/activity/DiscActivity;->access$600(Lcom/living/emo/activity/DiscActivity;)Lcom/living/emo/animation/ImageButtonAnimation;

    move-result-object v2

    iget-object v3, p0, Lcom/living/emo/activity/DiscActivity$2$1;->this$1:Lcom/living/emo/activity/DiscActivity$2;

    iget-object v3, v3, Lcom/living/emo/activity/DiscActivity$2;->this$0:Lcom/living/emo/activity/DiscActivity;

    invoke-static {v3}, Lcom/living/emo/activity/DiscActivity;->access$700(Lcom/living/emo/activity/DiscActivity;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/living/emo/activity/DiscActivity;->playOrPause(Lcom/living/emo/presenter/DiscControlPresenter;Lcom/living/emo/animation/ImageButtonAnimation;Landroid/widget/ImageView;)V

    :cond_0
    return-void
.end method
