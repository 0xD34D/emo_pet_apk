.class public Lcom/living/emo/activity/LifeTimeActivity;
.super Lcom/living/emo/activity/AbstractBaseActivity;
.source "LifeTimeActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/living/emo/activity/LifeTimeActivity$State;
    }
.end annotation


# instance fields
.field private currState:Lcom/living/emo/activity/LifeTimeActivity$State;

.field private mBleDevice:Lcom/clj/fastble/data/BleDevice;

.field private mHandler:Landroid/os/Handler;

.field private task:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Lcom/living/emo/activity/AbstractBaseActivity;-><init>()V

    .line 30
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/living/emo/activity/LifeTimeActivity;->mHandler:Landroid/os/Handler;

    .line 31
    new-instance v0, Lcom/living/emo/activity/LifeTimeActivity$1;

    invoke-direct {v0, p0}, Lcom/living/emo/activity/LifeTimeActivity$1;-><init>(Lcom/living/emo/activity/LifeTimeActivity;)V

    iput-object v0, p0, Lcom/living/emo/activity/LifeTimeActivity;->task:Ljava/lang/Runnable;

    .line 50
    sget-object v0, Lcom/living/emo/activity/LifeTimeActivity$State;->NONE:Lcom/living/emo/activity/LifeTimeActivity$State;

    iput-object v0, p0, Lcom/living/emo/activity/LifeTimeActivity;->currState:Lcom/living/emo/activity/LifeTimeActivity$State;

    return-void
.end method

.method static synthetic access$000(Lcom/living/emo/activity/LifeTimeActivity;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/living/emo/activity/LifeTimeActivity;->goToMain()V

    return-void
.end method

.method private goToMain()V
    .locals 2

    .line 40
    invoke-static {}, Lcom/living/emo/view/WaitDialogView;->dismiss()V

    .line 41
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/living/emo/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/living/emo/activity/LifeTimeActivity;->startActivity(Landroid/content/Intent;)V

    const v0, 0x7f100060

    .line 42
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/LifeTimeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/living/emo/activity/LifeTimeActivity;->showToast(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0}, Lcom/living/emo/activity/LifeTimeActivity;->finish()V

    return-void
.end method

.method private initInteractFragment()V
    .locals 3

    .line 67
    invoke-virtual {p0}, Lcom/living/emo/activity/LifeTimeActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 69
    iget-object v1, p0, Lcom/living/emo/activity/LifeTimeActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getId()I

    move-result v1

    new-instance v2, Lcom/living/emo/fragment/LiftTimeFragment;

    invoke-direct {v2}, Lcom/living/emo/fragment/LiftTimeFragment;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 70
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method


# virtual methods
.method public goBack()V
    .locals 2

    .line 55
    sget-object v0, Lcom/living/emo/activity/LifeTimeActivity$State;->OUT:Lcom/living/emo/activity/LifeTimeActivity$State;

    iput-object v0, p0, Lcom/living/emo/activity/LifeTimeActivity;->currState:Lcom/living/emo/activity/LifeTimeActivity$State;

    .line 56
    iget-object v0, p0, Lcom/living/emo/activity/LifeTimeActivity;->mBleDevice:Lcom/clj/fastble/data/BleDevice;

    const-string v1, "out"

    invoke-static {v1}, Lcom/living/emo/blebean/util/BleJsonUtil;->animRequest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/living/emo/util/ByteUtil;->strToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/living/emo/activity/LifeTimeActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    const v0, 0x7f1000df

    .line 57
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/LifeTimeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/living/emo/view/WaitDialogView;->show(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 75
    invoke-super {p0, p1}, Lcom/living/emo/activity/AbstractBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    iget-object p1, p0, Lcom/living/emo/activity/LifeTimeActivity;->mRoot:Landroid/widget/RelativeLayout;

    const v0, 0x7f080248

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 77
    invoke-direct {p0}, Lcom/living/emo/activity/LifeTimeActivity;->initInteractFragment()V

    .line 78
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 79
    invoke-static {}, Lcom/living/emo/bean/BleBean;->getInstance()Lcom/living/emo/bean/BleBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/living/emo/bean/BleBean;->getBleDevice()Lcom/clj/fastble/data/BleDevice;

    move-result-object p1

    iput-object p1, p0, Lcom/living/emo/activity/LifeTimeActivity;->mBleDevice:Lcom/clj/fastble/data/BleDevice;

    .line 80
    sget-object p1, Lcom/living/emo/activity/LifeTimeActivity$State;->IN:Lcom/living/emo/activity/LifeTimeActivity$State;

    iput-object p1, p0, Lcom/living/emo/activity/LifeTimeActivity;->currState:Lcom/living/emo/activity/LifeTimeActivity$State;

    .line 81
    iget-object p1, p0, Lcom/living/emo/activity/LifeTimeActivity;->mBleDevice:Lcom/clj/fastble/data/BleDevice;

    const-string v0, "in"

    invoke-static {v0}, Lcom/living/emo/blebean/util/BleJsonUtil;->animRequest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/living/emo/util/ByteUtil;->strToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/living/emo/activity/LifeTimeActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    const p1, 0x7f1000de

    .line 82
    invoke-virtual {p0, p1}, Lcom/living/emo/activity/LifeTimeActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/living/emo/view/WaitDialogView;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 83
    iget-object p1, p0, Lcom/living/emo/activity/LifeTimeActivity;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/living/emo/activity/LifeTimeActivity;->task:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1770

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 132
    invoke-super {p0}, Lcom/living/emo/activity/AbstractBaseActivity;->onDestroy()V

    .line 133
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onJsonEvent(Lcom/living/emo/event/JsonEvent;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 89
    invoke-virtual {p1}, Lcom/living/emo/event/JsonEvent;->getJson()Ljava/lang/String;

    move-result-object p1

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "emo->app ble json data:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JsonEvent:LifeTimeActivity"

    invoke-static {v1, v0}, Lcom/living/emo/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-static {p1}, Lcom/living/emo/blebean/response/ResultResponse;->objectFromData(Ljava/lang/String;)Lcom/living/emo/blebean/response/ResultResponse;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 92
    invoke-virtual {p1}, Lcom/living/emo/blebean/response/ResultResponse;->getData()Lcom/living/emo/blebean/response/ResultResponse$DataBean;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 93
    invoke-virtual {p1}, Lcom/living/emo/blebean/response/ResultResponse;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "anim_rsp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 94
    iget-object v0, p0, Lcom/living/emo/activity/LifeTimeActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/living/emo/activity/LifeTimeActivity;->task:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 95
    invoke-virtual {p1}, Lcom/living/emo/blebean/response/ResultResponse;->getData()Lcom/living/emo/blebean/response/ResultResponse$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/living/emo/blebean/response/ResultResponse$DataBean;->getResult()I

    move-result p1

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 114
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/living/emo/MainActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/living/emo/activity/LifeTimeActivity;->startActivity(Landroid/content/Intent;)V

    .line 115
    invoke-virtual {p0}, Lcom/living/emo/activity/LifeTimeActivity;->finish()V

    goto :goto_0

    .line 100
    :cond_1
    sget-object p1, Lcom/living/emo/activity/LifeTimeActivity$2;->$SwitchMap$com$living$emo$activity$LifeTimeActivity$State:[I

    iget-object v1, p0, Lcom/living/emo/activity/LifeTimeActivity;->currState:Lcom/living/emo/activity/LifeTimeActivity$State;

    invoke-virtual {v1}, Lcom/living/emo/activity/LifeTimeActivity$State;->ordinal()I

    move-result v1

    aget p1, p1, v1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    goto :goto_0

    .line 106
    :cond_2
    invoke-static {}, Lcom/living/emo/view/WaitDialogView;->dismiss()V

    .line 107
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/living/emo/MainActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/living/emo/activity/LifeTimeActivity;->startActivity(Landroid/content/Intent;)V

    .line 108
    invoke-virtual {p0}, Lcom/living/emo/activity/LifeTimeActivity;->finish()V

    .line 109
    sget-object p1, Lcom/living/emo/activity/LifeTimeActivity$State;->NONE:Lcom/living/emo/activity/LifeTimeActivity$State;

    iput-object p1, p0, Lcom/living/emo/activity/LifeTimeActivity;->currState:Lcom/living/emo/activity/LifeTimeActivity$State;

    goto :goto_0

    .line 102
    :cond_3
    invoke-static {}, Lcom/living/emo/view/WaitDialogView;->dismiss()V

    .line 103
    sget-object p1, Lcom/living/emo/activity/LifeTimeActivity$State;->NONE:Lcom/living/emo/activity/LifeTimeActivity$State;

    iput-object p1, p0, Lcom/living/emo/activity/LifeTimeActivity;->currState:Lcom/living/emo/activity/LifeTimeActivity$State;

    goto :goto_0

    .line 97
    :cond_4
    invoke-direct {p0}, Lcom/living/emo/activity/LifeTimeActivity;->goToMain()V

    :cond_5
    :goto_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 124
    invoke-super {p0}, Lcom/living/emo/activity/AbstractBaseActivity;->onPause()V

    .line 125
    iget-object v0, p0, Lcom/living/emo/activity/LifeTimeActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/living/emo/activity/LifeTimeActivity;->task:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 126
    invoke-static {}, Lcom/living/emo/view/WaitDialogView;->dismiss()V

    return-void
.end method

.method protected setTopBg()I
    .locals 1

    const v0, 0x7f080356

    return v0
.end method
