.class Lcom/living/emo/fragment/CitySettingFragment$3;
.super Ljava/lang/Object;
.source "CitySettingFragment.java"

# interfaces
.implements Lcom/living/emo/blebean/parse/BleResultParse$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/living/emo/fragment/CitySettingFragment;->onMessageEvent(Lcom/living/emo/event/JsonEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/living/emo/fragment/CitySettingFragment;


# direct methods
.method constructor <init>(Lcom/living/emo/fragment/CitySettingFragment;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lcom/living/emo/fragment/CitySettingFragment$3;->this$0:Lcom/living/emo/fragment/CitySettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail()V
    .locals 3

    .line 227
    iget-object v0, p0, Lcom/living/emo/fragment/CitySettingFragment$3;->this$0:Lcom/living/emo/fragment/CitySettingFragment;

    sget-object v1, Lcom/living/emo/fragment/CitySettingFragment$State;->EDIT:Lcom/living/emo/fragment/CitySettingFragment$State;

    invoke-static {v0, v1}, Lcom/living/emo/fragment/CitySettingFragment;->access$000(Lcom/living/emo/fragment/CitySettingFragment;Lcom/living/emo/fragment/CitySettingFragment$State;)V

    .line 228
    iget-object v0, p0, Lcom/living/emo/fragment/CitySettingFragment$3;->this$0:Lcom/living/emo/fragment/CitySettingFragment;

    invoke-static {v0}, Lcom/living/emo/fragment/CitySettingFragment;->access$100(Lcom/living/emo/fragment/CitySettingFragment;)Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 229
    iget-object v0, p0, Lcom/living/emo/fragment/CitySettingFragment$3;->this$0:Lcom/living/emo/fragment/CitySettingFragment;

    invoke-static {v0}, Lcom/living/emo/fragment/CitySettingFragment;->access$200(Lcom/living/emo/fragment/CitySettingFragment;)Lcom/living/emo/activity/SettingActivity;

    move-result-object v0

    const-string v1, "City setting failed, please reset"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public success()V
    .locals 3

    .line 220
    iget-object v0, p0, Lcom/living/emo/fragment/CitySettingFragment$3;->this$0:Lcom/living/emo/fragment/CitySettingFragment;

    sget-object v1, Lcom/living/emo/fragment/CitySettingFragment$State;->EDIT:Lcom/living/emo/fragment/CitySettingFragment$State;

    invoke-static {v0, v1}, Lcom/living/emo/fragment/CitySettingFragment;->access$000(Lcom/living/emo/fragment/CitySettingFragment;Lcom/living/emo/fragment/CitySettingFragment$State;)V

    .line 221
    iget-object v0, p0, Lcom/living/emo/fragment/CitySettingFragment$3;->this$0:Lcom/living/emo/fragment/CitySettingFragment;

    invoke-static {v0}, Lcom/living/emo/fragment/CitySettingFragment;->access$100(Lcom/living/emo/fragment/CitySettingFragment;)Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 222
    iget-object v0, p0, Lcom/living/emo/fragment/CitySettingFragment$3;->this$0:Lcom/living/emo/fragment/CitySettingFragment;

    invoke-static {v0}, Lcom/living/emo/fragment/CitySettingFragment;->access$200(Lcom/living/emo/fragment/CitySettingFragment;)Lcom/living/emo/activity/SettingActivity;

    move-result-object v0

    const-string v1, "City set up successfully"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
