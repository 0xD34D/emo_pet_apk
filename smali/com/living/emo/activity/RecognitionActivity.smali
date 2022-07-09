.class public Lcom/living/emo/activity/RecognitionActivity;
.super Lcom/living/emo/activity/AbstractBaseActivity;
.source "RecognitionActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/living/emo/activity/RecognitionActivity$State;
    }
.end annotation


# static fields
.field private static final HANDLE_TIME_OUT:I = 0x1770

.field public static currState:Lcom/living/emo/activity/RecognitionActivity$State;


# instance fields
.field private mBleDevice:Lcom/clj/fastble/data/BleDevice;

.field private mHandler:Landroid/os/Handler;

.field private mRecognitionFragment:Lcom/living/emo/fragment/RecognitionFragment;

.field private target:Ljava/lang/String;

.field private task:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    sget-object v0, Lcom/living/emo/activity/RecognitionActivity$State;->NONE:Lcom/living/emo/activity/RecognitionActivity$State;

    sput-object v0, Lcom/living/emo/activity/RecognitionActivity;->currState:Lcom/living/emo/activity/RecognitionActivity$State;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcom/living/emo/activity/AbstractBaseActivity;-><init>()V

    const-string v0, ""

    .line 34
    iput-object v0, p0, Lcom/living/emo/activity/RecognitionActivity;->target:Ljava/lang/String;

    .line 60
    new-instance v0, Lcom/living/emo/activity/RecognitionActivity$1;

    invoke-direct {v0, p0}, Lcom/living/emo/activity/RecognitionActivity$1;-><init>(Lcom/living/emo/activity/RecognitionActivity;)V

    iput-object v0, p0, Lcom/living/emo/activity/RecognitionActivity;->task:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/living/emo/activity/RecognitionActivity;Ljava/lang/Class;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/living/emo/activity/RecognitionActivity;->goToActivity(Ljava/lang/Class;)V

    return-void
.end method

.method private goToActivity(Ljava/lang/Class;)V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/living/emo/activity/RecognitionActivity;->target:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/living/emo/activity/RecognitionActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 90
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/living/emo/MainActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/living/emo/activity/RecognitionActivity;->startActivity(Landroid/content/Intent;)V

    .line 92
    :goto_0
    invoke-virtual {p0}, Lcom/living/emo/activity/RecognitionActivity;->finish()V

    return-void
.end method

.method private initFragment()V
    .locals 3

    .line 70
    iget-object v0, p0, Lcom/living/emo/activity/RecognitionActivity;->mRecognitionFragment:Lcom/living/emo/fragment/RecognitionFragment;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Lcom/living/emo/fragment/RecognitionFragment;

    invoke-direct {v0}, Lcom/living/emo/fragment/RecognitionFragment;-><init>()V

    iput-object v0, p0, Lcom/living/emo/activity/RecognitionActivity;->mRecognitionFragment:Lcom/living/emo/fragment/RecognitionFragment;

    .line 73
    :cond_0
    invoke-virtual {p0}, Lcom/living/emo/activity/RecognitionActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 75
    iget-object v1, p0, Lcom/living/emo/activity/RecognitionActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/living/emo/activity/RecognitionActivity;->mRecognitionFragment:Lcom/living/emo/fragment/RecognitionFragment;

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 76
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method


# virtual methods
.method public goBack()V
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/living/emo/activity/RecognitionActivity;->mBleDevice:Lcom/clj/fastble/data/BleDevice;

    invoke-static {}, Lcom/living/emo/blebean/util/BleJsonUtil;->RecognitionOut()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/living/emo/util/ByteUtil;->strToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/living/emo/activity/RecognitionActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    const-string v0, "Wait for emo to exit..."

    .line 82
    invoke-static {p0, v0}, Lcom/living/emo/view/WaitDialogView;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 83
    sget-object v0, Lcom/living/emo/activity/RecognitionActivity$State;->OUT:Lcom/living/emo/activity/RecognitionActivity$State;

    sput-object v0, Lcom/living/emo/activity/RecognitionActivity;->currState:Lcom/living/emo/activity/RecognitionActivity$State;

    return-void
.end method

.method protected initView()V
    .locals 0

    .line 97
    invoke-super {p0}, Lcom/living/emo/activity/AbstractBaseActivity;->initView()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 44
    invoke-super {p0, p1}, Lcom/living/emo/activity/AbstractBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    const p1, 0x7f1000de

    .line 46
    invoke-virtual {p0, p1}, Lcom/living/emo/activity/RecognitionActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/living/emo/view/WaitDialogView;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 47
    invoke-static {}, Lcom/living/emo/bean/BleBean;->getInstance()Lcom/living/emo/bean/BleBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/living/emo/bean/BleBean;->getBleDevice()Lcom/clj/fastble/data/BleDevice;

    move-result-object p1

    iput-object p1, p0, Lcom/living/emo/activity/RecognitionActivity;->mBleDevice:Lcom/clj/fastble/data/BleDevice;

    .line 48
    sget-object p1, Lcom/living/emo/activity/RecognitionActivity$State;->IN:Lcom/living/emo/activity/RecognitionActivity$State;

    sput-object p1, Lcom/living/emo/activity/RecognitionActivity;->currState:Lcom/living/emo/activity/RecognitionActivity$State;

    .line 49
    iget-object p1, p0, Lcom/living/emo/activity/RecognitionActivity;->mBleDevice:Lcom/clj/fastble/data/BleDevice;

    invoke-static {}, Lcom/living/emo/blebean/util/BleJsonUtil;->RecognitionIn()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/living/emo/util/ByteUtil;->strToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/living/emo/activity/RecognitionActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    .line 50
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/living/emo/activity/RecognitionActivity;->mHandler:Landroid/os/Handler;

    .line 51
    iget-object v0, p0, Lcom/living/emo/activity/RecognitionActivity;->task:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1770

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 53
    invoke-virtual {p0}, Lcom/living/emo/activity/RecognitionActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "from_activity"

    .line 55
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/living/emo/activity/RecognitionActivity;->target:Ljava/lang/String;

    .line 56
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCreate: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/living/emo/activity/RecognitionActivity;->target:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TAG"

    invoke-static {v0, p1}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 132
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 133
    invoke-static {}, Lcom/living/emo/view/WaitDialogView;->dismiss()V

    .line 134
    invoke-super {p0}, Lcom/living/emo/activity/AbstractBaseActivity;->onDestroy()V

    return-void
.end method

.method public onMessageEvent(Lcom/living/emo/event/JsonEvent;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 103
    invoke-virtual {p1}, Lcom/living/emo/event/JsonEvent;->getJson()Ljava/lang/String;

    move-result-object p1

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "emo->app ble json data:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JsonEvent:ToolPhotoActivity"

    invoke-static {v1, v0}, Lcom/living/emo/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-static {p1}, Lcom/living/emo/blebean/response/ResultResponse;->objectFromData(Ljava/lang/String;)Lcom/living/emo/blebean/response/ResultResponse;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 106
    invoke-virtual {p1}, Lcom/living/emo/blebean/response/ResultResponse;->getData()Lcom/living/emo/blebean/response/ResultResponse$DataBean;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 107
    invoke-virtual {p1}, Lcom/living/emo/blebean/response/ResultResponse;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "face_rsp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 108
    invoke-virtual {p1}, Lcom/living/emo/blebean/response/ResultResponse;->getData()Lcom/living/emo/blebean/response/ResultResponse$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/living/emo/blebean/response/ResultResponse$DataBean;->getResult()I

    move-result p1

    .line 109
    sget-object v0, Lcom/living/emo/activity/RecognitionActivity;->currState:Lcom/living/emo/activity/RecognitionActivity$State;

    sget-object v1, Lcom/living/emo/activity/RecognitionActivity$State;->IN:Lcom/living/emo/activity/RecognitionActivity$State;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    if-ne p1, v2, :cond_0

    .line 110
    invoke-direct {p0}, Lcom/living/emo/activity/RecognitionActivity;->initFragment()V

    .line 111
    iget-object v0, p0, Lcom/living/emo/activity/RecognitionActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/living/emo/activity/RecognitionActivity;->task:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 112
    sget-object v0, Lcom/living/emo/activity/RecognitionActivity$State;->NONE:Lcom/living/emo/activity/RecognitionActivity$State;

    sput-object v0, Lcom/living/emo/activity/RecognitionActivity;->currState:Lcom/living/emo/activity/RecognitionActivity$State;

    .line 114
    :cond_0
    sget-object v0, Lcom/living/emo/activity/RecognitionActivity;->currState:Lcom/living/emo/activity/RecognitionActivity$State;

    sget-object v1, Lcom/living/emo/activity/RecognitionActivity$State;->OUT:Lcom/living/emo/activity/RecognitionActivity$State;

    if-ne v0, v1, :cond_1

    if-ne p1, v2, :cond_1

    .line 115
    const-class v0, Lcom/living/emo/activity/InteractActivity;

    invoke-direct {p0, v0}, Lcom/living/emo/activity/RecognitionActivity;->goToActivity(Ljava/lang/Class;)V

    .line 116
    invoke-virtual {p0}, Lcom/living/emo/activity/RecognitionActivity;->finish()V

    .line 117
    sget-object v0, Lcom/living/emo/activity/RecognitionActivity$State;->NONE:Lcom/living/emo/activity/RecognitionActivity$State;

    sput-object v0, Lcom/living/emo/activity/RecognitionActivity;->currState:Lcom/living/emo/activity/RecognitionActivity$State;

    :cond_1
    const/16 v0, 0xa

    if-ne p1, v0, :cond_2

    .line 120
    const-class p1, Lcom/living/emo/activity/InteractActivity;

    invoke-direct {p0, p1}, Lcom/living/emo/activity/RecognitionActivity;->goToActivity(Ljava/lang/Class;)V

    .line 121
    invoke-virtual {p0}, Lcom/living/emo/activity/RecognitionActivity;->finish()V

    .line 122
    sget-object p1, Lcom/living/emo/activity/RecognitionActivity$State;->NONE:Lcom/living/emo/activity/RecognitionActivity$State;

    sput-object p1, Lcom/living/emo/activity/RecognitionActivity;->currState:Lcom/living/emo/activity/RecognitionActivity$State;

    .line 124
    :cond_2
    invoke-static {}, Lcom/living/emo/view/WaitDialogView;->dismiss()V

    :cond_3
    return-void
.end method

.method protected setTopBg()I
    .locals 1

    const v0, 0x7f0802f0

    return v0
.end method
