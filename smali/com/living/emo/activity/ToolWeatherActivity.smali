.class public Lcom/living/emo/activity/ToolWeatherActivity;
.super Lcom/living/emo/activity/AbstractBaseActivity;
.source "ToolWeatherActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/living/emo/activity/AbstractBaseActivity;-><init>()V

    return-void
.end method

.method private goToActivity(Ljava/lang/Class;)V
    .locals 1

    .line 29
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/living/emo/activity/ToolWeatherActivity;->startActivity(Landroid/content/Intent;)V

    .line 30
    invoke-virtual {p0}, Lcom/living/emo/activity/ToolWeatherActivity;->finish()V

    return-void
.end method


# virtual methods
.method public goBack()V
    .locals 1

    .line 24
    const-class v0, Lcom/living/emo/activity/UtilitiesActivity;

    invoke-direct {p0, v0}, Lcom/living/emo/activity/ToolWeatherActivity;->goToActivity(Ljava/lang/Class;)V

    .line 25
    invoke-virtual {p0}, Lcom/living/emo/activity/ToolWeatherActivity;->finish()V

    return-void
.end method

.method protected initView()V
    .locals 0

    .line 34
    invoke-super {p0}, Lcom/living/emo/activity/AbstractBaseActivity;->initView()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 17
    invoke-super {p0, p1}, Lcom/living/emo/activity/AbstractBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    iget-object p1, p0, Lcom/living/emo/activity/ToolWeatherActivity;->mRadio:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 19
    iget-object p1, p0, Lcom/living/emo/activity/ToolWeatherActivity;->mRadio:Ljava/util/HashMap;

    const v0, 0x7f080303

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "info"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-static {}, Lcom/living/emo/bean/TextBean;->getWeatherData()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/living/emo/activity/ToolWeatherActivity;->initFragment(Ljava/util/List;)V

    return-void
.end method

.method protected setTopBg()I
    .locals 1

    const v0, 0x7f08036a

    return v0
.end method
