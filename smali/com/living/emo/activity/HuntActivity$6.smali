.class Lcom/living/emo/activity/HuntActivity$6;
.super Ljava/lang/Object;
.source "HuntActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/living/emo/activity/HuntActivity;
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

    .line 457
    iput-object p1, p0, Lcom/living/emo/activity/HuntActivity$6;->this$0:Lcom/living/emo/activity/HuntActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 460
    invoke-static {}, Lcom/living/emo/util/SoundIdPoolUntil;->getInstance()Lcom/living/emo/util/SoundIdPoolUntil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/living/emo/util/SoundIdPoolUntil;->stop()V

    .line 461
    iget-object p1, p0, Lcom/living/emo/activity/HuntActivity$6;->this$0:Lcom/living/emo/activity/HuntActivity;

    invoke-static {p1}, Lcom/living/emo/activity/HuntActivity;->access$1000(Lcom/living/emo/activity/HuntActivity;)Lcom/clj/fastble/data/BleDevice;

    move-result-object v0

    invoke-static {}, Lcom/living/emo/util/CommandUtil;->resetting()[B

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/living/emo/activity/HuntActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    .line 462
    iget-object p1, p0, Lcom/living/emo/activity/HuntActivity$6;->this$0:Lcom/living/emo/activity/HuntActivity;

    sget-object v0, Lcom/living/emo/activity/HuntActivity$Tips;->NONE:Lcom/living/emo/activity/HuntActivity$Tips;

    const-string v1, ""

    invoke-static {p1, v0, v1}, Lcom/living/emo/activity/HuntActivity;->access$1200(Lcom/living/emo/activity/HuntActivity;Lcom/living/emo/activity/HuntActivity$Tips;Ljava/lang/String;)V

    .line 463
    iget-object p1, p0, Lcom/living/emo/activity/HuntActivity$6;->this$0:Lcom/living/emo/activity/HuntActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/living/emo/activity/HuntActivity;->access$1500(Lcom/living/emo/activity/HuntActivity;I)V

    .line 464
    iget-object p1, p0, Lcom/living/emo/activity/HuntActivity$6;->this$0:Lcom/living/emo/activity/HuntActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/living/emo/activity/HuntActivity;->access$202(Lcom/living/emo/activity/HuntActivity;Z)Z

    return-void
.end method
