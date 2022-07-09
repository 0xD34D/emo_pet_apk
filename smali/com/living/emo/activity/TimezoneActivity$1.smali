.class Lcom/living/emo/activity/TimezoneActivity$1;
.super Ljava/lang/Object;
.source "TimezoneActivity.java"

# interfaces
.implements Lcom/living/emo/blebean/parse/BleResultParse$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/living/emo/activity/TimezoneActivity;->onMessageEvent(Lcom/living/emo/event/JsonEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/living/emo/activity/TimezoneActivity;


# direct methods
.method constructor <init>(Lcom/living/emo/activity/TimezoneActivity;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/living/emo/activity/TimezoneActivity$1;->this$0:Lcom/living/emo/activity/TimezoneActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail()V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/living/emo/activity/TimezoneActivity$1;->this$0:Lcom/living/emo/activity/TimezoneActivity;

    iget-object v0, v0, Lcom/living/emo/activity/TimezoneActivity;->mSet:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 104
    iget-object v0, p0, Lcom/living/emo/activity/TimezoneActivity$1;->this$0:Lcom/living/emo/activity/TimezoneActivity;

    const-string v1, "Time zone setting failed, please reset"

    invoke-virtual {v0, v1}, Lcom/living/emo/activity/TimezoneActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method public success()V
    .locals 3

    .line 96
    invoke-static {}, Lcom/living/emo/blebean/util/BleRequestUtil;->network()[B

    move-result-object v0

    .line 97
    iget-object v1, p0, Lcom/living/emo/activity/TimezoneActivity$1;->this$0:Lcom/living/emo/activity/TimezoneActivity;

    invoke-static {}, Lcom/living/emo/bean/BleBean;->getInstance()Lcom/living/emo/bean/BleBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/living/emo/bean/BleBean;->getBleDevice()Lcom/clj/fastble/data/BleDevice;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/living/emo/activity/TimezoneActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    .line 98
    iget-object v0, p0, Lcom/living/emo/activity/TimezoneActivity$1;->this$0:Lcom/living/emo/activity/TimezoneActivity;

    const-string v1, "Time zone set successfully"

    invoke-virtual {v0, v1}, Lcom/living/emo/activity/TimezoneActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method
