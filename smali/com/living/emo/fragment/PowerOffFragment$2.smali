.class Lcom/living/emo/fragment/PowerOffFragment$2;
.super Ljava/lang/Object;
.source "PowerOffFragment.java"

# interfaces
.implements Lcom/living/emo/blebean/parse/BleResultParse$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/living/emo/fragment/PowerOffFragment;->onMessageEvent(Lcom/living/emo/event/JsonEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/living/emo/fragment/PowerOffFragment;


# direct methods
.method constructor <init>(Lcom/living/emo/fragment/PowerOffFragment;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/living/emo/fragment/PowerOffFragment$2;->this$0:Lcom/living/emo/fragment/PowerOffFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail()V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/living/emo/fragment/PowerOffFragment$2;->this$0:Lcom/living/emo/fragment/PowerOffFragment;

    invoke-static {v0}, Lcom/living/emo/fragment/PowerOffFragment;->access$100(Lcom/living/emo/fragment/PowerOffFragment;)Lcom/living/emo/activity/SettingActivity;

    move-result-object v0

    const-string v1, "power off fail"

    invoke-virtual {v0, v1}, Lcom/living/emo/activity/SettingActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method public success()V
    .locals 4

    .line 87
    iget-object v0, p0, Lcom/living/emo/fragment/PowerOffFragment$2;->this$0:Lcom/living/emo/fragment/PowerOffFragment;

    invoke-virtual {v0}, Lcom/living/emo/fragment/PowerOffFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/living/emo/util/MusicPlayerUtil;->getInstance(Landroid/content/Context;)Lcom/living/emo/util/MusicPlayerUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/living/emo/util/MusicPlayerUtil;->end()V

    .line 88
    iget-object v0, p0, Lcom/living/emo/fragment/PowerOffFragment$2;->this$0:Lcom/living/emo/fragment/PowerOffFragment;

    invoke-static {v0}, Lcom/living/emo/fragment/PowerOffFragment;->access$100(Lcom/living/emo/fragment/PowerOffFragment;)Lcom/living/emo/activity/SettingActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/living/emo/activity/SettingActivity;->dropOut()V

    .line 89
    iget-object v0, p0, Lcom/living/emo/fragment/PowerOffFragment$2;->this$0:Lcom/living/emo/fragment/PowerOffFragment;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/living/emo/fragment/PowerOffFragment$2;->this$0:Lcom/living/emo/fragment/PowerOffFragment;

    invoke-static {v2}, Lcom/living/emo/fragment/PowerOffFragment;->access$100(Lcom/living/emo/fragment/PowerOffFragment;)Lcom/living/emo/activity/SettingActivity;

    move-result-object v2

    const-class v3, Lcom/living/emo/activity/ConnectActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/living/emo/fragment/PowerOffFragment;->startActivity(Landroid/content/Intent;)V

    .line 90
    iget-object v0, p0, Lcom/living/emo/fragment/PowerOffFragment$2;->this$0:Lcom/living/emo/fragment/PowerOffFragment;

    invoke-static {v0}, Lcom/living/emo/fragment/PowerOffFragment;->access$100(Lcom/living/emo/fragment/PowerOffFragment;)Lcom/living/emo/activity/SettingActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/living/emo/activity/SettingActivity;->finish()V

    return-void
.end method
