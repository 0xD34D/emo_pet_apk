.class Lcom/living/emo/activity/DiscActivity$18;
.super Ljava/lang/Object;
.source "DiscActivity.java"

# interfaces
.implements Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar$OnSeekChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/living/emo/activity/DiscActivity;->initEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/living/emo/activity/DiscActivity;


# direct methods
.method constructor <init>(Lcom/living/emo/activity/DiscActivity;)V
    .locals 0

    .line 667
    iput-object p1, p0, Lcom/living/emo/activity/DiscActivity$18;->this$0:Lcom/living/emo/activity/DiscActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(IZ)V
    .locals 0

    return-void
.end method

.method public onStartTrackingTouch()V
    .locals 2

    .line 675
    iget-object v0, p0, Lcom/living/emo/activity/DiscActivity$18;->this$0:Lcom/living/emo/activity/DiscActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/living/emo/activity/DiscActivity;->access$3902(Lcom/living/emo/activity/DiscActivity;Z)Z

    return-void
.end method

.method public onStopTrackingTouch(I)V
    .locals 3

    .line 680
    invoke-static {}, Lcom/living/emo/activity/DiscActivity;->access$1300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStopTrackingTouch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    iget-object v0, p0, Lcom/living/emo/activity/DiscActivity$18;->this$0:Lcom/living/emo/activity/DiscActivity;

    invoke-static {v0}, Lcom/living/emo/activity/DiscActivity;->access$1600(Lcom/living/emo/activity/DiscActivity;)Lcom/living/emo/presenter/DiscControlPresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 682
    iget-object v0, p0, Lcom/living/emo/activity/DiscActivity$18;->this$0:Lcom/living/emo/activity/DiscActivity;

    invoke-static {v0}, Lcom/living/emo/activity/DiscActivity;->access$1600(Lcom/living/emo/activity/DiscActivity;)Lcom/living/emo/presenter/DiscControlPresenter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/living/emo/presenter/DiscControlPresenter;->seekTo(I)V

    .line 684
    :cond_0
    iget-object p1, p0, Lcom/living/emo/activity/DiscActivity$18;->this$0:Lcom/living/emo/activity/DiscActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/living/emo/activity/DiscActivity;->access$3902(Lcom/living/emo/activity/DiscActivity;Z)Z

    return-void
.end method
