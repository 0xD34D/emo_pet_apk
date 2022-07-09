.class Lcom/living/emo/activity/HuntActivity$4;
.super Ljava/lang/Object;
.source "HuntActivity.java"

# interfaces
.implements Lcom/living/emo/bean/HuntBean$HuntResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/living/emo/activity/HuntActivity;->onMessageEvent(Lcom/living/emo/event/MessageEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/living/emo/activity/HuntActivity;


# direct methods
.method constructor <init>(Lcom/living/emo/activity/HuntActivity;)V
    .locals 0

    .line 248
    iput-object p1, p0, Lcom/living/emo/activity/HuntActivity$4;->this$0:Lcom/living/emo/activity/HuntActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error()V
    .locals 0

    return-void
.end method

.method public eventReport(B)V
    .locals 3

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 300
    :pswitch_0
    iget-object p1, p0, Lcom/living/emo/activity/HuntActivity$4;->this$0:Lcom/living/emo/activity/HuntActivity;

    sget-object v0, Lcom/living/emo/activity/HuntActivity$Tips;->TIPS:Lcom/living/emo/activity/HuntActivity$Tips;

    iget-object v1, p0, Lcom/living/emo/activity/HuntActivity$4;->this$0:Lcom/living/emo/activity/HuntActivity;

    const v2, 0x7f100074

    invoke-virtual {v1, v2}, Lcom/living/emo/activity/HuntActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/living/emo/activity/HuntActivity;->access$1200(Lcom/living/emo/activity/HuntActivity;Lcom/living/emo/activity/HuntActivity$Tips;Ljava/lang/String;)V

    goto :goto_0

    .line 296
    :pswitch_1
    iget-object p1, p0, Lcom/living/emo/activity/HuntActivity$4;->this$0:Lcom/living/emo/activity/HuntActivity;

    sget-object v0, Lcom/living/emo/activity/HuntActivity$Tips;->WARNING:Lcom/living/emo/activity/HuntActivity$Tips;

    iget-object v1, p0, Lcom/living/emo/activity/HuntActivity$4;->this$0:Lcom/living/emo/activity/HuntActivity;

    const v2, 0x7f100077

    invoke-virtual {v1, v2}, Lcom/living/emo/activity/HuntActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/living/emo/activity/HuntActivity;->access$1200(Lcom/living/emo/activity/HuntActivity;Lcom/living/emo/activity/HuntActivity$Tips;Ljava/lang/String;)V

    goto :goto_0

    .line 292
    :pswitch_2
    iget-object p1, p0, Lcom/living/emo/activity/HuntActivity$4;->this$0:Lcom/living/emo/activity/HuntActivity;

    sget-object v0, Lcom/living/emo/activity/HuntActivity$Tips;->WARNING:Lcom/living/emo/activity/HuntActivity$Tips;

    iget-object v1, p0, Lcom/living/emo/activity/HuntActivity$4;->this$0:Lcom/living/emo/activity/HuntActivity;

    const v2, 0x7f100076

    invoke-virtual {v1, v2}, Lcom/living/emo/activity/HuntActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/living/emo/activity/HuntActivity;->access$1200(Lcom/living/emo/activity/HuntActivity;Lcom/living/emo/activity/HuntActivity$Tips;Ljava/lang/String;)V

    goto :goto_0

    .line 288
    :pswitch_3
    iget-object p1, p0, Lcom/living/emo/activity/HuntActivity$4;->this$0:Lcom/living/emo/activity/HuntActivity;

    sget-object v0, Lcom/living/emo/activity/HuntActivity$Tips;->WARNING:Lcom/living/emo/activity/HuntActivity$Tips;

    iget-object v1, p0, Lcom/living/emo/activity/HuntActivity$4;->this$0:Lcom/living/emo/activity/HuntActivity;

    const v2, 0x7f100073

    invoke-virtual {v1, v2}, Lcom/living/emo/activity/HuntActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/living/emo/activity/HuntActivity;->access$1200(Lcom/living/emo/activity/HuntActivity;Lcom/living/emo/activity/HuntActivity$Tips;Ljava/lang/String;)V

    goto :goto_0

    .line 284
    :pswitch_4
    iget-object p1, p0, Lcom/living/emo/activity/HuntActivity$4;->this$0:Lcom/living/emo/activity/HuntActivity;

    sget-object v0, Lcom/living/emo/activity/HuntActivity$Tips;->WARNING:Lcom/living/emo/activity/HuntActivity$Tips;

    iget-object v1, p0, Lcom/living/emo/activity/HuntActivity$4;->this$0:Lcom/living/emo/activity/HuntActivity;

    const v2, 0x7f100072

    invoke-virtual {v1, v2}, Lcom/living/emo/activity/HuntActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/living/emo/activity/HuntActivity;->access$1200(Lcom/living/emo/activity/HuntActivity;Lcom/living/emo/activity/HuntActivity$Tips;Ljava/lang/String;)V

    goto :goto_0

    .line 280
    :pswitch_5
    iget-object p1, p0, Lcom/living/emo/activity/HuntActivity$4;->this$0:Lcom/living/emo/activity/HuntActivity;

    sget-object v0, Lcom/living/emo/activity/HuntActivity$Tips;->WARNING:Lcom/living/emo/activity/HuntActivity$Tips;

    iget-object v1, p0, Lcom/living/emo/activity/HuntActivity$4;->this$0:Lcom/living/emo/activity/HuntActivity;

    const v2, 0x7f100075

    invoke-virtual {v1, v2}, Lcom/living/emo/activity/HuntActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/living/emo/activity/HuntActivity;->access$1200(Lcom/living/emo/activity/HuntActivity;Lcom/living/emo/activity/HuntActivity$Tips;Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public findHunt(I)V
    .locals 4

    .line 322
    iget-object v0, p0, Lcom/living/emo/activity/HuntActivity$4;->this$0:Lcom/living/emo/activity/HuntActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/living/emo/activity/HuntActivity;->access$202(Lcom/living/emo/activity/HuntActivity;Z)Z

    .line 324
    iget-object v0, p0, Lcom/living/emo/activity/HuntActivity$4;->this$0:Lcom/living/emo/activity/HuntActivity;

    invoke-static {v0}, Lcom/living/emo/activity/HuntActivity;->access$100(Lcom/living/emo/activity/HuntActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/living/emo/activity/HuntActivity$4;->this$0:Lcom/living/emo/activity/HuntActivity;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/living/emo/activity/HuntActivity;->access$1500(Lcom/living/emo/activity/HuntActivity;I)V

    .line 328
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/living/emo/activity/-$$Lambda$HuntActivity$4$2B5sUs4Zqu0HD2hYkyddrsvyQLg;

    invoke-direct {v1, p0, p1}, Lcom/living/emo/activity/-$$Lambda$HuntActivity$4$2B5sUs4Zqu0HD2hYkyddrsvyQLg;-><init>(Lcom/living/emo/activity/HuntActivity$4;I)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public gameOver()V
    .locals 1

    .line 362
    iget-object v0, p0, Lcom/living/emo/activity/HuntActivity$4;->this$0:Lcom/living/emo/activity/HuntActivity;

    invoke-virtual {v0}, Lcom/living/emo/activity/HuntActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/living/emo/activity/HuntActivity$4;->this$0:Lcom/living/emo/activity/HuntActivity;

    invoke-virtual {v0}, Lcom/living/emo/activity/HuntActivity;->finish()V

    :cond_0
    return-void
.end method

.method public gameReady()V
    .locals 2

    .line 251
    iget-object v0, p0, Lcom/living/emo/activity/HuntActivity$4;->this$0:Lcom/living/emo/activity/HuntActivity;

    invoke-static {v0}, Lcom/living/emo/activity/HuntActivity;->access$1400(Lcom/living/emo/activity/HuntActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/living/emo/activity/HuntActivity$4;->this$0:Lcom/living/emo/activity/HuntActivity;

    invoke-static {v1}, Lcom/living/emo/activity/HuntActivity;->access$1300(Lcom/living/emo/activity/HuntActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 252
    iget-object v0, p0, Lcom/living/emo/activity/HuntActivity$4;->this$0:Lcom/living/emo/activity/HuntActivity;

    invoke-static {v0}, Lcom/living/emo/activity/HuntActivity;->access$000(Lcom/living/emo/activity/HuntActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    return-void
.end method

.method public synthetic lambda$findHunt$0$HuntActivity$4(I)V
    .locals 2

    .line 329
    iget-object v0, p0, Lcom/living/emo/activity/HuntActivity$4;->this$0:Lcom/living/emo/activity/HuntActivity;

    sget-object v1, Lcom/living/emo/activity/HuntActivity$Tips;->HUNT:Lcom/living/emo/activity/HuntActivity$Tips;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/living/emo/activity/HuntActivity;->access$1200(Lcom/living/emo/activity/HuntActivity;Lcom/living/emo/activity/HuntActivity$Tips;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$result$1$HuntActivity$4(III)V
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 351
    invoke-static {}, Lcom/living/emo/util/SoundIdPoolUntil;->getInstance()Lcom/living/emo/util/SoundIdPoolUntil;

    move-result-object p1

    const-string p2, "no_reward"

    invoke-virtual {p1, p2, v0}, Lcom/living/emo/util/SoundIdPoolUntil;->play(Ljava/lang/String;I)V

    .line 352
    iget-object p1, p0, Lcom/living/emo/activity/HuntActivity$4;->this$0:Lcom/living/emo/activity/HuntActivity;

    invoke-static {p1}, Lcom/living/emo/activity/HuntActivity;->access$1700(Lcom/living/emo/activity/HuntActivity;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090174

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 354
    :cond_0
    invoke-static {}, Lcom/living/emo/util/SoundIdPoolUntil;->getInstance()Lcom/living/emo/util/SoundIdPoolUntil;

    move-result-object p1

    const-string p2, "hunt_android"

    invoke-virtual {p1, p2, v0}, Lcom/living/emo/util/SoundIdPoolUntil;->play(Ljava/lang/String;I)V

    .line 356
    :goto_0
    iget-object p1, p0, Lcom/living/emo/activity/HuntActivity$4;->this$0:Lcom/living/emo/activity/HuntActivity;

    sget-object p2, Lcom/living/emo/activity/HuntActivity$State;->OVER:Lcom/living/emo/activity/HuntActivity$State;

    invoke-static {p1, p2}, Lcom/living/emo/activity/HuntActivity;->access$1100(Lcom/living/emo/activity/HuntActivity;Lcom/living/emo/activity/HuntActivity$State;)V

    return-void
.end method

.method public result(III)V
    .locals 3

    .line 341
    iget-object v0, p0, Lcom/living/emo/activity/HuntActivity$4;->this$0:Lcom/living/emo/activity/HuntActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/living/emo/activity/HuntActivity;->access$202(Lcom/living/emo/activity/HuntActivity;Z)Z

    .line 342
    iget-object v0, p0, Lcom/living/emo/activity/HuntActivity$4;->this$0:Lcom/living/emo/activity/HuntActivity;

    invoke-static {v0, v1}, Lcom/living/emo/activity/HuntActivity;->access$1500(Lcom/living/emo/activity/HuntActivity;I)V

    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "one:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "two:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "three:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "result"

    invoke-static {v2, v0}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    :goto_0
    iget-object v0, p0, Lcom/living/emo/activity/HuntActivity$4;->this$0:Lcom/living/emo/activity/HuntActivity;

    invoke-static {v0}, Lcom/living/emo/activity/HuntActivity;->access$1600(Lcom/living/emo/activity/HuntActivity;)[Lcom/living/emo/activity/HuntActivity$Treasure;

    move-result-object v0

    array-length v0, v0

    if-ge v1, v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/living/emo/activity/HuntActivity$4;->this$0:Lcom/living/emo/activity/HuntActivity;

    invoke-static {v0}, Lcom/living/emo/activity/HuntActivity;->access$1600(Lcom/living/emo/activity/HuntActivity;)[Lcom/living/emo/activity/HuntActivity$Treasure;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/living/emo/activity/HuntActivity$Treasure;->getTreasure_container()Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v2, p0, Lcom/living/emo/activity/HuntActivity$4;->this$0:Lcom/living/emo/activity/HuntActivity;

    invoke-static {v2}, Lcom/living/emo/activity/HuntActivity;->access$1600(Lcom/living/emo/activity/HuntActivity;)[Lcom/living/emo/activity/HuntActivity$Treasure;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/living/emo/activity/HuntActivity$Treasure;->getIsShow()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/living/emo/activity/HuntActivity$4;->this$0:Lcom/living/emo/activity/HuntActivity;

    invoke-static {v2}, Lcom/living/emo/activity/HuntActivity;->access$1600(Lcom/living/emo/activity/HuntActivity;)[Lcom/living/emo/activity/HuntActivity$Treasure;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/living/emo/activity/HuntActivity$Treasure;->getCount()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 347
    iget-object v2, p0, Lcom/living/emo/activity/HuntActivity$4;->this$0:Lcom/living/emo/activity/HuntActivity;

    invoke-static {v2}, Lcom/living/emo/activity/HuntActivity;->access$1600(Lcom/living/emo/activity/HuntActivity;)[Lcom/living/emo/activity/HuntActivity$Treasure;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/living/emo/activity/HuntActivity$Treasure;->getTreasure_txt_con()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 349
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/living/emo/activity/-$$Lambda$HuntActivity$4$EAHobAEKW3Xj5j_ekqHV60a9FuY;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/living/emo/activity/-$$Lambda$HuntActivity$4$EAHobAEKW3Xj5j_ekqHV60a9FuY;-><init>(Lcom/living/emo/activity/HuntActivity$4;III)V

    const-wide/16 p1, 0x3e8

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public signalFeedback(I)V
    .locals 2

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "signalFeedback: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HuntActivity"

    invoke-static {v1, v0}, Lcom/living/emo/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    iget-object v0, p0, Lcom/living/emo/activity/HuntActivity$4;->this$0:Lcom/living/emo/activity/HuntActivity;

    invoke-static {v0, p1}, Lcom/living/emo/activity/HuntActivity;->access$1500(Lcom/living/emo/activity/HuntActivity;I)V

    return-void
.end method
