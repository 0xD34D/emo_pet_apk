.class public Lcom/living/emo/activity/ToolLightActivity;
.super Lcom/living/emo/activity/AbstractBaseActivity;
.source "ToolLightActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBleDevice:Lcom/clj/fastble/data/BleDevice;

.field private mLightViewModel:Lcom/living/emo/viewModel/LightViewModel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "zxl::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/living/emo/activity/ToolLightActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/living/emo/activity/ToolLightActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/living/emo/activity/AbstractBaseActivity;-><init>()V

    return-void
.end method

.method private goToActivity(Ljava/lang/Class;)V
    .locals 1

    .line 35
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/living/emo/activity/ToolLightActivity;->startActivity(Landroid/content/Intent;)V

    .line 36
    invoke-virtual {p0}, Lcom/living/emo/activity/ToolLightActivity;->finish()V

    return-void
.end method

.method private initBle()V
    .locals 1

    .line 40
    invoke-static {}, Lcom/living/emo/bean/BleBean;->getInstance()Lcom/living/emo/bean/BleBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/living/emo/bean/BleBean;->getBleDevice()Lcom/clj/fastble/data/BleDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/living/emo/activity/ToolLightActivity;->mBleDevice:Lcom/clj/fastble/data/BleDevice;

    return-void
.end method


# virtual methods
.method public goBack()V
    .locals 1

    .line 30
    const-class v0, Lcom/living/emo/activity/UtilitiesActivity;

    invoke-direct {p0, v0}, Lcom/living/emo/activity/ToolLightActivity;->goToActivity(Ljava/lang/Class;)V

    .line 31
    invoke-virtual {p0}, Lcom/living/emo/activity/ToolLightActivity;->finish()V

    return-void
.end method

.method protected initView()V
    .locals 0

    .line 46
    invoke-super {p0}, Lcom/living/emo/activity/AbstractBaseActivity;->initView()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 21
    invoke-super {p0, p1}, Lcom/living/emo/activity/AbstractBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    iget-object p1, p0, Lcom/living/emo/activity/ToolLightActivity;->mRadio:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 23
    iget-object p1, p0, Lcom/living/emo/activity/ToolLightActivity;->mRadio:Ljava/util/HashMap;

    const v0, 0x7f080303

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "info"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    iget-object p1, p0, Lcom/living/emo/activity/ToolLightActivity;->mRadio:Ljava/util/HashMap;

    const v0, 0x7f080304

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "light"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    invoke-static {}, Lcom/living/emo/bean/TextBean;->getLight()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/living/emo/activity/ToolLightActivity;->initFragment(Ljava/util/List;)V

    .line 26
    invoke-direct {p0}, Lcom/living/emo/activity/ToolLightActivity;->initBle()V

    return-void
.end method

.method protected setTopBg()I
    .locals 1

    const v0, 0x7f080357

    return v0
.end method
