.class Lcom/living/emo/activity/AmusementActivity$2$1;
.super Ljava/lang/Object;
.source "AmusementActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/living/emo/activity/AmusementActivity$2;->gameReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/living/emo/activity/AmusementActivity$2;


# direct methods
.method constructor <init>(Lcom/living/emo/activity/AmusementActivity$2;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/living/emo/activity/AmusementActivity$2$1;->this$1:Lcom/living/emo/activity/AmusementActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 191
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity$2$1;->this$1:Lcom/living/emo/activity/AmusementActivity$2;

    iget-object v0, v0, Lcom/living/emo/activity/AmusementActivity$2;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {v0}, Lcom/living/emo/activity/AmusementActivity;->access$000(Lcom/living/emo/activity/AmusementActivity;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 192
    invoke-static {}, Lcom/living/emo/activity/AmusementActivity;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "run: mData===>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/living/emo/activity/AmusementActivity$2$1;->this$1:Lcom/living/emo/activity/AmusementActivity$2;

    iget-object v3, v3, Lcom/living/emo/activity/AmusementActivity$2;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {v3}, Lcom/living/emo/activity/AmusementActivity;->access$000(Lcom/living/emo/activity/AmusementActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity$2$1;->this$1:Lcom/living/emo/activity/AmusementActivity$2;

    iget-object v0, v0, Lcom/living/emo/activity/AmusementActivity$2;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {v0}, Lcom/living/emo/activity/AmusementActivity;->access$000(Lcom/living/emo/activity/AmusementActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-double v4, v0

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v0, v2

    .line 194
    iget-object v2, p0, Lcom/living/emo/activity/AmusementActivity$2$1;->this$1:Lcom/living/emo/activity/AmusementActivity$2;

    iget-object v2, v2, Lcom/living/emo/activity/AmusementActivity$2;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {v2}, Lcom/living/emo/activity/AmusementActivity;->access$200(Lcom/living/emo/activity/AmusementActivity;)Lcom/living/emo/interfaces/IPlayerControlPresenter;

    move-result-object v2

    invoke-interface {v2}, Lcom/living/emo/interfaces/IPlayerControlPresenter;->reset()V

    .line 195
    iget-object v2, p0, Lcom/living/emo/activity/AmusementActivity$2$1;->this$1:Lcom/living/emo/activity/AmusementActivity$2;

    iget-object v2, v2, Lcom/living/emo/activity/AmusementActivity$2;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {v2}, Lcom/living/emo/activity/AmusementActivity;->access$200(Lcom/living/emo/activity/AmusementActivity;)Lcom/living/emo/interfaces/IPlayerControlPresenter;

    move-result-object v2

    iget-object v3, p0, Lcom/living/emo/activity/AmusementActivity$2$1;->this$1:Lcom/living/emo/activity/AmusementActivity$2;

    iget-object v3, v3, Lcom/living/emo/activity/AmusementActivity$2;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {v3}, Lcom/living/emo/activity/AmusementActivity;->access$000(Lcom/living/emo/activity/AmusementActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/living/emo/bean/MusicBean$DataBean;

    invoke-interface {v2, v0}, Lcom/living/emo/interfaces/IPlayerControlPresenter;->setData(Lcom/living/emo/bean/MusicBean$DataBean;)V

    .line 196
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity$2$1;->this$1:Lcom/living/emo/activity/AmusementActivity$2;

    iget-object v0, v0, Lcom/living/emo/activity/AmusementActivity$2;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {v0}, Lcom/living/emo/activity/AmusementActivity;->access$300(Lcom/living/emo/activity/AmusementActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 197
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity$2$1;->this$1:Lcom/living/emo/activity/AmusementActivity$2;

    iget-object v0, v0, Lcom/living/emo/activity/AmusementActivity$2;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {v0}, Lcom/living/emo/activity/AmusementActivity;->access$400(Lcom/living/emo/activity/AmusementActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 198
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity$2$1;->this$1:Lcom/living/emo/activity/AmusementActivity$2;

    iget-object v0, v0, Lcom/living/emo/activity/AmusementActivity$2;->this$0:Lcom/living/emo/activity/AmusementActivity;

    iget-object v2, p0, Lcom/living/emo/activity/AmusementActivity$2$1;->this$1:Lcom/living/emo/activity/AmusementActivity$2;

    iget-object v2, v2, Lcom/living/emo/activity/AmusementActivity$2;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {v2}, Lcom/living/emo/activity/AmusementActivity;->access$200(Lcom/living/emo/activity/AmusementActivity;)Lcom/living/emo/interfaces/IPlayerControlPresenter;

    move-result-object v2

    iget-object v3, p0, Lcom/living/emo/activity/AmusementActivity$2$1;->this$1:Lcom/living/emo/activity/AmusementActivity$2;

    iget-object v3, v3, Lcom/living/emo/activity/AmusementActivity$2;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {v3}, Lcom/living/emo/activity/AmusementActivity;->access$500(Lcom/living/emo/activity/AmusementActivity;)Lcom/living/emo/animation/ImageButtonAnimation;

    move-result-object v3

    iget-object v4, p0, Lcom/living/emo/activity/AmusementActivity$2$1;->this$1:Lcom/living/emo/activity/AmusementActivity$2;

    iget-object v4, v4, Lcom/living/emo/activity/AmusementActivity$2;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {v4}, Lcom/living/emo/activity/AmusementActivity;->access$600(Lcom/living/emo/activity/AmusementActivity;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/living/emo/activity/AmusementActivity;->playOrPause(Lcom/living/emo/interfaces/IPlayerControlPresenter;Lcom/living/emo/animation/ImageButtonAnimation;Landroid/widget/ImageView;)V

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity$2$1;->this$1:Lcom/living/emo/activity/AmusementActivity$2;

    iget-object v0, v0, Lcom/living/emo/activity/AmusementActivity$2;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {v0}, Lcom/living/emo/activity/AmusementActivity;->access$700(Lcom/living/emo/activity/AmusementActivity;)F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    .line 202
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity$2$1;->this$1:Lcom/living/emo/activity/AmusementActivity$2;

    iget-object v0, v0, Lcom/living/emo/activity/AmusementActivity$2;->this$0:Lcom/living/emo/activity/AmusementActivity;

    iget-object v2, p0, Lcom/living/emo/activity/AmusementActivity$2$1;->this$1:Lcom/living/emo/activity/AmusementActivity$2;

    iget-object v2, v2, Lcom/living/emo/activity/AmusementActivity$2;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {v2}, Lcom/living/emo/activity/AmusementActivity;->access$800(Lcom/living/emo/activity/AmusementActivity;)Lcom/clj/fastble/data/BleDevice;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x1

    aput v4, v3, v1

    iget-object v1, p0, Lcom/living/emo/activity/AmusementActivity$2$1;->this$1:Lcom/living/emo/activity/AmusementActivity$2;

    iget-object v1, v1, Lcom/living/emo/activity/AmusementActivity$2;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-virtual {v1}, Lcom/living/emo/activity/AmusementActivity;->getBpmValue()I

    move-result v1

    aput v1, v3, v4

    invoke-static {v3}, Lcom/living/emo/util/CommandUtil;->dazzling([I)[B

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/living/emo/activity/AmusementActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    .line 203
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity$2$1;->this$1:Lcom/living/emo/activity/AmusementActivity$2;

    iget-object v0, v0, Lcom/living/emo/activity/AmusementActivity$2;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {v0, v4}, Lcom/living/emo/activity/AmusementActivity;->access$902(Lcom/living/emo/activity/AmusementActivity;Z)Z

    .line 205
    :cond_1
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity$2$1;->this$1:Lcom/living/emo/activity/AmusementActivity$2;

    iget-object v0, v0, Lcom/living/emo/activity/AmusementActivity$2;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {v0}, Lcom/living/emo/activity/AmusementActivity;->access$1000(Lcom/living/emo/activity/AmusementActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 206
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity$2$1;->this$1:Lcom/living/emo/activity/AmusementActivity$2;

    iget-object v0, v0, Lcom/living/emo/activity/AmusementActivity$2;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {v0}, Lcom/living/emo/activity/AmusementActivity;->access$1200(Lcom/living/emo/activity/AmusementActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/living/emo/activity/AmusementActivity$2$1;->this$1:Lcom/living/emo/activity/AmusementActivity$2;

    iget-object v1, v1, Lcom/living/emo/activity/AmusementActivity$2;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {v1}, Lcom/living/emo/activity/AmusementActivity;->access$1100(Lcom/living/emo/activity/AmusementActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
