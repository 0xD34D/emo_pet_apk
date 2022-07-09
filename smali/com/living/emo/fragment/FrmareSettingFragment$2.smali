.class Lcom/living/emo/fragment/FrmareSettingFragment$2;
.super Ljava/lang/Object;
.source "FrmareSettingFragment.java"

# interfaces
.implements Lcom/living/emo/blebean/parse/BleResultParse$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/living/emo/fragment/FrmareSettingFragment;->onMessageEvent(Lcom/living/emo/event/JsonEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/living/emo/fragment/FrmareSettingFragment;


# direct methods
.method constructor <init>(Lcom/living/emo/fragment/FrmareSettingFragment;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/living/emo/fragment/FrmareSettingFragment$2;->this$0:Lcom/living/emo/fragment/FrmareSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail()V
    .locals 3

    .line 147
    iget-object v0, p0, Lcom/living/emo/fragment/FrmareSettingFragment$2;->this$0:Lcom/living/emo/fragment/FrmareSettingFragment;

    invoke-static {v0}, Lcom/living/emo/fragment/FrmareSettingFragment;->access$400(Lcom/living/emo/fragment/FrmareSettingFragment;)Lcom/living/emo/activity/SettingActivity;

    move-result-object v0

    const-string v1, "EMO Reject update"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public success()V
    .locals 3

    .line 142
    iget-object v0, p0, Lcom/living/emo/fragment/FrmareSettingFragment$2;->this$0:Lcom/living/emo/fragment/FrmareSettingFragment;

    invoke-static {v0}, Lcom/living/emo/fragment/FrmareSettingFragment;->access$400(Lcom/living/emo/fragment/FrmareSettingFragment;)Lcom/living/emo/activity/SettingActivity;

    move-result-object v0

    const-string v1, "Start update"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
