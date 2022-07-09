.class public Lcom/living/emo/activity/ToolAlertActivity;
.super Lcom/living/emo/activity/AbstractBaseActivity;
.source "ToolAlertActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/living/emo/activity/AbstractBaseActivity;-><init>()V

    return-void
.end method

.method private goToActivity(Ljava/lang/Class;)V
    .locals 1

    .line 30
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/living/emo/activity/ToolAlertActivity;->startActivity(Landroid/content/Intent;)V

    .line 31
    invoke-virtual {p0}, Lcom/living/emo/activity/ToolAlertActivity;->finish()V

    return-void
.end method


# virtual methods
.method public goBack()V
    .locals 1

    .line 25
    const-class v0, Lcom/living/emo/activity/UtilitiesActivity;

    invoke-direct {p0, v0}, Lcom/living/emo/activity/ToolAlertActivity;->goToActivity(Ljava/lang/Class;)V

    .line 26
    invoke-virtual {p0}, Lcom/living/emo/activity/ToolAlertActivity;->finish()V

    return-void
.end method

.method protected initView()V
    .locals 0

    .line 35
    invoke-super {p0}, Lcom/living/emo/activity/AbstractBaseActivity;->initView()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 17
    invoke-super {p0, p1}, Lcom/living/emo/activity/AbstractBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    iget-object p1, p0, Lcom/living/emo/activity/ToolAlertActivity;->mRadio:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 19
    iget-object p1, p0, Lcom/living/emo/activity/ToolAlertActivity;->mRadio:Ljava/util/HashMap;

    const v0, 0x7f080303

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "info"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iget-object p1, p0, Lcom/living/emo/activity/ToolAlertActivity;->mRadio:Ljava/util/HashMap;

    const v0, 0x7f080302

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "alert"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    invoke-static {}, Lcom/living/emo/bean/TextBean;->getAlert()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/living/emo/activity/ToolAlertActivity;->initFragment(Ljava/util/List;)V

    return-void
.end method

.method protected setTopBg()I
    .locals 1

    const v0, 0x7f08034d

    return v0
.end method
