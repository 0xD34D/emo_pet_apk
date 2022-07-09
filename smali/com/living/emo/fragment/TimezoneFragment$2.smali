.class Lcom/living/emo/fragment/TimezoneFragment$2;
.super Ljava/lang/Object;
.source "TimezoneFragment.java"

# interfaces
.implements Lcom/living/emo/blebean/parse/BleResultParse$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/living/emo/fragment/TimezoneFragment;->onMessageEvent(Lcom/living/emo/event/JsonEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/living/emo/fragment/TimezoneFragment;


# direct methods
.method constructor <init>(Lcom/living/emo/fragment/TimezoneFragment;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/living/emo/fragment/TimezoneFragment$2;->this$0:Lcom/living/emo/fragment/TimezoneFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail()V
    .locals 3

    .line 107
    iget-object v0, p0, Lcom/living/emo/fragment/TimezoneFragment$2;->this$0:Lcom/living/emo/fragment/TimezoneFragment;

    sget-object v1, Lcom/living/emo/fragment/TimezoneFragment$State;->EDIT:Lcom/living/emo/fragment/TimezoneFragment$State;

    invoke-static {v0, v1}, Lcom/living/emo/fragment/TimezoneFragment;->access$100(Lcom/living/emo/fragment/TimezoneFragment;Lcom/living/emo/fragment/TimezoneFragment$State;)V

    .line 108
    iget-object v0, p0, Lcom/living/emo/fragment/TimezoneFragment$2;->this$0:Lcom/living/emo/fragment/TimezoneFragment;

    invoke-static {v0}, Lcom/living/emo/fragment/TimezoneFragment;->access$200(Lcom/living/emo/fragment/TimezoneFragment;)Lcom/living/emo/activity/SettingActivity;

    move-result-object v0

    const-string v1, "Time zone setting failed, please reset"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public success()V
    .locals 3

    .line 99
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    .line 100
    iget-object v1, p0, Lcom/living/emo/fragment/TimezoneFragment$2;->this$0:Lcom/living/emo/fragment/TimezoneFragment;

    invoke-static {v1}, Lcom/living/emo/fragment/TimezoneFragment;->access$000(Lcom/living/emo/fragment/TimezoneFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v0, p0, Lcom/living/emo/fragment/TimezoneFragment$2;->this$0:Lcom/living/emo/fragment/TimezoneFragment;

    sget-object v1, Lcom/living/emo/fragment/TimezoneFragment$State;->SHOW:Lcom/living/emo/fragment/TimezoneFragment$State;

    invoke-static {v0, v1}, Lcom/living/emo/fragment/TimezoneFragment;->access$100(Lcom/living/emo/fragment/TimezoneFragment;Lcom/living/emo/fragment/TimezoneFragment$State;)V

    .line 102
    iget-object v0, p0, Lcom/living/emo/fragment/TimezoneFragment$2;->this$0:Lcom/living/emo/fragment/TimezoneFragment;

    invoke-static {v0}, Lcom/living/emo/fragment/TimezoneFragment;->access$200(Lcom/living/emo/fragment/TimezoneFragment;)Lcom/living/emo/activity/SettingActivity;

    move-result-object v0

    const-string v1, "Time zone set successfully"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
