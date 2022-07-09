.class Lcom/living/emo/fragment/WifiSettingFragment$3;
.super Ljava/lang/Object;
.source "WifiSettingFragment.java"

# interfaces
.implements Lcom/living/emo/blebean/parse/BleResultParse$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/living/emo/fragment/WifiSettingFragment;->onMessageEvent(Lcom/living/emo/event/JsonEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/living/emo/fragment/WifiSettingFragment;


# direct methods
.method constructor <init>(Lcom/living/emo/fragment/WifiSettingFragment;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/living/emo/fragment/WifiSettingFragment$3;->this$0:Lcom/living/emo/fragment/WifiSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail()V
    .locals 3

    .line 212
    iget-object v0, p0, Lcom/living/emo/fragment/WifiSettingFragment$3;->this$0:Lcom/living/emo/fragment/WifiSettingFragment;

    invoke-static {v0}, Lcom/living/emo/fragment/WifiSettingFragment;->access$600(Lcom/living/emo/fragment/WifiSettingFragment;)Lcom/living/emo/activity/SettingActivity;

    move-result-object v0

    const-string v1, "WiFi connection failed"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 213
    iget-object v0, p0, Lcom/living/emo/fragment/WifiSettingFragment$3;->this$0:Lcom/living/emo/fragment/WifiSettingFragment;

    sget-object v1, Lcom/living/emo/fragment/WifiSettingFragment$State;->SET_CONNECT:Lcom/living/emo/fragment/WifiSettingFragment$State;

    invoke-static {v0, v1}, Lcom/living/emo/fragment/WifiSettingFragment;->access$200(Lcom/living/emo/fragment/WifiSettingFragment;Lcom/living/emo/fragment/WifiSettingFragment$State;)V

    return-void
.end method

.method public success()V
    .locals 3

    .line 194
    iget-object v0, p0, Lcom/living/emo/fragment/WifiSettingFragment$3;->this$0:Lcom/living/emo/fragment/WifiSettingFragment;

    invoke-static {v0}, Lcom/living/emo/fragment/WifiSettingFragment;->access$300(Lcom/living/emo/fragment/WifiSettingFragment;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/living/emo/fragment/WifiSettingFragment$3;->this$0:Lcom/living/emo/fragment/WifiSettingFragment;

    invoke-static {v0}, Lcom/living/emo/fragment/WifiSettingFragment;->access$400(Lcom/living/emo/fragment/WifiSettingFragment;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/living/emo/fragment/WifiSettingFragment$3;->this$0:Lcom/living/emo/fragment/WifiSettingFragment;

    invoke-static {v1}, Lcom/living/emo/fragment/WifiSettingFragment;->access$500(Lcom/living/emo/fragment/WifiSettingFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/living/emo/util/DbManager;->insertOrUpdate(Ljava/lang/String;Ljava/lang/String;)Z

    .line 196
    invoke-static {}, Lcom/living/emo/util/DbManager;->deleteRedundantData()V

    goto :goto_0

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/living/emo/fragment/WifiSettingFragment$3;->this$0:Lcom/living/emo/fragment/WifiSettingFragment;

    invoke-static {v0}, Lcom/living/emo/fragment/WifiSettingFragment;->access$400(Lcom/living/emo/fragment/WifiSettingFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/living/emo/util/DbManager;->selectUserByssid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 200
    iget-object v0, p0, Lcom/living/emo/fragment/WifiSettingFragment$3;->this$0:Lcom/living/emo/fragment/WifiSettingFragment;

    invoke-static {v0}, Lcom/living/emo/fragment/WifiSettingFragment;->access$400(Lcom/living/emo/fragment/WifiSettingFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/living/emo/util/DbManager;->deleteUser(Ljava/lang/String;)Z

    .line 203
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/living/emo/fragment/WifiSettingFragment$3;->this$0:Lcom/living/emo/fragment/WifiSettingFragment;

    invoke-static {v0}, Lcom/living/emo/fragment/WifiSettingFragment;->access$600(Lcom/living/emo/fragment/WifiSettingFragment;)Lcom/living/emo/activity/SettingActivity;

    move-result-object v0

    const-string v1, "WiFi connection successful"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 205
    iget-object v1, p0, Lcom/living/emo/fragment/WifiSettingFragment$3;->this$0:Lcom/living/emo/fragment/WifiSettingFragment;

    invoke-static {v1}, Lcom/living/emo/fragment/WifiSettingFragment;->access$400(Lcom/living/emo/fragment/WifiSettingFragment;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "CONNECTED TO %1$s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 206
    iget-object v1, p0, Lcom/living/emo/fragment/WifiSettingFragment$3;->this$0:Lcom/living/emo/fragment/WifiSettingFragment;

    invoke-static {v1}, Lcom/living/emo/fragment/WifiSettingFragment;->access$100(Lcom/living/emo/fragment/WifiSettingFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    iget-object v0, p0, Lcom/living/emo/fragment/WifiSettingFragment$3;->this$0:Lcom/living/emo/fragment/WifiSettingFragment;

    sget-object v1, Lcom/living/emo/fragment/WifiSettingFragment$State;->CONNECTED:Lcom/living/emo/fragment/WifiSettingFragment$State;

    invoke-static {v0, v1}, Lcom/living/emo/fragment/WifiSettingFragment;->access$200(Lcom/living/emo/fragment/WifiSettingFragment;Lcom/living/emo/fragment/WifiSettingFragment$State;)V

    return-void
.end method
