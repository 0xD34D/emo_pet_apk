.class Lcom/living/emo/activity/WifiActivity$6;
.super Ljava/lang/Object;
.source "WifiActivity.java"

# interfaces
.implements Lcom/living/emo/blebean/parse/BleResultParse$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/living/emo/activity/WifiActivity;->onMessageEvent(Lcom/living/emo/event/JsonEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/living/emo/activity/WifiActivity;


# direct methods
.method constructor <init>(Lcom/living/emo/activity/WifiActivity;)V
    .locals 0

    .line 360
    iput-object p1, p0, Lcom/living/emo/activity/WifiActivity$6;->this$0:Lcom/living/emo/activity/WifiActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail()V
    .locals 2

    .line 379
    iget-object v0, p0, Lcom/living/emo/activity/WifiActivity$6;->this$0:Lcom/living/emo/activity/WifiActivity;

    invoke-static {v0}, Lcom/living/emo/activity/WifiActivity;->access$900(Lcom/living/emo/activity/WifiActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 380
    iget-object v0, p0, Lcom/living/emo/activity/WifiActivity$6;->this$0:Lcom/living/emo/activity/WifiActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/living/emo/activity/WifiActivity;->access$1002(Lcom/living/emo/activity/WifiActivity;Z)Z

    .line 381
    iget-object v0, p0, Lcom/living/emo/activity/WifiActivity$6;->this$0:Lcom/living/emo/activity/WifiActivity;

    invoke-static {v0}, Lcom/living/emo/activity/WifiActivity;->access$1100(Lcom/living/emo/activity/WifiActivity;)V

    .line 382
    iget-object v0, p0, Lcom/living/emo/activity/WifiActivity$6;->this$0:Lcom/living/emo/activity/WifiActivity;

    const-string v1, "Network connection failed. Please try again"

    invoke-virtual {v0, v1}, Lcom/living/emo/activity/WifiActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method public success()V
    .locals 4

    .line 363
    iget-object v0, p0, Lcom/living/emo/activity/WifiActivity$6;->this$0:Lcom/living/emo/activity/WifiActivity;

    invoke-static {v0}, Lcom/living/emo/activity/WifiActivity;->access$400(Lcom/living/emo/activity/WifiActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/living/emo/activity/WifiActivity$6;->this$0:Lcom/living/emo/activity/WifiActivity;

    invoke-static {v0}, Lcom/living/emo/activity/WifiActivity;->access$700(Lcom/living/emo/activity/WifiActivity;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/living/emo/activity/WifiActivity$6;->this$0:Lcom/living/emo/activity/WifiActivity;

    invoke-static {v1}, Lcom/living/emo/activity/WifiActivity;->access$800(Lcom/living/emo/activity/WifiActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/living/emo/util/DbManager;->insertOrUpdate(Ljava/lang/String;Ljava/lang/String;)Z

    .line 365
    invoke-static {}, Lcom/living/emo/util/DbManager;->deleteRedundantData()V

    goto :goto_0

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/living/emo/activity/WifiActivity$6;->this$0:Lcom/living/emo/activity/WifiActivity;

    invoke-static {v0}, Lcom/living/emo/activity/WifiActivity;->access$700(Lcom/living/emo/activity/WifiActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/living/emo/util/DbManager;->selectUserByssid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 369
    iget-object v0, p0, Lcom/living/emo/activity/WifiActivity$6;->this$0:Lcom/living/emo/activity/WifiActivity;

    invoke-static {v0}, Lcom/living/emo/activity/WifiActivity;->access$700(Lcom/living/emo/activity/WifiActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/living/emo/util/DbManager;->deleteUser(Ljava/lang/String;)Z

    .line 372
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/living/emo/activity/WifiActivity$6;->this$0:Lcom/living/emo/activity/WifiActivity;

    const-string v1, "Network connection successful"

    invoke-virtual {v0, v1}, Lcom/living/emo/activity/WifiActivity;->showToast(Ljava/lang/String;)V

    .line 373
    iget-object v0, p0, Lcom/living/emo/activity/WifiActivity$6;->this$0:Lcom/living/emo/activity/WifiActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/living/emo/activity/WifiActivity$6;->this$0:Lcom/living/emo/activity/WifiActivity;

    const-class v3, Lcom/living/emo/MainActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/living/emo/activity/WifiActivity;->startActivity(Landroid/content/Intent;)V

    .line 374
    iget-object v0, p0, Lcom/living/emo/activity/WifiActivity$6;->this$0:Lcom/living/emo/activity/WifiActivity;

    invoke-virtual {v0}, Lcom/living/emo/activity/WifiActivity;->finish()V

    return-void
.end method
