.class Lcom/living/emo/activity/DiscActivity$8;
.super Ljava/lang/Object;
.source "DiscActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/living/emo/activity/DiscActivity;->initTouchEvent()V
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

    .line 407
    iput-object p1, p0, Lcom/living/emo/activity/DiscActivity$8;->this$0:Lcom/living/emo/activity/DiscActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 411
    iget-object v1, p0, Lcom/living/emo/activity/DiscActivity$8;->this$0:Lcom/living/emo/activity/DiscActivity;

    invoke-static {v1}, Lcom/living/emo/activity/DiscActivity;->access$2800(Lcom/living/emo/activity/DiscActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    .line 412
    iget-object v1, p0, Lcom/living/emo/activity/DiscActivity$8;->this$0:Lcom/living/emo/activity/DiscActivity;

    invoke-static {v1}, Lcom/living/emo/activity/DiscActivity;->access$2800(Lcom/living/emo/activity/DiscActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    .line 413
    iget-object v2, p0, Lcom/living/emo/activity/DiscActivity$8;->this$0:Lcom/living/emo/activity/DiscActivity;

    invoke-static {v2}, Lcom/living/emo/activity/DiscActivity;->access$2800(Lcom/living/emo/activity/DiscActivity;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    .line 414
    aget v4, v0, v3

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    aget v5, v0, v4

    if-eqz v5, :cond_0

    .line 415
    iget-object v5, p0, Lcom/living/emo/activity/DiscActivity$8;->this$0:Lcom/living/emo/activity/DiscActivity;

    invoke-static {v5}, Lcom/living/emo/activity/DiscActivity;->access$2900(Lcom/living/emo/activity/DiscActivity;)Lcom/living/emo/presenter/TouchPresenter;

    move-result-object v5

    aget v6, v0, v3

    div-int/lit8 v7, v1, 0x2

    add-int/2addr v6, v7

    aget v7, v0, v4

    div-int/lit8 v8, v2, 0x2

    add-int/2addr v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/living/emo/presenter/TouchPresenter;->setCenterPoint(II)V

    .line 416
    invoke-static {}, Lcom/living/emo/activity/DiscActivity;->access$1300()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "-------locations[0] :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, v0, v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "-----------width:"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/living/emo/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    invoke-static {}, Lcom/living/emo/activity/DiscActivity;->access$1300()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-------locations[1] :"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, v0, v4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "-----------height:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/living/emo/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
