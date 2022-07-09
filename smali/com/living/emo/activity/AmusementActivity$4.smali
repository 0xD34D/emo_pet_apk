.class Lcom/living/emo/activity/AmusementActivity$4;
.super Ljava/lang/Object;
.source "AmusementActivity.java"

# interfaces
.implements Lcom/living/emo/interfaces/IPlayerControlView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/living/emo/activity/AmusementActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/living/emo/activity/AmusementActivity;


# direct methods
.method constructor <init>(Lcom/living/emo/activity/AmusementActivity;)V
    .locals 0

    .line 347
    iput-object p1, p0, Lcom/living/emo/activity/AmusementActivity$4;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public musicInfo(Lcom/living/emo/bean/MusicInfo;)V
    .locals 2

    .line 386
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity$4;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {v0}, Lcom/living/emo/activity/AmusementActivity;->access$3000(Lcom/living/emo/activity/AmusementActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/living/emo/bean/MusicInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 387
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity$4;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {v0}, Lcom/living/emo/activity/AmusementActivity;->access$2700(Lcom/living/emo/activity/AmusementActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/living/emo/bean/MusicInfo;->getTime()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onChangeSeekBar(Ljava/lang/String;I)V
    .locals 2

    .line 373
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity$4;->this$0:Lcom/living/emo/activity/AmusementActivity;

    new-instance v1, Lcom/living/emo/activity/AmusementActivity$4$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/living/emo/activity/AmusementActivity$4$1;-><init>(Lcom/living/emo/activity/AmusementActivity$4;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/living/emo/activity/AmusementActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public playOnChangeSate(I)V
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    const v1, 0x7f080199

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 358
    :cond_0
    invoke-static {}, Lcom/living/emo/activity/AmusementActivity;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MEDIA_STOP_STATE:3"

    invoke-static {p1, v0}, Lcom/living/emo/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    iget-object p1, p0, Lcom/living/emo/activity/AmusementActivity$4;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {p1}, Lcom/living/emo/activity/AmusementActivity;->access$500(Lcom/living/emo/activity/AmusementActivity;)Lcom/living/emo/animation/ImageButtonAnimation;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 360
    iget-object p1, p0, Lcom/living/emo/activity/AmusementActivity$4;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {p1}, Lcom/living/emo/activity/AmusementActivity;->access$500(Lcom/living/emo/activity/AmusementActivity;)Lcom/living/emo/animation/ImageButtonAnimation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/living/emo/animation/ImageButtonAnimation;->end()V

    .line 361
    iget-object p1, p0, Lcom/living/emo/activity/AmusementActivity$4;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {p1}, Lcom/living/emo/activity/AmusementActivity;->access$600(Lcom/living/emo/activity/AmusementActivity;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setRotation(F)V

    .line 362
    iget-object p1, p0, Lcom/living/emo/activity/AmusementActivity$4;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {p1}, Lcom/living/emo/activity/AmusementActivity;->access$500(Lcom/living/emo/activity/AmusementActivity;)Lcom/living/emo/animation/ImageButtonAnimation;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/living/emo/animation/ImageButtonAnimation;->setRos(I)Lcom/living/emo/animation/ImageButtonAnimation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/living/emo/animation/ImageButtonAnimation;->setValues()V

    .line 364
    :cond_1
    iget-object p1, p0, Lcom/living/emo/activity/AmusementActivity$4;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {p1}, Lcom/living/emo/activity/AmusementActivity;->access$2600(Lcom/living/emo/activity/AmusementActivity;)Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 355
    :cond_2
    iget-object p1, p0, Lcom/living/emo/activity/AmusementActivity$4;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {p1}, Lcom/living/emo/activity/AmusementActivity;->access$2600(Lcom/living/emo/activity/AmusementActivity;)Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 352
    :cond_3
    iget-object p1, p0, Lcom/living/emo/activity/AmusementActivity$4;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {p1}, Lcom/living/emo/activity/AmusementActivity;->access$2600(Lcom/living/emo/activity/AmusementActivity;)Landroid/widget/ImageButton;

    move-result-object p1

    const v0, 0x7f080198

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    :goto_0
    return-void
.end method
