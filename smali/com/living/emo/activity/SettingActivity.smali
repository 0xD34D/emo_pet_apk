.class public Lcom/living/emo/activity/SettingActivity;
.super Lcom/living/emo/activity/AbstractBaseActivity;
.source "SettingActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBleDevice:Lcom/clj/fastble/data/BleDevice;

.field private mCityViewModel:Lcom/living/emo/viewModel/CityViewModel;

.field private mHandler:Landroid/os/Handler;

.field private mModel:Lcom/living/emo/viewModel/WifiViewModel;

.field private mNavSetFragment:Lcom/living/emo/fragment/NavSetFragment;

.field private out:I

.field private task:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "zxl"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/living/emo/activity/SettingActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/living/emo/activity/SettingActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcom/living/emo/activity/AbstractBaseActivity;-><init>()V

    .line 39
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/living/emo/activity/SettingActivity;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 62
    iput v0, p0, Lcom/living/emo/activity/SettingActivity;->out:I

    .line 64
    new-instance v0, Lcom/living/emo/activity/-$$Lambda$SettingActivity$uozlBJgvQBe3fkzYoYHivggyb9w;

    invoke-direct {v0, p0}, Lcom/living/emo/activity/-$$Lambda$SettingActivity$uozlBJgvQBe3fkzYoYHivggyb9w;-><init>(Lcom/living/emo/activity/SettingActivity;)V

    iput-object v0, p0, Lcom/living/emo/activity/SettingActivity;->task:Ljava/lang/Runnable;

    return-void
.end method

.method private goToActivity(Ljava/lang/Class;)V
    .locals 1

    .line 87
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/living/emo/activity/SettingActivity;->startActivity(Landroid/content/Intent;)V

    .line 88
    invoke-virtual {p0}, Lcom/living/emo/activity/SettingActivity;->finish()V

    return-void
.end method

.method private initFragments()V
    .locals 3

    .line 93
    iget-object v0, p0, Lcom/living/emo/activity/SettingActivity;->mNavSetFragment:Lcom/living/emo/fragment/NavSetFragment;

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Lcom/living/emo/fragment/NavSetFragment;

    invoke-direct {v0}, Lcom/living/emo/fragment/NavSetFragment;-><init>()V

    iput-object v0, p0, Lcom/living/emo/activity/SettingActivity;->mNavSetFragment:Lcom/living/emo/fragment/NavSetFragment;

    .line 96
    :cond_0
    invoke-virtual {p0}, Lcom/living/emo/activity/SettingActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 97
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 98
    iget-object v1, p0, Lcom/living/emo/activity/SettingActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/living/emo/activity/SettingActivity;->mNavSetFragment:Lcom/living/emo/fragment/NavSetFragment;

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 99
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method private initPreferences()V
    .locals 0

    return-void
.end method


# virtual methods
.method public goBack()V
    .locals 4

    .line 72
    invoke-static {}, Lcom/living/emo/bean/EmoUpdate;->getInstance()Lcom/living/emo/bean/EmoUpdate;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Lcom/living/emo/bean/EmoUpdate;->getEmoVersion()I

    move-result v1

    .line 74
    invoke-virtual {v0}, Lcom/living/emo/bean/EmoUpdate;->getEmoVersionName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    const-string v1, "1.4.0"

    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "1.4.0.p"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f1000de

    .line 76
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/living/emo/view/WaitDialogView;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/living/emo/activity/SettingActivity;->mBleDevice:Lcom/clj/fastble/data/BleDevice;

    const-string v1, "out"

    invoke-static {v1}, Lcom/living/emo/blebean/util/BleJsonUtil;->Setting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/living/emo/util/ByteUtil;->strToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/living/emo/activity/SettingActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    const/4 v0, 0x1

    .line 78
    iput v0, p0, Lcom/living/emo/activity/SettingActivity;->out:I

    .line 79
    iget-object v0, p0, Lcom/living/emo/activity/SettingActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/living/emo/activity/SettingActivity;->task:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 81
    :cond_0
    const-class v0, Lcom/living/emo/MainActivity;

    invoke-direct {p0, v0}, Lcom/living/emo/activity/SettingActivity;->goToActivity(Ljava/lang/Class;)V

    :goto_0
    return-void
.end method

.method protected initView()V
    .locals 2

    .line 54
    invoke-super {p0}, Lcom/living/emo/activity/AbstractBaseActivity;->initView()V

    .line 55
    iget-object v0, p0, Lcom/living/emo/activity/SettingActivity;->mSet:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public synthetic lambda$new$0$SettingActivity()V
    .locals 1

    .line 65
    invoke-static {}, Lcom/living/emo/view/WaitDialogView;->dismiss()V

    .line 66
    const-class v0, Lcom/living/emo/MainActivity;

    invoke-direct {p0, v0}, Lcom/living/emo/activity/SettingActivity;->goToActivity(Ljava/lang/Class;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 43
    invoke-super {p0, p1}, Lcom/living/emo/activity/AbstractBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-static {}, Lcom/living/emo/bean/BleBean;->getInstance()Lcom/living/emo/bean/BleBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/living/emo/bean/BleBean;->getBleDevice()Lcom/clj/fastble/data/BleDevice;

    move-result-object p1

    iput-object p1, p0, Lcom/living/emo/activity/SettingActivity;->mBleDevice:Lcom/clj/fastble/data/BleDevice;

    .line 45
    iget-object p1, p0, Lcom/living/emo/activity/SettingActivity;->mSet:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 46
    invoke-direct {p0}, Lcom/living/emo/activity/SettingActivity;->initPreferences()V

    .line 47
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 48
    invoke-direct {p0}, Lcom/living/emo/activity/SettingActivity;->initFragments()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 133
    invoke-super {p0}, Lcom/living/emo/activity/AbstractBaseActivity;->onDestroy()V

    .line 134
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 135
    invoke-static {}, Lcom/living/emo/view/WaitDialogView;->dismiss()V

    return-void
.end method

.method public onMessageEvent(Lcom/living/emo/event/JsonEvent;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 110
    invoke-virtual {p1}, Lcom/living/emo/event/JsonEvent;->getJson()Ljava/lang/String;

    move-result-object p1

    .line 111
    invoke-static {p1}, Lcom/living/emo/blebean/response/ResultResponse;->objectFromData(Ljava/lang/String;)Lcom/living/emo/blebean/response/ResultResponse;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 112
    invoke-virtual {p1}, Lcom/living/emo/blebean/response/ResultResponse;->getData()Lcom/living/emo/blebean/response/ResultResponse$DataBean;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 113
    invoke-virtual {p1}, Lcom/living/emo/blebean/response/ResultResponse;->getData()Lcom/living/emo/blebean/response/ResultResponse$DataBean;

    move-result-object v0

    .line 114
    invoke-virtual {p1}, Lcom/living/emo/blebean/response/ResultResponse;->getType()Ljava/lang/String;

    move-result-object p1

    const-string v1, "setting_rsp"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 115
    invoke-virtual {v0}, Lcom/living/emo/blebean/response/ResultResponse$DataBean;->getResult()I

    move-result p1

    .line 116
    iget-object v0, p0, Lcom/living/emo/activity/SettingActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/living/emo/activity/SettingActivity;->task:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 118
    iget p1, p0, Lcom/living/emo/activity/SettingActivity;->out:I

    if-lez p1, :cond_2

    .line 119
    invoke-static {}, Lcom/living/emo/view/WaitDialogView;->dismiss()V

    .line 120
    const-class p1, Lcom/living/emo/MainActivity;

    invoke-direct {p0, p1}, Lcom/living/emo/activity/SettingActivity;->goToActivity(Ljava/lang/Class;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    .line 123
    const-class p1, Lcom/living/emo/MainActivity;

    invoke-direct {p0, p1}, Lcom/living/emo/activity/SettingActivity;->goToActivity(Ljava/lang/Class;)V

    goto :goto_0

    .line 125
    :cond_1
    invoke-static {}, Lcom/living/emo/view/WaitDialogView;->dismiss()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected setTopBg()I
    .locals 1

    const v0, 0x7f080363

    return v0
.end method
